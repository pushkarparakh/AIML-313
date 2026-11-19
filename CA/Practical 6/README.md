# Practical 6 – Real-World Clustering

## Aim
Find meaningful groups in a real dataset and evaluate clustering quality using numerical metrics and plots.

## Dataset
The UCI Wine Recognition dataset contains 178 wine samples and 13 chemical measurements. The `cultivar_reference` column is included for a final validation check only; it is not used to train the clustering models.

## Files
- `Real_World_Wine_Clustering.ipynb` – complete analysis and results.
- `data/wine_clustering.csv` – dataset used in the notebook.
- `requirements.txt` – required Python packages.

Open `Real_World_Wine_Clustering.ipynb` and run all cells from top to bottom.

## Work covered
- Data inspection and standardization.
- K-Means evaluation for K=2 to K=7 using WCSS, Silhouette Score and Davies-Bouldin Index.
- K-Means and Agglomerative Clustering comparison.
- PCA cluster plots and cluster profile interpretation.
- Final validation against the known cultivar labels.

## Data source
UCI Machine Learning Repository – Wine Recognition: https://archive.ics.uci.edu/dataset/109/wine

The CSV was prepared from scikit-learn's `load_wine` dataset loader. The original dataset is attributed to Forina et al.
