##This R scirpt is for the course project of Getting and Cleaning Data
##-------------------------------------------
## set working directory
setwd("C:/Users/Bell/Desktop/coursera/getting and cleaning data")
## download the data file
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/projectdata.zip")
dateDownloaded <- date()
##unzip the data file
unzip(zipfile = "./data/projectdata.zip", exdir = "./data")
list.files("./data/UCI HAR Dataset", recursive = TRUE)
##------------------------------------
##reading local flat file by using read.table
##main data--X_test, X_train
##subject --subject_test, subject_train
##activities-- y_test, y_train
##main data
DataTest <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "")
DataTrain <- read.table( "./data/UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "")
head(DataTest)
head(DataTrain)

##activities
ActivityDataTest <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = "")
ActivityDataTrain <- read.table( "./data/UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = "")
head(ActivityDataTest)
head(ActivityDataTrain)

##subject
SubjectDataTest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "")
SubjectDataTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "")
head(SubjectDataTest)
head(SubjectDataTrain)

##----------------------------------------
##1. Merges the training and the test sets to create one data set.
## all the data have same number of columns,but different number of rows
## use rbind to merge data
Data <- rbind(DataTrain, DataTest)
ActivityData <- rbind(ActivityDataTrain, ActivityDataTest)
SubjectData <- rbind(SubjectDataTrain, SubjectDataTest)
##------------------------------------------------------
## set colnames of the Data set
FeatureDataNames <- read.table("./data/UCI HAR Dataset/features.txt", header = FALSE, sep = "")
colnames(Data) <- FeatureDataNames[,2]
colnames(ActivityData) <- c("Activity")
colnames(SubjectData) <- c("Subject")
##--------------------------------------------
##2. Extracts only the measurements on the mean and standard deviation for each measurement.
library(plyr)
library(dplyr)
mean_and_std_features <- grep("-(mean|std)\\(\\)", FeatureDataNames[, 2])
subsetData <- subset(Data, select = mean_and_std_features)
##-----------------------------------------------------------
## join all the data together
TempData <- cbind(subsetData, ActivityData)
AllData <- cbind(TempData, SubjectData)
dim(AllData)
class(AllData)
head(AllData)
str(AllData)
summary(AllData)
##------------------------------------------------------
##3.Uses descriptive activity names to name the activities in the data set
ActivityNames <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = "")
ActivityLabels <- ActivityNames[,2]
AllData$Activity <- factor(AllData$Activity, labels = ActivityLabels)
##-----------------------------------------------------------
##4.Appropriately labels the data set with descriptive variable names.
##gsub perform replacement of the first and all matches respectively
names(AllData) <- gsub("^t", "time", names(AllData))
names(AllData) <- gsub("^f", "frequency", names(AllData))
names(AllData) <- gsub("Acc","Accelerometer", names(AllData))
names(AllData) <- gsub("Gyro", "Gyroscope", names(AllData))
names(AllData) <- gsub("AccJerk","LinearAccerleration",names(AllData))
names(AllData) <- gsub("GyroJerk","AngularVelocity",names(AllData))
names(AllData) <- gsub("Mag","Magnitude",names(AllData))
##--------------------------------------------------------------------
##5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
TidyData <- ddply(AllData, .(Subject, Activity), function(x) colMeans(x[, 1:66]))
##-------------------------------------------------------------------
write.table(TidyData, file = "./data/TidyData.txt", row.name=FALSE)
