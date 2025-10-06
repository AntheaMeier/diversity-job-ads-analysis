# Diversity Analysis & Classification in German Job Ads

This repository contains the complete analysis code and data from the project:

**“Analysis of Diversity-Related Passages in German Job Advertisements Using Automated, Hybrid Classification:
LLM-Supported Few-Shot Prompting and Rule-Based Algorithms”**  
HTW Berlin, 2025 – *Anthea Sheila Meier*

---

## Overview

This project investigates how diversity is communicated in German-language job advertisements and which contextual factors influence the likelihood and extent of such statements.

It combines:
- **Quantitative content analysis** of ~160,000 job ads (2022 corpus, ~20,000 diversity-relevant)  
- **Hybrid classification** of communication formats and diversity dimensions, using LLM-based few-shot prompting and complementary rule-based algorithms  
- **Statistical modeling** with logistic regression and random forest

### Key findings
- Diversity statements increase with company size.  
- City profiles (e.g., Berlin, Munich) show significant variation.  
- Gender-neutral language is more frequent in small companies, while large companies mention underrepresentation more often.  
- The dimension of disability is less visible in small companies.

The pipeline provides a reproducible workflow for large-scale text corpora and yields structured insights for research, applied data analysis, and diversity communication studies.

---

## Repository Contents

### 🗂️ Master Dataset
- `BA_Diversity_Analysis_final.pkl` – consolidated dataset with all features and classification results (~1.5 GB).

📦 **Download via GitHub Release v1.0:**  
➡️ <https://github.com/AntheaMeier/diversity-job-ads-analysis/releases/tag/v1.0>

### 🧾 Goldstandard CSV files
- `Classi_manuelle_labels_fuer_eval_Bekenntnisse.csv`  
- `Classi_manuelle_labels_fuer_evaluation.csv`  
- `Classi_manuelle_labels_fuer_evaluationV34.csv`  
- `Validierung_Samples_for_comparison_V39.csv`  
- `Validierung_Samples_for_manual_labeling_V39.csv`

### 📒 Jupyter Notebooks (core analyses)
- `AM_div_07–15`: Exploratory analyses and text pattern identification  
- `AM_div_18`: Extended keyword-based text analysis  
- `AM_div_26G`: Final evaluation (Version V39)  
- `AM_div_27`: Validation and batch split overview  
- `AM_div_32–37`: Final classification runs and statistical analyses  
- `Master_df.ipynb`: Handling and transformation of the master dataset  
- `S1_S2_S3.ipynb`: Screening, confirmation, and reporting workflow

---

## Usage

1. **Environment**  
   Python ≥ 3.9 with packages: `pandas`, `scikit-learn`, `matplotlib`, `jupyter`.

2. **Load the master dataset**
   ```python
   import pandas as pd
   df = pd.read_pickle("BA_Diversity_Analysis_final.pkl")
   print(df.shape)

## Citation

If you use this repository or parts of the dataset, please cite as follows:

**Meier, Anthea Sheila (2025).** *Diversity Analysis & Classification in German Job Ads* [Data & Code Repository].  
HTW Berlin. Available at: <https://github.com/AntheaMeier/diversity-job-ads-analysis>

## Contact

👩‍💻 **Anthea Sheila Meier**  
🎓 HTW Berlin – B.Sc. Computer Science & Business  
🔗 [LinkedIn Profile](https://www.linkedin.com/in/anthea-meier-bb5665230/)



