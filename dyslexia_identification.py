
#--------------------------------incomplete-------------#
import os
import torch
import numpy as np
import librosa
import torch.nn.functional as F
from sklearn.preprocessing import MinMaxScaler
from jiwer import wer
from sentence_transformers import SentenceTransformer
from transformers import AutoModelForSpeechSeq2Seq, AutoProcessor, pipeline
from transformers import WhisperTimeStampLogitsProcessor, GenerationConfig
from huggingface_hub import hf_hub_download
import warnings
import random
import logging

# Configure logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
logger = logging.getLogger(_name_)

# Set random seeds for reproducibility
torch.manual_seed(42)
np.random.seed(42)
random.seed(42)

# Filter out warnings
warnings.filterwarnings("ignore")

# Set device to CUDA if available
device = torch.device("cuda:0" if torch.cuda.is_available() else "cpu")
logger.info(f"Using device: {device}")

# Model ID
model_id = "openai/whisper-base"

# Ensure the model is downloaded if not available in cache
try:
    model_path = hf_hub_download(repo_id=model_id, filename="config.json")
    logger.info(f"✅ Model found in cache: {model_path}")
except Exception:
    logger.info("⚠ Model not found in cache. Downloading...")
    AutoModelForSpeechSeq2Seq.from_pretrained(model_id).save_pretrained(model_id)
    AutoProcessor.from_pretrained(model_id).save_pretrained(model_id)
    logger.info("✅ Model downloaded successfully.")

# Load Whisper model with eager attention implementation
whisper_model = AutoModelForSpeechSeq2Seq.from_pretrained(
    model_id, 
    torch_dtype=torch.float16 if torch.cuda.is_available() else torch.float32, 
    low_cpu_mem_usage=True,
    attn_implementation="eager"  # Use eager attention for more stable results
).to(device)

whisper_processor = AutoProcessor.from_pretrained(model_id)

# Load generation config for Whisper
generate_config = GenerationConfig.from_pretrained(model_id)

# Initialize WhisperTimeStampLogitsProcessor correctly
logits_processor = WhisperTimeStampLogitsProcessor(generate_config=generate_config)

# Load Semantic Similarity Model
semantic_model = SentenceTransformer("sentence-transformers/all-MiniLM-L6-v2").to(device)

def analyze_dyslexic_patterns(text: str) -> float:
    """Analyze text for common dyslexic reading patterns."""
    patterns = {
        'word_reversals': 0,  # e.g., "was" -> "saw"
        'phonetic_errors': 0,  # e.g., "child" -> "chield"
        'word_omissions': 0,   # missing words
        'word_substitutions': 0,  # similar sounding words
        'letter_confusions': 0,  # similar looking letters
        'pauses_and_stops': 0,  # frequent pauses
        'repetitions': 0       # word repetitions
    }
    
    words = text.lower().split()
    common_reversals = {'was': 'saw', 'on': 'no', 'of': 'fo', 'the': 'teh'}
    common_confusions = {'b': 'd', 'p': 'q', 'm': 'w', 'n': 'u'}
    
    for i, word in enumerate(words):
        # Check for word reversals
        if word in common_reversals and common_reversals[word] in words:
            patterns['word_reversals'] += 1
            
        # Check for phonetic errors
        if i > 0 and len(word) > 3:
            prev_word = words[i-1]
            if word[:3] == prev_word[:3] and word != prev_word:
                patterns['phonetic_errors'] += 1
                
        # Check for letter confusions
        for conf in common_confusions:
            if conf in word or common_confusions[conf] in word:
                patterns['letter_confusions'] += 1
                
        # Check for repetitions
        if i > 0 and word == words[i-1]:
            patterns['repetitions'] += 1
            
    # Calculate pattern score (0-1)
    total_patterns = sum(patterns.values())
    max_possible_patterns = len(words) * 2  # Theoretical maximum
    pattern_score = min(total_patterns / max_possible_patterns, 1.0)
    
    return pattern_score

# Example Usage
if _name_ == "_main_":
    audio_path = "2.wav"  # Changed to use the good reader sample
    expected_text = """
    It was the summer of 1880. A healthy baby girl was born in a small town in Alabama. Her parents loved her 
    dearly and named her Helen Keller. But one day, the baby became ill and day after day, her fever stayed high. 
    Everyone in the family tried to help her to get better, but all they could say was, "There is nothing more we 
    can do. The baby may not live." Helen lived. But she was not the same after her illness. "Something is very wrong,"
     her mother said. At last they found out what was wrong. The child could not see or hear. The baby grew into a little 
     girl. Her parents felt sorry for her. Helen often cried and held on to her mother. "Give the poor child
      what she wants," her father would say."""

    # Use small random values for baseline instead of zeros
    baseline_mfcc = np.random.normal(0, 0.05, 39)  # Adjusted for new MFCC features
    baseline_spectrogram = np.random.normal(0, 0.05, 1025)

    results = analyze_audio(audio_path, expected_text, baseline_mfcc, baseline_spectrogram)

    print("🔹 Final Results:")
    for key, value in results.items():
        print(f"{key}: {value:.4f}")
        
    # Print interpretation
    print("\nInterpretation:")
    print("-" * 50)
    if results["WER"] > 0.4:  # Adjusted threshold for good readers
        print("Warning: High transcription error rate detected")
    if results["Semantic Similarity"] < 0.7:  # Increased threshold for good readers
        print("Warning: Low semantic similarity detected")
    if results["Whisper Confidence"] < 0.7:  # Increased threshold for good readers
        print("Warning: Low transcription confidence detected")
    if results["Dyslexia Severity"] > 15:  # Lowered threshold for good readers
        print("Warning: Elevated dyslexia severity score detected")
        
    # Add detailed analysis
    print("\nDetailed Analysis:")
    print("-" * 50)
    print(f"Reading Quality Assessment:")
    if results["WER"] < 0.3:
        print("✓ Excellent word accuracy")
    elif results["WER"] < 0.4:
        print("✓ Good word accuracy")
    else:
        print("⚠ Word accuracy needs improvement")
        
    if results["Semantic Similarity"] > 0.8:
        print("✓ Excellent comprehension")
    elif results["Semantic Similarity"] > 0.7:
        print("✓ Good comprehension")
    else:
        print("⚠ Comprehension needs improvement")
        
    if results["Whisper Confidence"] > 0.8:
        print("✓ Excellent reading fluency")
    elif results["Whisper Confidence"] > 0.7:
        print("✓ Good reading fluency")
    else:
        print("⚠ Reading fluency needs improvement")
        
    if results["Dyslexia Severity"] < 20:
        print("✓ No signs of reading difficulties")
    elif results["Dyslexia Severity"] < 50:
        print("⚠ Mild reading difficulties detected")
    elif results["Dyslexia Severity"] < 70:
        print("⚠ Moderate reading difficulties detected")
    else:
        print("⚠ Severe reading difficulties detected")
        
    # Add severity level interpretation
    print("\nSeverity Level:")
    print("-" * 50)
    if results["WER"] > 0.5:  # Adjusted threshold for severe dyslexia
        print("Level: Severe Dyslexia")
    elif results["WER"] > 0.4:
        print("Level: Moderate Dyslexia")
    elif results["WER"] > 0.3:
        print("Level: Mild Dyslexia")
    else:
        print("Level: Normal Reader")
        
    print(f"\nSeverity Score: {results['Dyslexia Severity']:.2f}")
    if results["Dyslexia Severity"] > 70:
        print("Diagnosis: Severe Dyslexia")
    elif results["Dyslexia Severity"] > 50:
        print("Diagnosis: Moderate Dyslexia")
    elif results["Dyslexia Severity"] > 20:
        print("Diagnosis: Mild Dyslexia")
    else:
        print("Diagnosis: Normal Reader")
