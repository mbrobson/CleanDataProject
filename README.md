Cleaning Data Project
=====================

This script provides a processing of the Human Activity Recognition Using Smartphones Data Set data.

Data Input
==========

The data must be sourced locally but assumes the schema of the following:

	Source Data:

	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

	Source Description:

	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Assumptions
===========
i) The current working directory must contain datasets in files train/x_train.txt and test/x_test.txt, 

Processing
==========

1)    Merges the training and the test sets to create one data set.
2)    Extracts only the measurements on the mean and standard deviation for each measurement. 
3)    Uses descriptive activity names to name the activities in the data set
4)    Appropriately labels the data set with descriptive variable names. 
5)    Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

The 5th requirement is created as a CSV file ("x_clean.csv") in the working directory.