# CodeBook.md

## Overview

This document describes the data cleaning and transformation steps for the UCI HAR Dataset.

## Data Files

- **activity_labels.txt**: Maps activity numbers to descriptive names.
- **features.txt**: Lists all feature names.
- **train/X_train.txt**: Training set feature measurements.
- **test/X_test.txt**: Test set feature measurements.

## Data Preparation Steps

1. **Read Data**: Load raw data files.
2. **Extract Features**: Select mean and standard deviation features.
3. **Prepare Training Data**: Process training data.
4. **Prepare Test Data**: Process test data.
5. **Merge Data**: Combine training and test datasets.
6. **Factorize Variables**: Convert activity and subject columns to factors.
7. **Reshape Data**: Melt and dcast data to a tidy format.
8. **Output**: Save the tidy dataset.

## Variables

- **subject**: Subject ID.
- **activity**: Activity performed.
- **feature columns**: Mean and standard deviation measurements.
- **etc.
