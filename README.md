### Getting and Cleaning Data Project

### Overview

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

Here is the data required for this project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


### Assumptions

1.  Working directory has already been set prior to running this script
2.  data is contained in the folder "UCI HAR Dataset"
3.  Plyr package has been installed


### Transforming the data

run_analysis does the following:

1.  Merges the training and test data sets to create one data set
2.  Extracts the measurements of the mean and standard deviation for each measurement
3.  Names the activities in the data set
4.  Labels the data set with activity names
5.  Produces a tidy data set with the average of each variable for each activity and each subject
6.  Stores the tidy data set in a txt file called "tidydata.txt"

### Files included

run_analysis.R - R script that transforms data and creates the tidy data set

readme.md - Provides information about the repository and information about the data and course project

codebook.md - Includes information about the variables in the data set
