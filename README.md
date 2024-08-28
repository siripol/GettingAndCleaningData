# UCI HAR Dataset Analysis

## Overview

This repository contains scripts and documentation for analyzing the UCI Human Activity Recognition (HAR) Dataset. The project aims to prepare a tidy dataset that summarizes the average of each variable for each activity and subject.

## Project Structure

- **`data/`**: Contains raw and processed data files.
- **`scripts/`**: Contains R scripts for data preparation and analysis.
- **`CodeBook.md`**: Detailed description of the dataset, variables, and transformations.
- **`README.md`**: This file.

## Data Preparation Steps

1. **Read Data Files**: Load raw data files from the UCI HAR Dataset.
2. **Extract Relevant Features**: Select features related to mean and standard deviation.
3. **Prepare Training Data**: Process and merge training data.
4. **Prepare Test Data**: Process and merge test data.
5. **Merge Data Sets**: Combine training and test datasets into one.
6. **Factorize Variables**: Convert activity and subject columns to factors.
7. **Reshape Data**: Transform data to a tidy format.
8. **Output**: Save the tidy dataset to `tidyData.txt`.
