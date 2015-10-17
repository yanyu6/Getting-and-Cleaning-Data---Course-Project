#Getting and Cleaning Data---Course Project--Code Book
Yan Yu

##Overview
This code book mainly describe the variables in the final course project of the getting and cleaning data course.

##Original Data Source
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Experimental Design and Data Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:
1) Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
2) Triaxial Angular velocity from the gyroscope. 
3) A 561-feature vector with time and frequency domain variables. 
4) Its activity label. 
5An identifier of the subject who carried out the experiment.

## Data Group Identifiers
*MainData - The measurement results
*Subject - the ID of the test subject
*Activity - the Type of activity performed 

##Variables

timeBodyAccelerometer-mean()-X
timeBodyAccelerometer-mean()-Y                    
timeBodyAccelerometer-mean()-Z
timeBodyAccelerometer-std()-X                     
timeBodyAccelerometer-std()-Y
timeBodyAccelerometer-std()-Z                     
timeGravityAccelerometer-mean()-X
timeGravityAccelerometer-mean()-Y                 
timeGravityAccelerometer-mean()-Z
timeGravityAccelerometer-std()-X                  
timeGravityAccelerometer-std()-Y
timeGravityAccelerometer-std()-Z                  
timeBodyAccelerometerJerk-mean()-X
timeBodyAccelerometerJerk-mean()-Y                
timeBodyAccelerometerJerk-mean()-Z
timeBodyAccelerometerJerk-std()-X                 
timeBodyAccelerometerJerk-std()-Y
timeBodyAccelerometerJerk-std()-Z                 
timeBodyGyroscope-mean()-x
timeBodyGyroscope-mean()-Y                        
timeBodyGyroscope-mean()-Z
timeBodyGyroscope-std()-X                         
timeBodyGyroscope-std()-Y
timeBodyGyroscope-std()-Z                         
timeBodyAngularVelocity-mean()-X
timeBodyAngularVelocity-mean()-Y                  
timeBodyAngularVelocity-mean()-Z
timeBodyAngularVelocity-std()-X                   
timeBodyAngularVelocity-std()-Y
timeBodyAngularVelocity-std()-Z                   
timeBodyAccelerometerMagnitude-mean()
timeBodyAccelerometerMagnitude-std()              
timeGravityAccelerometerMagnitude-mean()
timeGravityAccelerometerMagnitude-std()           
timeBodyAccelerometerJerkMagnitude-mean()
timeBodyAccelerometerJerkMagnitude-std()          
timeBodyGyroscopeMagnitude-mean()
timeBodyGyroscopeMagnitude-std()                  
timeBodyAngularVelocityMagnitude-mean()
timeBodyAngularVelocityMagnitude-std()            
frequencyBodyAccelerometer-mean()-X
frequencyBodyAccelerometer-mean()-Y               
frequencyBodyAccelerometer-mean()-Z
frequencyBodyAccelerometer-std()-X                
frequencyBodyAccelerometer-std()-Y
frequencyBodyAccelerometer-std()-Z                
frequencyBodyAccelerometerJerk-mean()-X
frequencyBodyAccelerometerJerk-mean()-Y           
frequencyBodyAccelerometerJerk-mean()-Z
frequencyBodyAccelerometerJerk-std()-X            
frequencyBodyAccelerometerJerk-std()-Y
frequencyBodyAccelerometerJerk-std()-Z            
frequencyBodyGyroscope-mean()-X
frequencyBodyGyroscope-mean()-Y                   
frequencyBodyGyroscope-mean()-Z
frequencyBodyGyroscope-std()-X                    
frequencyBodyGyroscope-std()-Y
frequencyBodyGyroscope-std()-Z                    
frequencyBodyAccelerometerMagnitude-mean()
frequencyBodyAccelerometerMagnitude-std()        
frequencyBodyBodyAccelerometerJerkMagnitude-mean()
frequencyBodyBodyAccelerometerJerkMagnitude-std() 
frequencyBodyBodyGyroscopeMagnitude-mean()
frequencyBodyBodyGyroscopeMagnitude-std()         
frequencyBodyBodyAngularVelocityMagnitude-mean()
frequencyBodyBodyAngularVelocityMagnitude-std()

##Subject ID
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30

##Activity Label
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING