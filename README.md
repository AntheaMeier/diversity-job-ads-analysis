# Diversity Analysis & Classification in German Job Ads  

This repository contains the central data and Jupyter notebooks from my bachelor thesis:

**“Analysis of Diversity-Related Passages in German Job Advertisements Using Automated, Hybrid Classification:  
LLM-Supported Few-Shot Prompting and Rule-Based Algorithms”**  
HTW Berlin, 2025 – Anthea Sheila Meier  

---

## Overview  
This study examines how diversity is communicated in German-language job advertisements and which contextual factors influence the likelihood and extent of such statements.  

Methodologically, the project combines:  
- **Quantitative content analysis** of ~160,000 job ads (2022 corpus, 20,000 diversity-relevant).  
- **Hybrid classification** of communication formats and diversity dimensions, using LLM-supported few-shot prompting and complementary rule-based algorithms.  
- **Statistical modeling** with logistic regression and random forest.  

Key findings include:  
- Diversity statements increase with company size;  
- City profiles (e.g., Berlin, Munich) show significant differences;  
- Gender-neutral language is more frequent in small companies, while large companies mention underrepresentation more often;  
- The dimension of disability is less visible in small companies.  

The pipeline provides a reproducible workflow for large-scale text corpora and yields structured insights for research and practice.  

---

## Repository Contents  

- **Master DataFrame**  
  - `BA_Diversity_Analysis_final.pkl` – consolidated dataset with all features and classification results (≈1.5 GB).  

- **Goldstandard CSV files**  
  - `Classi_manuelle_labels_fuer_eval_Bekenntnisse.csv`  
  - `Classi_manuelle_labels_fuer_evaluation.csv`  
  - `Classi_manuelle_labels_fuer_evaluationV34.csv`  
  - `Validierung_Samples_for_comparison_V39.csv`  
  - `Validierung_Samples_for_manual_labeling_V39.csv`  

- **Jupyter Notebooks** (core analyses)  
  - `AM_div_07–15`: Exploratory analyses and text patterns  
  - `AM_div_18`: Extended keyword-based text analysis  
  - `AM_div_26G`: Final evaluation (Version V39)  
  - `AM_div_27`: Validation and batch split overview  
  - `AM_div_32–37`: Final classification runs and statistical analyses  
  - `Master_df.ipynb`: Handling the master DataFrame  
  - `S1_S2_S3.ipynb`: Screening, confirmation, and reporting  

---

## Usage  

1. Install Python ≥3.9 with packages: `pandas`, `scikit-learn`, `matplotlib`, `jupyter`.  
2. Load the master dataset:  
   ```python
   import pandas as pd
   df = pd.read_pickle("BA_Diversity_Analysis_final.pkl")
   print(df.shape)
