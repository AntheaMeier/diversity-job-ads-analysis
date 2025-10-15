#!/usr/bin/env bash
# ==========================================================
# Rename Notebooks in B_Lable_Classification and C_Folder
# macOS-compatible (no associative arrays)
# ==========================================================

echo "📂 Renaming notebooks in B_Lable_Classification..."
cd notebooks/B_Lable_Classification || exit

mv "AM_div_14_keyword_textanalysis.ipynb" "B.1_Keyword_Matching_Preanalysis_Diversity_Themes.ipynb" 2>/dev/null
mv "AM_div_15_SprachlicheMuster.ipynb" "B.2_Regex_Matching_Preanalysis_Affective_Linguistic_Patterns.ipynb" 2>/dev/null
mv "AM_div_18_keyword_textanalysis_Cat_Dimensions.ipynb" "B.3_Keyword_and_Regex_Preanalysis_Categories_Dimensions.ipynb" 2>/dev/null
mv "AM_div_26G_Evaluation_V39.ipynb" "B.4_Evaluation_V39.ipynb" 2>/dev/null
mv "AM_div_27_ValidV23_V32_V39_und_Batch_Aufteilung.ipynb" "B.5_Validation_V23_V32_V39_and_Batch_Split.ipynb" 2>/dev/null
mv "AM_div_32A_ValidierungssamplingV39.ipynb" "B.6_Sampling_for_Validation_V39.ipynb" 2>/dev/null
mv "AM_div_33_Batch_1bis3_V39.ipynb" "B.7_LLM_Classification_Batch_1to3_V39.ipynb" 2>/dev/null
mv "AM_div_34_Batch_4bis6_V39.ipynb" "B.8_LLM_Classification_Batch_4to6_V39.ipynb" 2>/dev/null
mv "AM_div_35_Batch_7bis9_V39.ipynb" "B.9_LLM_Classification_Batch_7to9_V39.ipynb" 2>/dev/null
mv "AM_div_32_Batch_10_V39.ipynb" "B.10_LLM_Classification_Batch_10_V39.ipynb" 2>/dev/null
mv "AM_div_36_Dims_kwb_df_final.ipynb" "B.11_Sampling_for_Validation_Regex_Dimensions.ipynb" 2>/dev/null

# Move Hybrid Logic file (if exists)
if [ -f "../C_Final_Analysis_ContextLablePattern/AM_div_37_StatitischenAnalyseV39.ipynb" ]; then
  mv "../C_Final_Analysis_ContextLablePattern/AM_div_37_StatitischenAnalyseV39.ipynb" "B.12_Regex_Based_Classification_and_Hybrid_Logic.ipynb"
  echo "✅ Moved and renamed Hybrid Logic file to B.12"
else
  echo "⚠️ Hybrid Logic file not found (expected: AM_div_37_StatitischenAnalyseV39.ipynb)"
fi

# Confirm B.13 exists
if [ -f "B.13_Graphics_Results_of_Label_Classification.ipynb" ]; then
  echo "✅ Confirmed presence of B.13"
else
  echo "⚠️ B.13 file not found – check manually."
fi

cd ../C_Final_Analysis_ContextLablePattern || exit
echo "📂 Renaming notebooks in C_Final_Analysis_ContextLablePattern..."

mv "AM_div_38_S1_und S2_S3.ipynb" "C.1_Context_Label_Analysis.ipynb" 2>/dev/null

echo "🎉 All renaming completed successfully."

