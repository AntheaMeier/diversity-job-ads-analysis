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

### Repository Structure

All project files are organized into two main folders:

- **`data/`** – cleaned, labeled and validated datasets used across all analytical stages.  
  This folder contains the master dataset and various intermediate and validation files from the classification pipeline.  
  Key files include:  
  - `BA_Diversity_Analysis_final.pkl` – final integrated dataset for all analyses  
  - `Classi_manuelle_labels_fuer_evaluation*.csv` – manually labeled samples for model validation  
  - `kwb_validation_sample_80rec.csv` – manual sample for rule-based validation  
  - `batch_requests_V39_*.jsonl` and `batch_results_V39_*.jsonl` – OpenAI Batch API input/output files (LLM classification)  
  - `v39_validation_comparison_results.csv` – summary metrics comparing LLM and hybrid performance  
  
- **`notebooks/`** – structured Jupyter notebooks covering all analytical parts of the study  
  (Context-factor analysis, hybrid classification, and context–label evaluation; see detailed breakdown below)

---
### 📦 Master Dataset (Zenodo, Restricted Access)

The final master dataset (`BA_Diversity_Analysis_final.pkl`, ~1.6 GB) cannot be included directly in this repository due to file size, copyright, and data protection restrictions.

Instead, it is archived on Zenodo and can be accessed upon request:

**DOI:** https://doi.org/10.5281/zenodo.17651771  
**Access:** Files restricted – access granted upon request

**How to request access:**
1. Open the DOI link  
2. Click **“Request access”**  
3. Access will be manually approved by the author  
4. Download the file as **`BA_Diversity_Analysis_final.pkl`**

⚠️ **Important for running the notebooks:**  
The downloaded file must be saved with exactly this filename in the following location:  
  
`data/BA_Diversity_Analysis_final.pkl`  

All Jupyter notebooks expect this path and will not run without it.



### 📒 Jupyter Notebooks (Core Analyses and Classification)

All notebooks are organized into three main analytical parts that mirror the structure of the thesis.

---

#### **A – Analysis of Context Factors**  
*Location: `notebooks/A_Analysis_ContextFactors/`*  
Focus: Identification of structural drivers (e.g., company size, industry, region, qualification level) influencing diversity communication.  
- `A.1_DataOverview.ipynb` – initial data overview  
- `A.2_DataCleaning_and_AttributeGeneration.ipynb` – data cleaning and feature generation  
- `A.3_DescriptiveAnalysis_Qualification_and_ContextFactorIdentification.ipynb` – qualification-level analysis and context-factor identification  
- `A.4_DescriptiveAnalysis_Size_Industry_Region.ipynb` – descriptive patterns by size, sector, and region  
- `A.5_Multivariate_Logit_Models_A_to_E_Addendum.ipynb` – updated and corrected version of the logistic regression models (Addendum)
- `A.5_Multivariate_Logit_Models_A_to_E_Legacy.ipynb` – earlier model version: logistic regression models (context effects) 
- `A.6_Random_Forest_Model_A.ipynb` – baseline Random Forest (Google Jobs subset)  
- `A.7_Random_Forest_Model_E.ipynb` – optimized Random Forest (BAA full dataset)

---

#### **B – Label Classification (Hybrid LLM + Regex)**  
*Location: `notebooks/B_Label_Classification/`*  
Focus: Construction, evaluation, and validation of the hybrid few-shot classification pipeline for diversity-related statements.  
- **Pre-Analyses:**  
  - `B.1_Preanalysis_Diversity_Themes_with_KeywordMatching.ipynb` – thematic keyword exploration  
  - `B.2_Preanalysis_Affective_Linguistic_Patterns_with_Regex.ipynb` – affective and linguistic pattern detection  
  - `B.3_Preanalysis_Labels_with_Keywords_and_Regex.ipynb` – preliminary label detection and mapping  
- **Model Evaluation & Sampling:**  
  - `B.4_Evaluation_V39.ipynb` – LLM classification evaluation (V39)  
  - `B.5_Sampling_for_Validation_V39.ipynb` – creation of validation samples for LLM evaluation  
  - `B.6_Validation_V23_V32_V39_and_Batch_Split.ipynb` – comparative evaluation of multiple model versions  
- **Batch Classification:**  
  - `B.7_LLM_Classification_Batch_1to3_V39.ipynb`  
  - `B.8_LLM_Classification_Batch_4to6_V39.ipynb`  
  - `B.9_LLM_Classification_Batch_7to9_V39.ipynb`  
  - `B.10_LLM_Classification_Batch_10_V39.ipynb`  
  - `B.11_LLM_Classification_Final_Merge.ipynb` – integration of all batch outputs (V39)  
- **Regex & Hybrid Validation:**  
  - `B.12_Sampling_for_Validation_Regex_Dimensions.ipynb` – sampling for rule-based dimension validation  
  - `B.13_Regex_Based_Classification_and_Hybrid_Logic.ipynb` – rule-based labeling and hybrid union logic  
  - `B.14_Graphics_Results_of_Label_Classification.ipynb` – creation of summary tables and visualizations for all labels

---

#### **C – Final Analysis of Context–Label Patterns**  
*Location: `notebooks/C_Final_Analysis_ContextLabelPattern/`*  
Focus: Statistical linkage between context factors and classified label patterns (multi-label analysis).  
- `C.1_Context_Label_Analysis.ipynb` – final quantitative analysis of context–label relationships (Steps S1–S3: screening, confirmation, reporting)

---

### 🗂️ Utility and Meta Files
- `show_structure.py` – generates a recursive overview of the project directory  
- `project_structure.txt` – auto-generated text summary of the full repository structure  
- `README.md` – documentation and project overview

---

## Usage

1. **Environment**  
   Python ≥ 3.9 with packages: `pandas`, `scikit-learn`, `matplotlib`, `jupyter`.

2. **Load the master dataset**
   ```python
   import pandas as pd
  df = pd.read_pickle("data/BA_Diversity_Analysis_final.pkl")
   print(df.shape)

## Citation

If you use this repository or parts of the dataset, please cite as follows:

**Meier, Anthea Sheila (2025).** *Diversity Analysis & Classification in German Job Ads* [Data & Code Repository].  
HTW Berlin. Available at: <https://github.com/AntheaMeier/diversity-job-ads-analysis>

## Contact

👩‍💻 **Anthea Sheila Meier**  
🎓 HTW Berlin – B.Sc. Computer Science & Business  
🔗 [LinkedIn Profile](https://www.linkedin.com/in/anthea-meier-bb5665230/)



