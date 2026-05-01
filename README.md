
# 🧠 MindBridge: Path to Cognitive Confidence

## 🚀 Overview

**MindBridge** is an innovative, AI-powered application that facilitates **early detection of learning disabilities** such as **Dyslexia**, **Dysgraphia**, and **Dyscalculia** in children. Built with a focus on accessibility and early intervention, MindBridge helps parents, educators, and healthcare professionals identify these challenges using **voice recordings**, **handwriting samples**, and **math worksheet analysis**.

> 💡 Developed for **Colossus 2.0 Hackathon** under the **Healthcare** track by Team **CocoCoders**.

---

## 🧩 Problem Statement

In India and across the world, learning disabilities often go **undetected or misdiagnosed**, leading to academic struggles, self-esteem issues, and social isolation in children. Existing diagnostic tools are either expensive, inaccessible, or require expert intervention.

### ❗ Why it needs an effective solution?

- **1 in 10** children may have a learning disability.
- Lack of awareness leads to **late diagnosis**.
- **No affordable tool** exists that combines multiple assessments (voice, writing, math) in one place.
- Educators and parents need an **AI-powered assistant** that mimics the role of a special educator.

---

## 💡 Our Idea

**MindBridge** leverages **AI and Machine Learning** to offer a comprehensive, multimodal assessment platform for learning disabilities. Using just a smartphone, it can:

- Analyze **voice recordings** for fluency and pronunciation errors (Dyslexia).
- Detect **handwriting irregularities** (Dysgraphia).
- Evaluate **math-solving skills** through uploaded worksheets (Dyscalculia).

The app outputs a **likelihood percentage** of each disability and provides **suggestive insights** for further action.

---

## 🧠 Key Features

| Feature | Description |
|--------|-------------|
| 🎙️ **Speech Analysis** | Analyzes reading fluency, hesitations, word skipping, and mispronunciations to detect **Dyslexia**. |
| ✍️ **Handwriting Recognition** | Uses OCR and pattern analysis to assess letter formation, spacing, and alignment for **Dysgraphia** detection. |
| ➕ **Math Worksheet Evaluation** | Examines errors in basic arithmetic operations, number reversals, and step-by-step math solving for **Dyscalculia**. |
| 📊 **Likelihood Scoring** | Calculates individual scores for Dyslexia, Dysgraphia, and Dyscalculia with explanations. |
| 🧑‍🏫 **Chatbot Guidance** | AI-based chatbot acts as a virtual special educator guiding parents and guardians. |
| ☁️ **Firebase Integration** | Stores assessment results securely linked to user profiles. |

---

## 🧪 Assessment Procedures

### 🟢 **Dyslexia Assessment**
- Record the child reading a given passage.
- Use Whisper AI to convert speech to text.
- Analyze:
  - Skipped words
  - Hesitation durations
  - Mispronounced or guessed words
  - Repetitions and spelling-out behavior

### 🟢 **Dysgraphia Assessment**
- Upload a photo of a handwriting sample.
- Analyze:
  - Letter shape and spacing
  - Line alignment
  - Pressure and consistency patterns

### 🟢 **Dyscalculia Assessment**
- Upload a scanned/photographed math worksheet.
- Use image-to-text and math-solving models to:
  - Detect reversed numbers (e.g., 6 as 9)
  - Identify step-by-step logic issues
  - Score against expected answers

---

## 🛠️ Tech Stack

| Area | Tech Used |
|------|-----------|
| **Frontend** | Flutter |
| **Backend** | Node.js with Firebase |
| **AI Models** | OpenAI Whisper, Tesseract OCR, Custom ML Models |
| **Database** | Firebase Firestore |
| **Storage** | Firebase Storage |
| **Deployment** | Firebase Hosting |
| **Other Tools** | Python (data processing), Hugging Face Transformers |

---

## 🧪 Prototype & Testing

- Developed and tested on real-world audio and writing samples.
- Provides:
  - **Likelihood score (%)** for each learning disability.
  - **Report with specific observations** for each module.
  - **Visualizations and explanations** for parent-friendly interpretation.

---

## 👥 Team Members

| Name | Role | Contact |
|------|------|---------|
| **Rohan Jaiswal** | Team Leader | rj024245@gmail.com, 9123981774 |
| **Rashi Badiya** | Developer | rashibadiya09@gmail.com, 8296477628 |
| **Akshat Agarwal** | Developer | akshat2003agarwal@gmail.com, 6398110810 |
| **Dhruti Purushotham** | Developer | dhrutipurushotham@gmail.com, 9741530005 |
---

---

## 📃 License

This project is developed as part of **Colossus 2.0 Hackathon** and is currently **open for research and educational use only**. For collaboration or further development, contact the team lead.
