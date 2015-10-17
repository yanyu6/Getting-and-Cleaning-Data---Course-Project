# Getting-and-Cleaning-Data---Course-Project
===============================================================
In this course project, we need to show our abilities to collect, work with, and clean a data set.

The link of the original data is here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

We first need to prepare a tidy data set by running our own run_analysis script.
There are five requirements we need to meet step by step.
1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement. 
3) Uses descriptive activity names to name the activities in the data set.
4) Appropriately labels the data set with descriptive variable names. 
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

After we created our R script and obtained a tidy data set, we need to 
 1) upload the txt file of our tidy data set, 
 2) create a Github repository with your script for performing the analysis,
 and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
We also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

==================================================================
Now we will explain how all of my scripts work to get a tidy data set.
First, we need to set working directory, download the original data file, and unzip the data file.
Then, we need to analyze the data structure by reading all the info files including readme, features_info, features, and activity_labels. We can also open the data files to collect some info about the data. Finally, we concluded there are three groups of data, which are about measurement results, subject, and activity respectively.  Seventy percent of the data is in the train folder. Thirty percent of the data is in the test folder.

Next, we need to read all the data into different data frames by using read.table.

After we check the dimensions of the data frames, we realized that the data from the train folder or the test folder has the same number of columns and different number of rows. Therefore, we decided to use rbind to combine the data from two folders together.
 
Now, we are having three overall data frames, which are for measurement results, subject, and activity respectively. Then, we use the file of features.txt to define the column names of measurement results.

Next, we extract only the measurements on the mean and standard deviation for each measurement by using grep and subset. 

Finally, we use cbind to combine three groups of data into one overall data frame. So far, we have accomplished the first and second requirements.

For the third requirement, we use factor command to name the activities with descriptive names from the activity_label.txt file.
For the fourth requirement, we use gsub command to substitute the simplify strings or letters with descriptive names.
In order to create a second independent tidy data set with the average of each variable for each activity and each subject, we picked the ddply command to analyze the data set and defined a colMean function.

Finally, we write the tidy data set to a TidyData file by using the write.table with row.name set to false.
