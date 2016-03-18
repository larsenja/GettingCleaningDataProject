# CodeBook

## Source of data:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

## Data description (description from the authors specified above):
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Feature Selection 
=================
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).
 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Variables are normalized and bounded within [-1,1].

## Variable descriptions

1. subject
  *	Subject identifier, range: 1-30

2. activity
  *	Activity type performed by subjects. Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

3. tBodyAcc-mean()-X 
  * Body acceleration signal derived in the time domain, mean, X-direction. Range: [-1,1]

4. tBodyAcc-mean()-Y
  * Body acceleration signal derived in the time domain, mean, Z-direction. Range: [-1,1]

5. tBodyAcc-mean()-Z 
  * Body acceleration signal derived in the time domain, mean, Y-direction. Range: [-1,1]

6. tBodyAcc-std()-X 
  * Body acceleration signal derived in the time domain, standard deviation, X-direction. Range: [-1,1]

7. tBodyAcc-std()-Y
  * Body acceleration signal derived in the time domain, standard deviation, Z-direction. Range: [-1,1]

8. tBodyAcc-std()-Z 
  * Body acceleration signal derived in the time domain, standard deviation, Y-direction. Range: [-1,1]

9. tGravityAcc-mean()-X
  * Gravity acceleration signal derived in the time domain, mean, X-direction. Range: [-1,1]

10. tGravityAcc-mean()-Y
  * Gravity acceleration signal derived in the time domain, mean, Y-direction. Range: [-1,1]

11. tGravityAcc-mean()-Z
  * Gravity acceleration signal derived in the time domain, mean, Z-direction. Range: [-1,1]

12. tGravityAcc-std()-X
  * Gravity acceleration signal derived in the time domain, standard deviation, X-direction. Range: [-1,1]

13. tGravityAcc-std()-Y
  * Gravity acceleration signal derived in the time domain, standard deviation, Y-direction. Range: [-1,1]
 
14. tGravityAcc-std()-Z
  * Gravity acceleration signal derived in the time domain, standard deviation, Z-direction. Range: [-1,1]

15. tBodyAccJerk-mean()-X 
  * Body acceleration signal derived in the time domain, body linear acceleration (Jerk) signal, mean, X-direction. Range: [-1,1]

16. tBodyAccJerk-mean()-Y 
  * Body acceleration signal derived in the time domain, body linear acceleration (Jerk) signal, mean, Y-direction. Range: [-1,1]

17. tBodyAccJerk-mean()-Z 
  * Body acceleration signal derived in the time domain, body linear acceleration (Jerk) signal, mean, Z-direction. Range: [-1,1]

18. tBodyAccJerk-std()-X 
  * Body acceleration signal derived in the time domain, body linear acceleration (Jerk) signal, standard deviation, X-direction. Range: [-1,1]

19. tBodyAccJerk-std()-Y 
  * Body acceleration signal derived in the time domain, body linear acceleration (Jerk) signal, standard deviation, Y-direction. Range: [-1,1]

20. tBodyAccJerk-std()-Z 
  * Body acceleration signal derived in the time domain, body linear acceleration (Jerk) signal, standard deviation, Z-direction. Range: [-1,1]

21. tBodyGyro-mean()-X 
  * Gyroscope signal derived in the time domain, mean, X-direction. Range: [-1,1]

22. tBodyGyro-mean()-Y 
  * Gyroscope signal derived in the time domain, mean, Y-direction. Range: [-1,1]

23. tBodyGyro-mean()-Z 
  * Gyroscope signal derived in the time domain, mean, Z-direction. Range: [-1,1]

24. tBodyGyro-std()-X 
  * Gyroscope signal derived in the time domain, standard deviation, X-direction. Range: [-1,1]

25. tBodyGyro-std()-Y 
  * Gyroscope signal derived in the time domain, standard deviation, Y-direction. Range: [-1,1]

26. tBodyGyro-std()-Z 
  * Gyroscope signal derived in the time domain, standard deviation, Z-direction. Range: [-1,1]

27. tBodyGyroJerk-mean()-X 
  * Gyroscope signal derived in the time domain, angular velocity (Jerk) signal, mean, X-direction. Range: [-1,1]

28. tBodyGyroJerk-mean()-Y
  * Gyroscope signal derived in the time domain, angular velocity (Jerk) signal, mean, Y-direction. Range: [-1,1]

29. tBodyGyroJerk-mean()-Z 
  * Gyroscope signal derived in the time domain, angular velocity (Jerk) signal, mean, Z-direction. Range: [-1,1]

30. tBodyGyroJerk-std()-X 
  * Gyroscope signal derived in the time domain, angular velocity (Jerk) signal, standard deviation, X-direction. Range: [-1,1]

31. tBodyGyroJerk-std()-Y
  * Gyroscope signal derived in the time domain, angular velocity (Jerk) signal, standard deviation, Y-direction. Range: [-1,1]
 
32. tBodyGyroJerk-std()-Z 
  * Gyroscope signal derived in the time domain, angular velocity (Jerk) signal, standard deviation, Z-direction. Range: [-1,1]

33. tBodyAccMag-mean() 
  * Body acceleration signal derived in the time domain, magnitude of three-dimensional signal using Euclidian norm, mean. Range: [-1,1]

34. tBodyAccMag-std() 
  * Body acceleration signal derived in the time domain, magnitude of three-dimensional signal using Euclidian norm, standard deviation. Range: [-1,1]

35. tGravityAccMag-mean() 
  * Gravity acceleration signal derived in the time domain, magnitude of three-dimensional signal using Euclidian norm, mean. Range: [-1,1]

36. tGravityAccMag-std() 
  * Gravity acceleration signal derived in the time domain, magnitude of three-dimensional signal using Euclidian norm, standard deviation. Range: [-1,1]

37. tBodyAccJerkMag-mean() 
  * Body acceleration signal derived in the time domain, body linear acceleration (Jerk) signal, magnitude of three-dimensional signal using Euclidian norm, mean. Range: [-1,1]

38. tBodyAccJerkMag-std() 
  * Body acceleration signal derived in the time domain, body linear acceleration (Jerk) signal, magnitude of three-dimensional signal using Euclidian norm, standard deviation. Range: [-1,1]

39. tBodyGyroMag-mean() 
  * Gyroscope signal derived in the time domain, magnitude of three-dimensional signal using Euclidian norm, mean. Range: [-1,1]

40. tBodyGyroMag-std() 
  * Gyroscope signal derived in the time domain, magnitude of three-dimensional signal using Euclidian norm, standard deviation. Range: [-1,1]

41. tBodyGyroJerkMag-mean() 
  * Gyroscope signal derived in the time domain, angular velocity (Jerk) signal, magnitude of three-dimensional signal using Euclidian norm, mean. Range: [-1,1]

42. tBodyGyroJerkMag-std() 
  * Gyroscope signal derived in the time domain, angular velocity (Jerk) signal, magnitude of three-dimensional signal using Euclidian norm, standard deviation. Range: [-1,1]

43. fBodyAcc-mean()-X
  * Body acceleration signal derived in the frequency domain, mean, X-direction. Range: [-1,1]

44. fBodyAcc-mean()-Y
  * Body acceleration signal derived in the frequency domain, mean, Y-direction. Range: [-1,1]

45. fBodyAcc-mean()-Z
  * Body acceleration signal derived in the frequency domain, mean, Z-direction. Range: [-1,1]

46. fBodyAcc-std()-X
  * Body acceleration signal derived in the frequency domain, standard deviation, X-direction. Range: [-1,1]

47. fBodyAcc-std()-Y
  * Body acceleration signal derived in the frequency domain, standard deviation, Y-direction. Range: [-1,1]

48. fBodyAcc-std()-Z
  * Body acceleration signal derived in the frequency domain, standard deviation, Z-direction. Range: [-1,1]

49. fBodyAccJerk-mean()-X 
  * Body acceleration signal derived in the frequency domain, body linear acceleration (Jerk) signal, mean, X-direction. Range: [-1,1]

50. fBodyAccJerk-mean()-Y 
  * Body acceleration signal derived in the frequency domain, body linear acceleration (Jerk) signal, mean, Y-direction. Range: [-1,1]

51. fBodyAccJerk-mean()-Z 
  * Body acceleration signal derived in the frequency domain, body linear acceleration (Jerk) signal, mean, Z-direction. Range: [-1,1]

52. fBodyAccJerk-std()-X 
  * Body acceleration signal derived in the frequency domain, body linear acceleration (Jerk) signal, standard deviation, X-direction. Range: [-1,1]

53. fBodyAccJerk-std()-Y 
  * Body acceleration signal derived in the frequency domain, body linear acceleration (Jerk) signal, standard deviation, Y-direction. Range: [-1,1]

54. fBodyAccJerk-std()-Z 
  * Body acceleration signal derived in the frequency domain, body linear acceleration (Jerk) signal, standard deviation, Z-direction. Range: [-1,1]

55. fBodyGyro-mean()-X 
  * Gyroscope signal derived in the frequency domain, mean, X-direction. Range: [-1,1]

56. fBodyGyro-mean()-Y 
  * Gyroscope signal derived in the frequency domain, mean, Y-direction. Range: [-1,1]

57. fBodyGyro-mean()-Z 
  * Gyroscope signal derived in the frequency domain, mean, Z-direction. Range: [-1,1]

58. fBodyGyro-std()-X 
  * Gyroscope signal derived in the frequency domain, standard deviation, X-direction. Range: [-1,1]

59. fBodyGyro-std()-Y 
  * Gyroscope signal derived in the frequency domain, standard deviation, Y-direction. Range: [-1,1]

60. fBodyGyro-std()-Z 
  * Gyroscope signal derived in the frequency domain, standard deviation, Z-direction. Range: [-1,1]

61. fBodyAccMag-mean() 
  * Body acceleration signal derived in the frequency domain, magnitude of three-dimensional signal using Euclidian norm, mean. Range: [-1,1]

62. fBodyAccMag-std() 
  * Body acceleration signal derived in the frequency domain, magnitude of three-dimensional signal using Euclidian norm, standard deviation. Range: [-1,1]

63. fBodyAccJerkMag-mean() 
  * Body acceleration signal derived in the frequency domain, body linear acceleration (Jerk) signal, magnitude of three-dimensional signal using Euclidian norm, mean. Range: [-1,1]

64. fBodyAccJerkMag-std() 
  * Body acceleration signal derived in the frequency domain, body linear acceleration (Jerk) signal, magnitude of three-dimensional signal using Euclidian norm, standard deviation. Range: [-1,1]

65. fBodyGyroMag-mean() 
  * Gyroscope signal derived in the frequency domain, magnitude of three-dimensional signal using Euclidian norm, mean. Range: [-1,1]

66. fBodyGyroMag-std() 
  * Gyroscope signal derived in the frequency domain, magnitude of three-dimensional signal using Euclidian norm, standard deviation. Range: [-1,1]

67. fBodyGyroJerkMag-mean() 
  * Gyroscope signal derived in the frequency domain, angular velocity (Jerk) signal, magnitude of three-dimensional signal using Euclidian norm, mean. Range: [-1,1]

68. fBodyGyroJerkMag-std() 
  * Gyroscope signal derived in the frequency domain, angular velocity (Jerk) signal, magnitude of three-dimensional signal using Euclidian norm, standard deviation. Range: [-1,1]


