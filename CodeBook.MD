
## This file contains a description of the variables, the data and the transformations to create a tidy data set for the project.

## Data description from assignment files:
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Variables:
Sub_id
* An id indicating the subject/person: 1-30

Activity
* Indicating the activity of the subject for the given experiment/measurement

tBodyAcc-mean()-X
* Body acceleration, time domain, x direction, mean of measurements for given subject and activity

tBodyAcc-mean()-Y	
* Body acceleration, time domain, y direction, mean of measurements for given subject and activity

tBodyAcc-mean()-Z	
* Body acceleration, time domain, z direction, mean of measurements for given subject and activity

tBodyAcc-std()-X
* Body acceleration, time domain, x direction, standard deviation of measurements for given subject and activity

tBodyAcc-std()-Y
* Body acceleration, time domain, y direction, standard deviation of measurements for given subject and activity

tBodyAcc-std()-Z
* Body acceleration, time domain, z direction, standard deviation of measurements for given subject and activity

tGravityAcc-mean()-X
* Gravity acceleration, time domain, x direction, mean of measurements for given subject and activity

tGravityAcc-mean()-Y	
* Gravity acceleration, time domain, y direction, mean of measurements for given subject and activity

tGravityAcc-mean()-Z	
* Gravity acceleration, time domain, z direction, mean of measurements for given subject and activity

tGravityAcc-std()-X
* Gravity acceleration, time domain, x direction, standard deviation of measurements for given subject and activity

tGravityAcc-std()-Y	
* Gravity acceleration, time domain, y direction, standard deviation of measurements for given subject and activity

tGravityAcc-std()-Z	
* Gravity acceleration, time domain, z direction, standard deviation of measurements for given subject and activity

tBodyAccJerk-mean()-X
* Body acceleration jerk, time domain, x direction, mean of measurements for given subject and activity

tBodyAccJerk-mean()-Y
* Body acceleration jerk, time domain, y direction, mean of measurements for given subject and activity

tBodyAccJerk-mean()-Z
* Body acceleration jerk, time domain, z direction, mean of measurements for given subject and activity

tBodyAccJerk-std()-X
* Body acceleration jerk, time domain, x direction, standard deviation of measurements for given subject and activity

tBodyAccJerk-std()-Y
*	Body acceleration jerk, time domain, y direction, standard deviation of measurements for given subject and activity

tBodyAccJerk-std()-Z
*	Body acceleration jerk, time domain, z direction, standard deviation of measurements for given subject and activity

tBodyGyro-mean()-X
*	Angular velocity, time domain, x direction, mean of measurements for given subject and activity

tBodyGyro-mean()-Y
*	Angular velocity, time domain, y direction, mean of measurements for given subject and activity

tBodyGyro-mean()-Z
* Angular velocity, time domain, z direction, mean of measurements for given subject and activity

tBodyGyro-std()-X
* Angular velocity, time domain, x direction, standard deviation of measurements for given subject and activity

tBodyGyro-std()-Y
*	Angular velocity, time domain, y direction, standard deviation of measurements for given subject and activity

tBodyGyro-std()-Z
*	Angular velocity, time domain, z direction, standard deviation of measurements for given subject and activity

tBodyGyroJerk-mean()-X
*	Angular velocity, time domain, x direction, mean of measurements for given subject and activity. Derived in time.

tBodyGyroJerk-mean()-Y
*	Angular velocity, time domain, y direction, mean of measurements for given subject and activity. Derived in time.

tBodyGyroJerk-mean()-Z
*	Angular velocity, time domain, z direction, mean of measurements for given subject and activity. Derived in time.

tBodyGyroJerk-std()-X
*	Angular velocity, time domain, x direction, standard deviation of measurements for given subject and activity. Derived in time.

tBodyGyroJerk-std()-Y
*	Angular velocity, time domain, y direction, standard deviation of measurements for given subject and activity. Derived in time.

tBodyGyroJerk-std()-Z
*	Angular velocity, time domain, z direction, standard deviation of measurements for given subject and activity. Derived in time.

tBodyAccMag-mean()
*	Body acceleration, time domain, mean of measurements for given subject and activity. Magnitude calculated using Euclidian Norm.

tBodyAccMag-std()
*	Body acceleration, time domain, standard deviation of measurements for given subject and activity. Magnitude calculated using Euclidian Norm.

tGravityAccMag-mean()
*	Body acceleration, time domain, mean of measurements for given subject and activity. Magnitude calculated using Euclidian Norm.

tGravityAccMag-std()
*	Body acceleration, time domain, standard deviation of measurements for given subject and activity. Magnitude calculated using Euclidian Norm.

tBodyAccJerkMag-mean()
*	Body acceleration, time domain, mean of measurements for given subject and activity. Magnitude calculated using Euclidian Norm.

tBodyAccJerkMag-std()
*	Body acceleration, time domain, standard deviation of measurements for given subject and activity. Magnitude calculated using Euclidian Norm.

tBodyGyroMag-mean()
*	Angular Velocity, time domain, mean of measurements for given subject and activity. Magnitude calculated using Euclidian Norm.

tBodyGyroMag-std()
*	Angular Velocity, time domain, standard deviation of measurements for given subject and activity. Magnitude calculated using Euclidian Norm.

tBodyGyroJerkMag-mean()
*	Angular Velocity, time domain, mean of measurements for given subject and activity. Magnitude calculated using Euclidian Norm.

tBodyGyroJerkMag-std()
•	Angular Velocity, time domain, standard deviation of measurements for given subject and activity. Magnitude calculated using Euclidian Norm.

fBodyAcc-mean()-X
•	Body acceleration, frequency domain, x direction, mean of measurements for given subject and activity

fBodyAcc-mean()-Y
•	Body acceleration, frequency domain, y direction, mean of measurements for given subject and activity

fBodyAcc-mean()-Z
•	Body acceleration, frequency domain, z direction, mean of measurements for given subject and activity

fBodyAcc-std()-X
•	Body acceleration, frequency domain, x direction, standard deviation of measurements for given subject and activity

fBodyAcc-std()-Y
•	Body acceleration, frequency domain, y direction, standard deviation of measurements for given subject and activity

fBodyAcc-std()-Z
•	Body acceleration, frequency domain, z direction, standard deviation  of measurements for given subject and activity

fBodyAccJerk-mean()-X
•	Body acceleration, frequency domain, x direction, mean of measurements for given subject and activity. Measured in time.

fBodyAccJerk-mean()-Y
•	Body acceleration, frequency domain, y direction, mean of measurements for given subject and activity. Measured in time.

fBodyAccJerk-mean()-Z
•	Body acceleration, frequency domain, z direction, mean of measurements for given subject and activity. Measured in time.

fBodyAccJerk-std()-X
•	Body acceleration, frequency domain, x direction, standard deviation of measurements for given subject and activity. Measured in time.

fBodyAccJerk-std()-Y
•	Body acceleration, frequency domain, y direction, standard deviation of measurements for given subject and activity. Measured in time.

fBodyAccJerk-std()-Z
•	Body acceleration, frequency domain, z direction, standard deviation of measurements for given subject and activity. Measured in time.

fBodyGyro-mean()-X
•	Angular velocity, frequency domain, x direction, mean of measurements for given subject and activity

fBodyGyro-mean()-Y
•	Angular velocity, frequency domain, y direction, mean of measurements for given subject and activity

fBodyGyro-mean()-Z
•	Angular velocity, frequency domain, z direction, mean of measurements for given subject and activity

fBodyGyro-std()-X
•	Angular velocity, frequency domain, x direction, standard deviation of measurements for given subject and activity

fBodyGyro-std()-Y
•	Angular velocity, frequency domain, y direction, standard deviation of measurements for given subject and activity

fBodyGyro-std()-Z
•	Angular velocity, frequency domain, z direction, standard deviation of measurements for given subject and activity

fBodyAccMag-mean()
•	Body acceleration, frequency domain, mean of measurements for given subject and activity. Magnitude calculated using Euclidian Norm.

fBodyAccMag-std()
•	Body acceleration, frequency domain, standard deviation of measurements for given subject and activity. Magnitude calculated using Euclidian Norm.

fBodyBodyAccJerkMag-mean()

fBodyBodyAccJerkMag-std()

fBodyBodyGyroMag-mean()

fBodyBodyGyroMag-std()

fBodyBodyGyroJerkMag-mean()

fBodyBodyGyroJerkMag-std()
