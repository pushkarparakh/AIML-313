# Practical Assignment 5 – Ensemble Learning

## Aim
Implement Stacking, AdaBoost and Voting classifiers, and compare them with individual machine-learning models.

## Dataset
Wisconsin Diagnostic Breast Cancer dataset (569 samples, 30 numeric features). The task is to classify samples as malignant or benign. The notebook defines malignant as the positive class so recall measures how many malignant cases are detected.

## Files
- `Practical_5_Ensemble_Learning.ipynb` – complete implementation and evaluation.
- `data/breast_cancer_wisconsin.csv` – dataset used in the notebook.
- `requirements.txt` – required Python packages.

Open `Practical_5_Ensemble_Learning.ipynb` and run all cells from top to bottom.

## Work covered
- Train/test split with stratification.
- Logistic Regression, Decision Tree and SVM as base classifiers.
- Stacking with Logistic Regression as the meta-classifier.
- AdaBoost with a Decision Tree stump as the weak learner.
- Soft Voting using the base classifiers.
- Comparison using accuracy, precision, recall, F1-score and ROC-AUC.
- Confusion matrices, findings and possible improvements.

## Dataset source
UCI Machine Learning Repository – Wisconsin Diagnostic Breast Cancer:
https://archive.ics.uci.edu/dataset/17/breast+cancer+wisconsin+diagnostic

The included CSV was prepared from scikit-learn's `load_breast_cancer` dataset loader.
