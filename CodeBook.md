# Code Book for the "tidydata.txt" datatable

## Table of Contents

1. Variable Description 
- Variable description for original data set
- Variable description of "tidydata.txt" datatable

 
2. About the raw data
- Description
- Citation


## 1. Variable Description 
### Variable description for original data set

The following is copied from the file "features_info.txt" file present in the zipfile containing all raw data. 
The zipfile can be downloaded here: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

The following table summarises each variable of the feature vector for each pattern, whereby '-XYZ' is used to denot the 3-axail signals in the X, Y, and Z directions: 

| Variable	  | Description |
| ---------- | ----------- | 
| tBodyAcc-X | Acceleration of body in X direction | 
| tBodyAcc-Y | Acceleration of body in Y direction | 
| tBodyAcc-Z | Acceleration of body in Z direction | 
| tGravityAcc-X | Acceleration of gravity in X direction|
| tGravityAcc-Y | Acceleration of gravity in Y direction|
| tGravityAcc-Z | Acceleration of gravity in Z direction|
| tBodyAccJerk-X | Body acceleration jerk for X direction |
| tBodyAccJerk-Y | Body acceleration jerk for Y direction |
| tBodyAccJerk-Z | Body acceleration jerk for Z direction  |
| tBodyGyro-X | Body gyroscope measurement for X direction |
| tBodyGyro-Y | Body gyroscope measurement for Y direction |
| tBodyGyro-Z | Body gyroscope measurement for Z direction |
| tBodyGyroJerk-X | Jerk signal of body for X direction |
| tBodyGyroJerk-Y | Jerk signal of body for Y direction|
| tBodyGyroJerk-Z | Jerk signal of body for Z direction |
| tBodyAccMag | Magnitude of body acceleration |
| tGravityAccMag | Magnitutde of gravity acceleration |
| tBodyAccJerkMag |Magnitude of body acceleration jerk|
| tBodyGyroMag | Magnitude of body gyroscope measurement|
| tBodyGyroJerkMag | Magnitude of body gyroscope jerk measurement |
| fBodyAcc-X | Frequency of body acceleration for X direction |
| fBodyAcc-Y | Frequency of body acceleration for Y direction|
| fBodyAcc-Z | Frequency of body acceleration for Z direction|
| fBodyAccJerk-X | Frequency of body acceleration jerk for X direction |
| fBodyAccJerk-Y | Frequency of body acceleration jerk for Y direction |
| fBodyAccJerk-Z | Frequency of body acceleration jerk for Z direction |
| fBodyGyro-X | Frequency of body gyroscope measurement for X direction|
| fBodyGyro-Y | Frequency of body gyroscope measurement for Y direction|
| fBodyGyro-Z | Frequency of body gyroscope measurement for Z direction|
| fBodyAccMag | Frequency of body acceleration magnitude |
| fBodyAccJerkMag | Frequency of body acceleration jerk magnitude |
| fBodyGyroMag | Frequency of body magnitude gyroscope measurement |
| fBodyGyroJerkMag | Frequency of body magnitude gyroscope jerk measurement|

The following table lists the set of variables that were estimated from the signals: 

| Variable | Description |
| -------- | ------------ |
| mean() | Mean value |
| std()|  Standard deviation |
| mad() | Median absolute deviation | 
| max() | Largest value in array |
| min()|  Smallest value in array | 
| sma()|  Signal magnitude area |
| energy() | Energy measure. Sum of the squares divided by the number of values.| 
| iqr() | Interquartile range | 
| entropy() | Signal entropy |
| arCoeff()|  Autorregresion coefficients with Burg order equal to 4 |
| correlation() | correlation coefficient between two signals |
| maxInds() | index of the frequency component with largest magnitude |
| meanFreq() |  Weighted average of the frequency components to obtain a mean frequency |
| skewness() | skewness of the frequency domain signal |
| kurtosis() | kurtosis of the frequency domain signal |
| bandsEnergy() | Energy of a frequency interval within the 64 bins of the FFT of each window.|
| angle()|  Angle between to vectors.|

> Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

| Variable | 
| -------- | 
|gravityMean |
|tBodyAccMean |
|tBodyAccJerkMean |
|tBodyGyroMean |
|tBodyGyroJerkMean |

>The complete list of variables of each feature vector is available in 'features.txt'

### Variable description for "tidydata.txt" datatable

The following table provides a description for each column heading present in the "tidydata.txt" datatable

| Variable Name                 | Description       | 
| ----------------------------- | ----------------- | 
| Subject_ID                    | Subject ID Number, range 1- 30    | 
| Activity_Name                 | Activity Name; can take the terms: "Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying" |
| Average_Measurement_Value     | Mean value measured for each activity name |
| Measurement_Type              | Can take any of the 46 terms listed in the "measurement variable" table below |

The following table provides a description for each measurement variable present in the "tidydata.txt" datatable

| Variable Name                                      | Description       |  
| -------------------------------------------------  | ----------------- |  
| Time_Domain_Body_Accelerometer_Mean_X              | Mean acceleration of body in X direction |
| Time_Domain_Body_Accelerometer_Mean_Y              | Mean acceleration of body in Y direction |
| Time_Domain_Body_Accelerometer_Mean_Z              | Mean acceleration of body in Z direction |
| Time_Domain_Gravity_Accelerometer_Mean_X           | Mean acceleration of gravity in X direction | 
| Time_Domain_Gravity_Accelerometer_Mean_Y           | Mean acceleration of gravity in Y direction |
| Time_Domain_Gravity_Accelerometer_Mean_Z           | Mean acceleration of gravity in Z direction |
| Time_Domain_Body_Accelerometer_Jerk_Mean_X         | Mean body acceleration jerk for X direction |
| Time_Domain_Body_Accelerometer_Jerk_Mean_Y         | Mean body acceleration jerk for Y direction |
| Time_Domain_Body_Accelerometer_Jerk_Mean_Z         | Mean body acceleration jerk for Z direction |
| Time_Domain_Body_Gyroscope_Mean_X                  | Mean body gyroscope measurement for X direction |
| Time_Domain_Body_Gyroscope_Mean_Y                  | Mean body gyroscope measurement for Y direction |
| Time_Domain_Body_Gyroscope_Mean_Z                  | Mean body gyroscope measurement for Z direction |
| Time_Domain_Body_Gyroscope_Jerk_Mean_X             | Mean jerk signal of body for X direction |
| Time_Domain_Body_Gyroscope_Jerk_Mean_Y             | Mean jerk signal of body for Y direction |
| Time_Domain_Body_Gyroscope_Jerk_Mean_Z             | Mean jerk signal of body for Z direction |
| Time_Domain_Body_Accelerometer_Magnitude_Mean      | Mean magnitude of body acceleration |
| Time_Domain_Gravity_Accelerometer_Magnitude_Mean   | Mean magnitutde of gravity acceleration |
| Time_Domain_Body_Accelerometer_Jerk_Magnitude_Mean | Mean magnitude of body gyroscope jerk measurement |
| Time_Domain_Body_Gyroscope_Magnitude_Mean          | Mean magnitude of body gyroscope measurement |
| Time_Domain_Body_Gyroscope_Jerk_Magnitude_Mean     | Mean magnitude of body gyroscope jerk measurement |
| Frequency_Domain_Body_Accelerometer_Mean_X         | Mean frequency body acceleration for X direction |
| Frequency_Domain_Body_Accelerometer_Mean_Y         | Mean frequency body acceleration for Y direction |
| Frequency_Domain_Body_Accelerometer_Mean_Z         | Mean frequency body acceleration for Z direction |
| Frequency_Domain_Body_Accelerometer_Mean_Frequency_X | Mean frequency of body acceleration for X direction frequency |
| Frequency_Domain_Body_Accelerometer_Mean_Frequency_Y | Mean frequency of body acceleration for Y direction frequency |
| Frequency_Domain_Body_Accelerometer_Mean_Frequency_Z | Mean frequency of body acceleration for Z direction frequency |
| Frequency_Domain_Body_Accelerometer_Jerk_Mean_X    | Mean frequency of body acceleration jerk for X direction |
| Frequency_Domain_Body_Accelerometer_Jerk_Mean_Y    | Mean frequency of body acceleration jerk for Y direction |
| Frequency_Domain_Body_Accelerometer_Jerk_Mean_Z    | Mean frequency of body acceleration jerk for Z direction |
| Frequency_Domain_Body_Accelerometer_Jerk_Mean_Frequency_X | Mean frequency of body acceleration jerk for X direction frequency |
| Frequency_Domain_Body_Accelerometer_Jerk_Mean_Frequency_Y | Mean frequency of body acceleration jerk for Y direction frequency |
| Frequency_Domain_Body_Accelerometer_Jerk_Mean_Frequency_Z | Mean frequency of body acceleration jerk for Z direction frequency |
| Frequency_Domain_Body_Gyroscope_Mean_X             | Mean frequency of body gyroscope measurement for X direction |
| Frequency_Domain_Body_Gyroscope_Mean_Y             | Mean frequency of body gyroscope measurement for X direction |
| Frequency_Domain_Body_Gyroscope_Mean_Z             | Mean frequency of body gyroscope measurement for X direction |
| Frequency_Domain_Body_Gyroscope_Mean_Frequency_X   | Mean frequency of body gyroscope measurement for X direction frequency |
| Frequency_Domain_Body_Gyroscope_Mean_Frequency_Y   | Mean frequency of body gyroscope measurement for Y direction frequency |
| Frequency_Domain_Body_Gyroscope_Mean_Frequency_Z   | Mean frequency of body gyroscope measurement for Z direction frequency |
| Frequency_Domain_Body_Accelerometer_Magnitude_Mean | Mean frequency of body acceleration magnitude |
| Frequency_Domain_Body_Accelerometer_Magnitude_Mean_Frequency | Mean frequency of body acceleration magnitude frequency |
| Frequency_Domain_Body_Accelerometer_Jerk_Magnitude_Mean | Mean frequency of body acceleration jerk magnitude |
| Frequency_Domain_Body_Accelerometer_Jerk_Magnitude_Mean_Frequency | Mean frequency of body acceleration jerk magnitude mean |
| Frequency_Domain_Body_Gyroscope_Magnitude_Mean     | Mean frequency of body gyoscope magnitude |
| Frequency_Domain_Body_Gyroscope_Magnitude_Mean_Frequency | Mean frequency of body gyoscope magnitude frequency |
| Frequency_Domain_Body_Gyroscope_Jerk_Magnitude_Mean | Mean frequency of body gyoscope jerk magnitude |
| Frequency_Domain_Body_Gyroscope_Jerk_Magnitude_Mean_Frequency | Mean frequency of body gyoscope jerk magnitude frequency |


## 2. About the raw data 

### Description
A description of the "Human Activity Recognition Using Smartphones Data Set" can be found here: 
> http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The raw data can be downloaded via this link:
> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

### Citation
> Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on  Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
