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
1) MainData - The measurement results
2) Subject - the ID of the test subject
3) Activity - the Type of activity performed 

##Variables

1) timeBodyAccelerometer-mean()-X
2) timeBodyAccelerometer-mean()-Y                    
3) timeBodyAccelerometer-mean()-Z
4) timeBodyAccelerometer-std()-X                     
5) timeBodyAccelerometer-std()-Y
6) timeBodyAccelerometer-std()-Z                     
7) timeGravityAccelerometer-mean()-X
8) timeGravityAccelerometer-mean()-Y                 
9) timeGravityAccelerometer-mean()-Z
10) timeGravityAccelerometer-std()-X                  
11) timeGravityAccelerometer-std()-Y
12) timeGravityAccelerometer-std()-Z                  
13) timeBodyAccelerometerJerk-mean()-X
14) timeBodyAccelerometerJerk-mean()-Y                
15) timeBodyAccelerometerJerk-mean()-Z
16) timeBodyAccelerometerJerk-std()-X                 
17) timeBodyAccelerometerJerk-std()-Y
18) timeBodyAccelerometerJerk-std()-Z                 
19) timeBodyGyroscope-mean()-x
20) timeBodyGyroscope-mean()-Y                        
21) timeBodyGyroscope-mean()-Z
22) timeBodyGyroscope-std()-X                         
23) timeBodyGyroscope-std()-Y
24) timeBodyGyroscope-std()-Z                         
25) timeBodyAngularVelocity-mean()-X
26) timeBodyAngularVelocity-mean()-Y                  
27) timeBodyAngularVelocity-mean()-Z
28) timeBodyAngularVelocity-std()-X                   
29) timeBodyAngularVelocity-std()-Y
30) timeBodyAngularVelocity-std()-Z                   
31) timeBodyAccelerometerMagnitude-mean()
32) timeBodyAccelerometerMagnitude-std()              
33) timeGravityAccelerometerMagnitude-mean()
34) timeGravityAccelerometerMagnitude-std()           
35) timeBodyAccelerometerJerkMagnitude-mean()
36) timeBodyAccelerometerJerkMagnitude-std()          
37) timeBodyGyroscopeMagnitude-mean()
38) timeBodyGyroscopeMagnitude-std()                  
39) timeBodyAngularVelocityMagnitude-mean()
40) timeBodyAngularVelocityMagnitude-std()            
41) frequencyBodyAccelerometer-mean()-X
42) frequencyBodyAccelerometer-mean()-Y               
43) frequencyBodyAccelerometer-mean()-Z
44) frequencyBodyAccelerometer-std()-X                
45) frequencyBodyAccelerometer-std()-Y
46) frequencyBodyAccelerometer-std()-Z                
47) frequencyBodyAccelerometerJerk-mean()-X
48) frequencyBodyAccelerometerJerk-mean()-Y           
49) frequencyBodyAccelerometerJerk-mean()-Z
50) frequencyBodyAccelerometerJerk-std()-X            
51) frequencyBodyAccelerometerJerk-std()-Y
52) frequencyBodyAccelerometerJerk-std()-Z            
53) frequencyBodyGyroscope-mean()-X
54) frequencyBodyGyroscope-mean()-Y                   
55) frequencyBodyGyroscope-mean()-Z
56) frequencyBodyGyroscope-std()-X                    
57) frequencyBodyGyroscope-std()-Y
58) frequencyBodyGyroscope-std()-Z                    
59) frequencyBodyAccelerometerMagnitude-mean()
60) frequencyBodyAccelerometerMagnitude-std()        
61) frequencyBodyBodyAccelerometerJerkMagnitude-mean()
62) frequencyBodyBodyAccelerometerJerkMagnitude-std() 
63) frequencyBodyBodyGyroscopeMagnitude-mean()
64) frequencyBodyBodyGyroscopeMagnitude-std()         
65) frequencyBodyBodyAngularVelocityMagnitude-mean()
66) frequencyBodyBodyAngularVelocityMagnitude-std()

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
