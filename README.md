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

### 🧭 Repository Structure

All project files are organized into two main folders:

- **`data/`** – cleaned and validated datasets used in all analyses:  
  - `Classi_manuelle_labels_fuer_eval_Bekenntnisse.csv`  
  - `Classi_manuelle_labels_fuer_evaluation.csv`  
  - `Classi_manuelle_labels_fuer_evaluationV34.csv`  
  - `Validierung_Samples_for_comparison_V39.csv`  
  - `Validierung_Samples_for_manual_labeling_V39.csv`  
  - *(The large master dataset `BA_Diversity_Analysis_final.pkl` is available via [GitHub Release v1.0](https://github.com/AntheaMeier/diversity-job-ads-analysis/releases/tag/v1.0) and therefore not stored directly in this repository.)*

- **`notebooks/`** – Jupyter notebooks for all analytical parts  
  (Context-factor analysis, classification pipeline, and final statistical evaluation; see detailed structure below)

### 📒 Jupyter Notebooks (core analyses and classification)
All notebooks are organized into three structured parts:

#### **A – Analysis of Context Factors**
Located in `notebooks/A_Analysis_ContextFactors/`  
Focus: Structural drivers of diversity communication  
- `A.1_DataOverview.ipynb` – initial data overview  
- `A.2_DataCleaning_and_AttributeGeneration.ipynb` – data cleaning & feature creation  
- `A.3_DescriptiveAnalysis_Qualification_and_ContextFactorIdentification.ipynb` – qualification & factor identification  
- `A.4_DescriptiveAnalysis_Size_Industry_Region.ipynb` – company size, industry, and region  
- `A.5_Multivariate_Logit_Models_A_to_E.ipynb` – logistic regression models  
- `A.6_Random_Forest_Model_A.ipynb` – baseline random-forest model (Google Jobs)  
- `A.7_Random_Forest_Model_E.ipynb` – optimized random-forest model (BAA data)

#### **B – Label Classification**
Located in `notebooks/B_Label_Classification/`  
Focus: Hybrid few-shot + rule-based classification of diversity statements  
- `AM_div_14–18` – keyword and linguistic pattern analysis  
- `AM_div_26G` – final evaluation (V39)  
- `AM_div_27` – validation & batch overview  
- `AM_div_32–36` – final batch classifications and union datasets

#### **C – Final Analysis of Context–Label Patterns**
Located in `notebooks/C_Final_Analysis_ContextLabelPattern/`  
Focus: Linking contextual factors and classified labels  
- `AM_div_37` – statistical analysis (V39)  
- `AM_div_38` – screening, confirmation (S1–S3) and reporting

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



