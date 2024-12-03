# MAD-MLBridge: Multimodal Alzheimer's Disease Diagnosis

MAD-MLBridge is a novel multimodal deep learning framework that integrates genetic, clinical, and imaging data to enhance Alzheimer's Disease (AD) diagnosis. The framework bridges deep learning feature extraction with traditional machine learning classification to achieve superior diagnostic performance.

## Overview

Alzheimer's disease (AD) is the most common neurodegenerative disorder with complex pathogenesis. This project aims to develop an accurate, multimodal diagnostic support tool for medical professionals by combining multiple data types:

- Clinical data from neurological exams and cognitive assessments
- Genetic data from whole genome sequencing
- MRI imaging data from brain scans

## Data Sources and Preprocessing

### Clinical Data
- Dataset size: 2,334 patients
- Features: Neurological exams, cognitive assessments, demographics
- Preprocessing: 
  - Excluded direct AD indicators
  - One-hot encoding for categorical data
  - Normalization for continuous features

### Genetic Data
- Dataset size: 779 ADNI participants
- Source: Illumina's non-CLIA laboratory
- Format: Variant call files (VCFs)
- Preprocessing:
  - Filtration
  - Dimensionality reduction using Random Forest Classifier

### Image Data
- Dataset size: 437 patients from ADNI1 baseline screenings
- Preprocessing:
  - Standardization for scanner-related non-linearities
  - Selection of three central slices per dimension

## Architecture

The framework consists of several key components:

1. **Modality-Specific Neural Networks**
   - Clinical: 3-layer fully connected network
   - Genetic: CNN architecture
   - Imaging: GoogleNet

2. **Attention Mechanisms**
   - Self-attention layer for identifying key features within each modality
   - Cross-modal bi-directional attention layer for modeling interactions across modalities

3. **Feature Integration**
   - Dense layer for concatenating modality results
   - Final classification using Random Forest

## Performance

MAD-MLBridge achieves state-of-the-art performance compared to existing methods:

| Study | Modality | Accuracy | F1-score | Method |
|-------|----------|----------|-----------|---------|
| MAD-MLBridge | MRI, SNP, clinical | 91% | 91% | DL + attention + RF |
| Abuhmed et al, 2021 | MRI, PET, clinical | 86.08% | 87.67% | Multivariate BiLSTM |
| Bucholc et al, 2019 | MRI, PET, clinical | 82.90% | Not reported | SVM |
| Venugopalan et al, 2021 | MRI, SNP, clinical | 78% | 78% | DL + RF |
| Fang et al, 2020 | MRI, PET | 66.29% | Not reported | GDCA |

## Project Structure

```
├── general/              # General utilities and helper functions
├── multi/                # Multimodal integration components
├── preprocess_clinical/  # Clinical data preprocessing scripts
├── preprocess_genetic/   # Genetic data preprocessing scripts
├── preprocess_images/    # Image preprocessing scripts
├── preprocess_overlap/   # Data overlap handling
└── training/            # Model training scripts
```

## Future Work

We aim to:
1. Expand the dataset to improve generalizability
2. Incorporate advanced architectures like Transformers
3. Enhance explainability for clinical insights
4. Develop more sophisticated feature integration methods


## Authors
- Yanice (Yixuan) Yin
- Wanxing Zhang
