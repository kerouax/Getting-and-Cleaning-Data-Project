#########################################################################
## Data Science Track -  Getting and Cleaning Data Course (Coursera)
## (c) Dino Budimlija 19/09/2014
##
## Getting and Cleaning Data Project
##
## This script uses the data collected from the accelerometers from the Samsung
## Galaxy S smartphone and prepares tidy dataset that can be used for later analysis.
## Data is downloaded from here:
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
##
## Script does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the
## average of each variable for each activity and each subject.


#########################################################################
## Settting local working directory and cleaning-up the workspace
setwd("D:/My Documents/RDocs/Getting-and-Cleaning-Data-Project")
rm(list=ls())


#########################################################################
## Downloading data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./getdata-projectfiles-UCI HAR Dataset.zip", method="auto")
unzip("./getdata-projectfiles-UCI HAR Dataset.zip", exdir = ".", overwrite = FALSE)
dateDownloaded <- date()

#########################################################################
## Getting variable labels
columnNames <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]


#########################################################################
## Importing and assembling test data
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
y_test[,2] <- activity_labels[y_test[,1]]  #using descriptive names for activities
test_data <- data.frame(subject_test, x_test, y_test[,2])
colnames(test_data) <- c("SubjectID", as.character(columnNames[, 2]), "ActivityID")


#########################################################################
## Importing and assembling trining data
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
y_train[,2] <- activity_labels[y_train[,1]]  #using descriptive names for activities
train_data <- data.frame(subject_train, x_train, y_train[,2])
colnames(train_data) <- c("SubjectID", as.character(columnNames[, 2]), "ActivityID")


#########################################################################
## Merging test and training sets
completeDataset = rbind(train_data, test_data)


#########################################################################
## Extracting only the measurements on the mean and standard deviation for each measurement
filter <- grepl("std|mean", names(completeDataset))
subset <- completeDataset[, filter==TRUE]


#########################################################################
## Cleaning up the variable names to descriptive camelCase names
for (i in 1:length(names(subset)))
{
    names(subset)[i] = gsub("^t","Time",names(subset)[i])
    names(subset)[i] = gsub("^f","Freq",names(subset)[i])
    names(subset)[i] = gsub("BodyBody","Body",names(subset)[i])
    names(subset)[i] = gsub("Freq","Frequency",names(subset)[i])
    names(subset)[i] = gsub("\\()","",names(subset)[i])
    names(subset)[i] = gsub("-std","StdDev",names(subset)[i])
    names(subset)[i] = gsub("-mean","Mean",names(subset)[i])
    names(subset)[i] = gsub("Acc","Accelerometer",names(subset)[i])
    names(subset)[i] = gsub("Gyro","Gyroscope",names(subset)[i])
    names(subset)[i] = gsub("Mag","Magnitude",names(subset)[i])
    names(subset)[i] = gsub("Jerk","Jerking",names(subset)[i])
}



#########################################################################
## Tidy dataset with average values of each variable for each activity and each subject
tidySet <- cbind(completeDataset$SubjectID, completeDataset$ActivityID, subset)
names(tidySet)[1] <- "SubjectID"
names(tidySet)[2] <- "ActivityID"
library(reshape2)
tidyMelted <- melt(tidySet, id=c("SubjectID", "ActivityID"), measure.vars=colnames(tidySet)[3:81])
tidyCast <- dcast(tidyMelted, SubjectID + ActivityID ~ variable, mean)
names(tidyCast)[3:81] <- paste0("Average", names(tidyCast)[3:81])

#########################################################################
## Write tidy averaged dataset to file
write.table(tidyCast, file = "./tidy_averaged_data.txt", row.names=FALSE, sep='\t')

