# Activity 1: Machine Learning Classification and Regression

## AgriGenius — Plant Disease Detection & Farm Decision Support System

A complete AI/ML pipeline demonstrating both **classification** and **regression** tasks using the PlantVillage dataset, built with first-principles rigor including SHA-256 deduplication, stratified splits, and full diagnostic visualizations.

---

### 📌 Objective

1. **Multi-Class Classification** — Identify plant diseases from leaf images using machine learning models.
2. **Regression** — Predict the percentage of leaf visual discoloration (a proxy for disease severity).

---

### 📂 Dataset

- **Source:** [`abdallahalidev/plantvillage-dataset`](https://www.kaggle.com/datasets/abdallahalidev/plantvillage-dataset) (Kaggle)
- **Selected Classes:**
  - `Tomato___healthy`, `Tomato___Early_blight`, `Tomato___Late_blight`
  - `Potato___healthy`, `Potato___Early_blight`, `Potato___Late_blight`
- **Max Images Per Class:** 200 (capped for reproducibility)

---

### 🔬 Pipeline Overview

| Step | Description |
|------|-------------|
| **1. Data Acquisition** | Download via `kagglehub` and resolve directory layout |
| **2. Data Integrity Audit** | Verify images, SHA-256 deduplication, corruption filtering |
| **3. Regression Target Engineering** | HSV-based discoloration percentage extraction from segmented leaf masks |
| **4. Train/Val/Test Split** | Stratified 70/15/15 split with zero data leakage |
| **5. Feature Extraction** | MobileNetV2 (ImageNet-pretrained) embeddings (1280-D) |
| **6. Classification** | Logistic Regression, SVM (RBF), Random Forest — compared on validation set |
| **7. Regression** | Ridge, SVR (RBF), Random Forest Regressor — compared on validation set |
| **8. Evaluation & Diagnostics** | Confusion matrix, per-class F1, residual analysis, error galleries |

---

### 🤖 Models Used

#### Classification
| Model | Description |
|-------|-------------|
| Logistic Regression (L2) | Linear baseline with balanced class weights |
| SVM (RBF Kernel) | Non-linear SVM with C=3.0 |
| Random Forest (PCA-100) | 250-tree ensemble with PCA dimensionality reduction |

#### Regression
| Model | Description |
|-------|-------------|
| Ridge Regression (L2) | Regularized linear model (α=100) |
| SVR (RBF Kernel) | Support vector regression with C=15.0 |
| Random Forest Regressor (PCA-100) | 250-tree ensemble regressor |

---

### 📊 Visualizations Included

1. **Class Distribution Bar Chart** — Post-deduplication sample counts
2. **Sample Leaf Gallery** — One representative RGB leaf per class
3. **HSV Discoloration Pipeline** — Healthy vs. diseased overlay comparison
4. **Discoloration Boxplot** — Distribution of regression target across classes
5. **2D PCA Projection** — MobileNetV2 feature embedding clusters
6. **Classification Model Comparison** — Grouped bar chart (Accuracy & Macro F1)
7. **Confusion Matrix Heatmap** — Test set results for best classifier
8. **Per-Class F1-Score Breakdown** — Horizontal bar chart
9. **Regression Error Comparison** — MAE vs. RMSE across regressors
10. **Actual vs. Predicted Scatter** — With ideal fit line and R² annotation
11. **Residual Distribution** — Histogram with KDE for regression errors
12. **Misclassified Image Gallery** — Visual failure analysis
13. **Worst Regression Errors Gallery** — Highest absolute error samples

---

### 🛠️ Tech Stack

- **Python 3**, **TensorFlow / Keras** (MobileNetV2 feature extractor)
- **scikit-learn** (ML models, metrics, PCA, pipelines)
- **OpenCV** (HSV color space analysis)
- **matplotlib / seaborn** (visualizations)
- **pandas** (data management)
- **kagglehub** (dataset download)

---

### ▶️ How to Run

1. Open `AgriGenius_Activity_1.ipynb` in **Google Colab** or any Jupyter environment.
2. Ensure Kaggle API credentials are configured (for dataset download).
3. Run all cells sequentially — dependencies are installed in Cell 1.

---

### 📁 Files

| File | Description |
|------|-------------|
| `AgriGenius_Activity_1.ipynb` | Complete executed notebook with outputs |
| `README.md` | This file |
