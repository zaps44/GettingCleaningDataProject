###Data Overview

The data was obtained from the following site : http://d396qusza40orc.cloudfront.net/getdata/projectfiles/UCI%20HAR%20Dataset.zip

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

###Actions of the run_analysis R script

1.  The data consists of two sets, a training set and and a testing set.
2.  The script reads both sets of data (training and testing) and merges them into one data set.
3.  The script then extracts the mean and standard deviation for each measurement from the combined data set
4.  A descriptive name is applied to each type of measurement. These names were obtained from the documentation supplied with the data set.
5.  The number describing each activity is then replaced with the descriptive name. These names were obtained from the documentation supplied with the data set.
6.  A second summarized data set is created and stored as a txt file called "tidydata.txt".


###Tidy data set

This summarized data set consists of 180 rows, which represent each of the 6 activities for each of the 30 subjects.
Each column consists of one variable (detailed below).


###Tidy data variables

Variable Names | Descriptions
--------|-----------
activities| One column. 6 levels. WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS SITTING, STANDING, LAYING
subjects| One column. The subject who performed the activity, ranges from 1 to 30
...BodyAccelerometer-...| 6 columns. Mean and standard deviation of time or frequency of 3-axial body signals (X, Y or Z) from accelerometer for each subject and each activity. Unit of time is in second. Unit of frequenry is in HZ.
...GravityAccelerometer-...| 6 columns. Mean and standard deviation of time or frequency of 3-axial Gravity signals (X, Y or Z) from accelerometer each subject and each activity. Unit of time is in second. Unit of frequenry is in HZ.
...BodyAccelerometerJerk-...| 6 columns. Mean and standard deviation of time or frequency of 3-axial body jerk signals (X, Y or Z) from accelerometer each subject and each activity. Unit of time is in second. Unit of frequenry is in HZ.
...BodyGyroscope-...| 6 columns. Mean and standard deviation of time or frequency of 3-axial body signals (X, Y or Z) from Gyroscope each subject and each activity. Unit of time is in second. Unit of frequenry is in HZ.
...BodyGyroscopeJerk-...| 6 columns. Mean and standard deviation of time or frequency of 3-axial body Jerk signals (X, Y or Z) from Gyroscope each subject and each activity. Unit of time is in second. Unit of frequenry is in HZ.
...BodyAccelerometerMagnitude-...| 2 columns. Mean and standard deviation of time or frequency of magnitude of body signals from accelerometer each subject and each activity. Unit of time is in second. Unit of frequenry is in HZ.
...GravityAccelerometerMagnitude-...| 2 columns. Mean and standard deviation of time or frequency of magnitude of gravity signals from accelerometer each subject and each activity. Unit of time is in second. Unit of frequenry is in HZ.
...BodyAccelerometerJerkMagnitude-...| 2 columns. Mean and standard deviation of time or frequency of magnitude of body jerk signals from accelerometer each subject and each activity. Unit of time is in second. Unit of frequenry is in HZ.
...BodyGyroscopeMagnitude-...| 2 columns. Mean and standard deviation of time or frequency of magnitude of magnitude of body signals from gyroscope each subject and each activity. Unit of time is in second. Unit of frequenry is in HZ.
...BodyGyroscopeJerkMagnitude-...| 2 columns. Mean and standard deviation of time or frequency of magnitude of body jerk signals from gyroscope each subject and each activity. Unit of time is in second. Unit of frequenry is in HZ.


##This is a comparison of the variable names in tidydata.txt and in original data set.
Variable names in Tidy Data | Variable names in Original Data
------------ | -------------
activities   | 
subjects     | 
timeBodyAccelerometer-mean()-X|tBodyAcc-mean()-X
timeBodyAccelerometer-mean()-Y|tBodyAcc-mean()-Y
timeBodyAccelerometer-mean()-Z|tBodyAcc-mean()-Z
timeBodyAccelerometer-std()-X|tBodyAcc-std()-X
timeBodyAccelerometer-std()-Y|tBodyAcc-std()-Y
timeBodyAccelerometer-std()-Z|tBodyAcc-std()-Z
timeGravityAccelerometer-mean()-X|tGravityAcc-mean()-X
timeGravityAccelerometer-mean()-Y|tGravityAcc-mean()-Y
timeGravityAccelerometer-mean()-Z|tGravityAcc-mean()-Z
timeGravityAccelerometer-std()-X|tGravityAcc-std()-X
timeGravityAccelerometer-std()-Y|tGravityAcc-std()-Y
timeGravityAccelerometer-std()-Z|tGravityAcc-std()-Z
timeBodyAccelerometerJerk-mean()-X|tBodyAccJerk-mean()-X
timeBodyAccelerometerJerk-mean()-Y|tBodyAccJerk-mean()-Y
timeBodyAccelerometerJerk-mean()-Z|tBodyAccJerk-mean()-Z
timeBodyAccelerometerJerk-std()-X|tBodyAccJerk-std()-X
timeBodyAccelerometerJerk-std()-Y|tBodyAccJerk-std()-Y
timeBodyAccelerometerJerk-std()-Z|tBodyAccJerk-std()-Z
timeBodyGyroscope-mean()-X|tBodyGyro-mean()-X
timeBodyGyroscope-mean()-Y|tBodyGyro-mean()-Y
timeBodyGyroscope-mean()-Z|tBodyGyro-mean()-Z
timeBodyGyroscope-std()-X|tBodyGyro-std()-X
timeBodyGyroscope-std()-Y|tBodyGyro-std()-Y
timeBodyGyroscope-std()-Z|tBodyGyro-std()-Z
timeBodyGyroscopeJerk-mean()-X|tBodyGyroJerk-mean()-X
timeBodyGyroscopeJerk-mean()-Y|tBodyGyroJerk-mean()-Y
timeBodyGyroscopeJerk-mean()-Z|tBodyGyroJerk-mean()-Z
timeBodyGyroscopeJerk-std()-X|tBodyGyroJerk-std()-X
timeBodyGyroscopeJerk-std()-Y|tBodyGyroJerk-std()-Y
timeBodyGyroscopeJerk-std()-Z|tBodyGyroJerk-std()-Z
timeBodyAccelerometerMagnitude-mean()|tBodyAccMag-mean()
timeBodyAccelerometerMagnitude-std()|tBodyAccMag-std()
timeGravityAccelerometerMagnitude-mean()|tGravityAccMag-mean()
timeGravityAccelerometerMagnitude-std()|tGravityAccMag-std()
timeBodyAccelerometerJerkMagnitude-mean()|tBodyAccJerkMag-mean()
timeBodyAccelerometerJerkMagnitude-std()|tBodyAccJerkMag-std()
timeBodyGyroscopeMagnitude-mean()|tBodyGyroMag-mean()
timeBodyGyroscopeMagnitude-std()|tBodyGyroMag-std()
timeBodyGyroscopeJerkMagnitude-mean()|tBodyGyroJerkMag-mean()
timeBodyGyroscopeJerkMagnitude-std()|tBodyGyroJerkMag-std()
frequencyBodyAccelerometer-mean()-X|fBodyAcc-mean()-X
frequencyBodyAccelerometer-mean()-Y|fBodyAcc-mean()-Y
frequencyBodyAccelerometer-mean()-Z|fBodyAcc-mean()-Z
frequencyBodyAccelerometer-std()-X|fBodyAcc-std()-X
frequencyBodyAccelerometer-std()-Y|fBodyAcc-std()-Y
frequencyBodyAccelerometer-std()-Z|fBodyAcc-std()-Z
frequencyBodyAccelerometerJerk-mean()-X|fBodyAccJerk-mean()-X
frequencyBodyAccelerometerJerk-mean()-Y|fBodyAccJerk-mean()-Y
frequencyBodyAccelerometerJerk-mean()-Z|fBodyAccJerk-mean()-Z
frequencyBodyAccelerometerJerk-std()-X|fBodyAccJerk-std()-X
frequencyBodyAccelerometerJerk-std()-Y|fBodyAccJerk-std()-Y
frequencyBodyAccelerometerJerk-std()-Z|fBodyAccJerk-std()-Z
frequencyBodyGyroscope-mean()-X|fBodyGyro-mean()-X
frequencyBodyGyroscope-mean()-Y|fBodyGyro-mean()-Y
frequencyBodyGyroscope-mean()-Z|fBodyGyro-mean()-Z
frequencyBodyGyroscope-std()-X|fBodyGyro-std()-X
frequencyBodyGyroscope-std()-Y|fBodyGyro-std()-Y
frequencyBodyGyroscope-std()-Z|fBodyGyro-std()-Z
frequencyBodyAccelerometerMagnitude-mean()|fBodyAccMag-mean()
frequencyBodyAccelerometerMagnitude-std()|fBodyAccMag-std()
frequencyBodyAccelerometerJerkMagnitude-mean()|fBodyBodyAccJerkMag-mean()
frequencyBodyAccelerometerJerkMagnitude-std()|fBodyBodyAccJerkMag-std()
frequencyBodyGyroscopeMagnitude-mean()|fBodyBodyGyroMag-mean()
frequencyBodyGyroscopeMagnitude-std()|fBodyBodyGyroMag-std()
frequencyBodyGyroscopeJerkMagnitude-mean()|fBodyBodyGyroJerkMag-mean()
frequencyBodyGyroscopeJerkMagnitude-std()|fBodyBodyGyroJerkMag-std()
