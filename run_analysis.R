# Getting and Cleaning Data - Course Project

## 1 Merge the training and the test sets to create one data set

#Read in files and Combine the Test and Train data sets together

#x data (features)
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt") 
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
xdata <- rbind(xtrain,xtest)

#s data (subjects)
strain <- read.table("UCI HAR Dataset/train/subject_train.txt")
stext <- read.table("UCI HAR Dataset/test/subject_test.txt")
sdata <- rbind(strain, stext)

#y data (activities)
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
ydata <- rbind(ytrain, ytest)

#Read in Features and Activities labels  
features <- read.table("UCI HAR Dataset/features.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt")


# Assign columns names to x,y,s
colnames(sdata)=c("subjects")
colnames(xdata)= features[,2]
colnames(ydata)= c("activities")

# Combine the subject, feature and activity data
combined=cbind(sdata, ydata, xdata)

## 2 Extracts only the measurements on the mean and the standard deviation for each measurement

#get the feature column names that contain mean or std
fMeanStdNames= features[,2][grep("mean\\(\\)|std\\(\\)", features[,2])]

#"combined" data, subset columns with the names as in "fMeanStdNames"
#and also the activity and subject column
subdata=cbind(combined[,c(1,2)], combined[,colnames(combined) %in% fMeanStdNames])

## 3 Uses descriptive activity names to name the activities in the data set

subdata$activities[subdata$activities==1]="WALKING"
subdata$activities[subdata$activities==2]="WALKING_UPSTAIRS"
subdata$activities[subdata$activities==3]="WALKING_DOWNSTAIRS"
subdata$activities[subdata$activities==4]="SITTING"
subdata$activities[subdata$activities==5]="STANDING"
subdata$activities[subdata$activities==6]="LAYING"

## 4 Appropriately labels the data set with descriptive activity names

names(subdata)<-gsub("^t", "time", names(subdata))
names(subdata)<-gsub("^f", "frequency", names(subdata))
names(subdata)<-gsub("Acc", "Accelerometer", names(subdata))
names(subdata)<-gsub("Gyro", "Gyroscope", names(subdata))
names(subdata)<-gsub("Mag", "Magnitude", names(subdata))
names(subdata)<-gsub("BodyBody", "Body", names(subdata))

## 5 Creates a second independent tidy data set with the average of each variable for each activity and each subject
library(plyr);
tidydata <- aggregate(. ~activities+subjects, subdata, mean)
write.table(tidydata, file = "tidydata.txt",row.name=FALSE)
