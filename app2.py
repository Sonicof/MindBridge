import os
import io
import torch
import torch.nn as nn
import numpy as np
import requests as req
from PIL import Image
from torchvision import transforms, models, datasets
from torchvision.models import MobileNet_V3_Small_Weights
from torch.utils.data import DataLoader
from sklearn.metrics.pairwise import cosine_similarity
import traceback
from fastapi import FastAPI, HTTPException
from pydantic import BaseModel

# 🔧 Device setup
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print("Using device:", device)

# 📂 Paths
model_path = "C:/Users/aksha/OneDrive/Desktop/DL/best_mobilenet_v3_small_dysgraphia.pth"
dataset_path = "C:/Users/aksha/OneDrive/Desktop/DATASET DYSGRAPHIA HANDWRITING"

# 📸 Transformations
IMG_SIZE = 224
val_test_transform = transforms.Compose([
    transforms.Resize((IMG_SIZE, IMG_SIZE)),
    transforms.ToTensor(),
    transforms.Normalize([0.485, 0.456, 0.406], [0.229, 0.224, 0.225])
])

# 🧠 Load model
def load_model():
    model = models.mobilenet_v3_small(weights=MobileNet_V3_Small_Weights.DEFAULT)
    for param in model.parameters():
        param.requires_grad = False
    for param in model.features[-2:].parameters():
        param.requires_grad = True
    for param in model.classifier.parameters():
        param.requires_grad = True
    model.classifier = nn.Sequential(
        nn.Linear(model.classifier[0].in_features, 128),
        nn.ReLU(),
        nn.Dropout(0.4),
        nn.Linear(128, 1)
    )
    if not os.path.exists(model_path):
        raise FileNotFoundError(f"Model file {model_path} not found")
    model.load_state_dict(torch.load(model_path, map_location=device))
    model.to(device)
    model.eval()
    return model

# 🔍 Feature extractor
class FeatureExtractor(nn.Module):
    def __init__(self, model):
        super(FeatureExtractor, self).__init__()
        self.features = nn.Sequential(*list(model.children())[:-1])

    def forward(self, x):
        x = self.features(x)
        return x.view(x.size(0), -1)

# 📊 Precompute dataset features
def compute_dataset_features(model, dataset_path):
    if not os.path.exists(dataset_path):
        raise FileNotFoundError(f"Dataset path {dataset_path} not found")
    dataset = datasets.ImageFolder(dataset_path, transform=val_test_transform)
    loader = DataLoader(dataset, batch_size=8, shuffle=False)
    class_names = dataset.classes
    feature_dict = {class_names[0]: [], class_names[1]: []}

    extractor = FeatureExtractor(model).to(device)
    with torch.no_grad():
        for images, labels in loader:
            images = images.to(device)
            features = extractor(images)
            for feat, label in zip(features, labels):
                feature_dict[class_names[label.item()]].append(feat.cpu().numpy())

    for cls in feature_dict:
        feature_dict[cls] = np.array(feature_dict[cls])
    return feature_dict, class_names

# 🔮 Predict dysgraphia
def predict_dysgraphia(model, image_bytes, feature_dict, class_names):
    try:
        image = Image.open(io.BytesIO(image_bytes)).convert('RGB')
    except Exception as e:
        raise ValueError(f"Invalid image data: {str(e)}")

    image_tensor = val_test_transform(image).unsqueeze(0).to(device)

    with torch.no_grad():
        output = model(image_tensor)
        prob = torch.sigmoid(output).item()

    prediction = 'Potential Dysgraphia' if prob > 0.5 else 'Low Potential Dysgraphia'

    extractor = FeatureExtractor(model).to(device)
    with torch.no_grad():
        input_features = extractor(image_tensor).cpu().numpy()

    similarities = {}
    for cls in class_names:
        if len(feature_dict[cls]) > 0:
            sim = cosine_similarity(input_features, feature_dict[cls]).mean()
            similarities[cls] = float(sim)
        else:
            similarities[cls] = 0.0

    result = {
        "prediction": prediction,
        "confidence": round(prob * 100, 2),
        "similarity": {
            class_names[0]: similarities[class_names[0]],
            class_names[1]: similarities[class_names[1]]
        },
        "warning": ""
    }

    if prediction == 'Potential Dysgraphia' and prob > 0.8:
        if similarities[class_names[0]] > similarities[class_names[1]]:
            result["warning"] = "High confidence for Potential Dysgraphia, but similarity suggests Low Potential Dysgraphia."
    elif prediction == 'Low Potential Dysgraphia' and prob < 0.2:
        if similarities[class_names[1]] > similarities[class_names[0]]:
            result["warning"] = "High confidence for Low Potential Dysgraphia, but similarity suggests Potential Dysgraphia."
    if 0.4 < prob < 0.6:
        result["warning"] = "Low confidence prediction. Result may be unreliable."
    if max(similarities.values()) < 0.5:
        result["warning"] += " Low similarity to dataset. Result may be less reliable."

    return result

# 🌐 FastAPI Setup
app = FastAPI()

class ImageUrl(BaseModel):
    image_url: str

# Load model and features at startup
try:
    model = load_model()
    feature_dict, class_names = compute_dataset_features(model, dataset_path)
except Exception as e:
    print(f"Startup error: {str(e)}")
    exit(1)

@app.post('/predict')
async def predict(payload: ImageUrl):
    try:
        image_url = payload.image_url

        if not image_url:
            return {"error": "Missing 'image_url' in request"}

        # Fetch the image from the URL
        image_response = req.get(image_url)
        if image_response.status_code != 200:
            return {"error": "Failed to download image"}

        result = predict_dysgraphia(model, image_response.content, feature_dict, class_names)
        return result

    except Exception as e:
        traceback.print_exc()  # <-- This will show full error in terminal
        return {"error": f"Server error: {str(e)}"}

if __name__ == '__main__':
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
