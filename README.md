Overview
This repository contains an analysis of the UCI Human Activity Recognition (HAR) Dataset. The goal is to prepare a tidy dataset that summarizes the average of each variable for each activity and each subject. The analysis involves extracting relevant features, merging data, and reshaping it for further analysis.

Project Structure
data/: Contains the original and processed data files.
scripts/: Contains the R script used for data preparation and analysis.
CodeBook.md: A detailed description of the data, variables, and transformations applied.
README.md: This file.
Data Preparation
The dataset preparation involves several steps:

Read Data Files: The raw data files are read from the UCI HAR Dataset.
Extract Relevant Features: Only features related to mean and standard deviation are selected.
Read and Prepare Training Data: Training data is read, processed, and merged.
Read and Prepare Test Data: Test data is processed similarly to the training data.
Merge Data Sets: Training and test datasets are combined into one.
Factorize Variables: Convert activity and subject columns to factors.
Reshape Data: Data is reshaped to create a tidy dataset with the average of each variable for each activity and each subject.
Output: The final tidy dataset is saved as tidyData.txt.
Codebook
For a detailed description of the dataset, including the variables and transformations applied, refer to CodeBook.md.

Scripts
The analysis script analysis.R performs the following:

Reads and processes the data files.
Extracts mean and standard deviation features.
Combines training and test data.
Converts activity labels to descriptive names.
Reshapes the data to create a tidy dataset.
Running the Script
To run the script:

Ensure you have R installed on your system.
Install the required packages using:
r
Copy code
install.packages(c("reshape2", "data.table"))
Source the script in R:
r
Copy code
source("scripts/analysis.R")
Data Files
data/activity_labels.txt: Maps activity numbers to activity names.
data/features.txt: Lists the feature names.
data/train/X_train.txt: Training set features.
data/train/Y_train.txt: Training set activity labels.
data/train/subject_train.txt: Training set subject IDs.
data/test/X_test.txt: Test set features.
data/test/Y_test.txt: Test set activity labels.
data/test/subject_test.txt: Test set subject IDs.
data/tidyData.txt: The final tidy dataset with averages of each variable.
License
This project is licensed under the MIT License. See LICENSE for details.

Acknowledgements
The UCI HAR Dataset was provided by the University of California, Irvine.
Contact
For questions or suggestions, please contact Your Name.
