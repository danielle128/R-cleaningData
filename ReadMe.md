---
title: "ReadMe"
author: "Danti Chen"
date: "Sept 2015"
output: html_document
---

## Data download

The dataset was downloaded to the local directory "~/R/Getting&Cleaning_Data/Project/UCI HAR Dataset/" from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The raw sampled data (../Inertial Signals) was not used for the project, only the features (based on the raw data)  are used. The data was also split into training and testing sets. Each set contains 
X -- feature measurements
y -- integers indicating the activity labels for each row of X
subject -- integers indicating the subjects (users) for each measurement in X


features.txt contains description of the list of features


activity_labels.txt is used to correlate integer labels for acitivity and the respective descriptive names.
The data being processed are mean and standard deviation of each feature that's measured decided based on features.txt

## Data-loading
Based on wether the feature name contains the word "mean()" or "std()", selected columns of X were loaded from the training (7352 rows) and test (2947 rows) datasets. y and subject were fully loaded from the training and test datasets.

The training and test sets were combined for each data frame to form a big set (10299 rows) using cbind().

## Data Cleaning

* Descriptive feature names was constructed for X based on features.txt.
* The activity descriptions were merged with the activity label data (on acitivity codes) and appended to the data by row number.
* The data was grouped by Subject and Activity, and the mean value for each measurment was calculated using: ddply(df, .(Activity,Subject), numcolwise(mean))
* The column names are updated to indicate that the data is averaged.
