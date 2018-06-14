# Code book for summarised_tidy_data.txt

## Data used

The original data has been imported from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

Additional vectors were obtained by averaging the signals in a signal window sample. These are used on the angle() variable. The additional vectors retained in the summary tidy data have been described below.

Each variable was recorded for each subject performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

# Work performed

The following work has been performed on the data described above:

* The data has been downloaded and unzipped to the "data" directory.
* The activity labels (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) & variable labels have been imported as dataframes with two columns (the first as a numeric identifier and the second as the label).
* The training and test observations have been imported along with the subject and activity identifiers have been imported and combined into one table for all of the observations, one table for all of the subject identifiers and one table for all of the activity identifiers.
* The combined observations table has been filtered to leave only variables recording the mean or standard deviation of a measurement. This includes where the only variable 
* Descriptive labels were added to the combined observations table.
* The activity identifiers were replaced by the corresponding activity (i.e. WALKING_UPSTAIRS rather than 2).
* The subject identifier column was labelled as "Subject".
* The tables (the observations, activity identifiers and subject identifiers) were combined into a table.
* The resulting table was grouped by activity then subject.
* The resulting grouped table was then summarised to show the average of each variable for each activity and each subject.

The results of this has been saved as "summarised_tidy_data.txt".

# Variables

Column 1:   "activity"
			This is a factored variable showing the observation was taken during one of six activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
Column 2: 	"Subject"
			This is an integer between 1 and 30 identifying the subject of the observation.
			
Columns 3 to 81: These are the average of each of the following variables from the source data:

3: tBodyAcc-mean()-X

4: tBodyAcc-mean()-Y

5: tBodyAcc-mean()-Z

6: tBodyAcc-std()-X

7: tBodyAcc-std()-Y

8: tBodyAcc-std()-Z

9: tGravityAcc-mean()-X

10: tGravityAcc-mean()-Y

11: tGravityAcc-mean()-Z

12: tGravityAcc-std()-X

13: tGravityAcc-std()-Y

14: tGravityAcc-std()-Z

15: tBodyAccJerk-mean()-X

16: tBodyAccJerk-mean()-Y

17: tBodyAccJerk-mean()-Z

18: tBodyAccJerk-std()-X

19: tBodyAccJerk-std()-Y

20: tBodyAccJerk-std()-Z

21: tBodyGyro-mean()-X

22: tBodyGyro-mean()-Y

23: tBodyGyro-mean()-Z

24: tBodyGyro-std()-X

25: tBodyGyro-std()-Y

26: tBodyGyro-std()-Z

27: tBodyGyroJerk-mean()-X

28: tBodyGyroJerk-mean()-Y

29: tBodyGyroJerk-mean()-Z

30: tBodyGyroJerk-std()-X

31: tBodyGyroJerk-std()-Y

32: tBodyGyroJerk-std()-Z

33: tBodyAccMag-mean()

34: tBodyAccMag-std()

35: tGravityAccMag-mean()

36: tGravityAccMag-std()

37: tBodyAccJerkMag-mean()

38: tBodyAccJerkMag-std()

39: tBodyGyroMag-mean()

40: tBodyGyroMag-std()

41: tBodyGyroJerkMag-mean()

42: tBodyGyroJerkMag-std()

43: fBodyAcc-mean()-X

44: fBodyAcc-mean()-Y

45: fBodyAcc-mean()-Z

46: fBodyAcc-std()-X

47: fBodyAcc-std()-Y

48: fBodyAcc-std()-Z

49: fBodyAcc-meanFreq()-X

50: fBodyAcc-meanFreq()-Y

51: fBodyAcc-meanFreq()-Z

52: fBodyAccJerk-mean()-X

53: fBodyAccJerk-mean()-Y

54: fBodyAccJerk-mean()-Z

55: fBodyAccJerk-std()-X

56: fBodyAccJerk-std()-Y

57: fBodyAccJerk-std()-Z

58: fBodyAccJerk-meanFreq()-X

59: fBodyAccJerk-meanFreq()-Y

60: fBodyAccJerk-meanFreq()-Z

61: fBodyGyro-mean()-X

62: fBodyGyro-mean()-Y

63: fBodyGyro-mean()-Z

64: fBodyGyro-std()-X

65: fBodyGyro-std()-Y

66: fBodyGyro-std()-Z

67: fBodyGyro-meanFreq()-X

68: fBodyGyro-meanFreq()-Y

69: fBodyGyro-meanFreq()-Z

70: fBodyAccMag-mean()

71: fBodyAccMag-std()

72: fBodyAccMag-meanFreq()

73: fBodyBodyAccJerkMag-mean()

74: fBodyBodyAccJerkMag-std()

75: fBodyBodyAccJerkMag-meanFreq()

76: fBodyBodyGyroMag-mean()

77: fBodyBodyGyroMag-std()

78: fBodyBodyGyroMag-meanFreq()

79: fBodyBodyGyroJerkMag-mean()

80: fBodyBodyGyroJerkMag-std()

81: fBodyBodyGyroJerkMag-meanFreq()

For information on these variables please refer to the original dataset and article.
