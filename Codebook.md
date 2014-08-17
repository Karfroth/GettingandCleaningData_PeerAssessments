#Code book

##Raw data
The original dataset is `Human Activity Recognition Using Smartphones Data Set`. And you can find more inforemation [in this page][1]. You can download data [here][2].

I took a part of information about raw data in features_info.txt with raw data.

### Feature Selection (`"features_info.txt"` in data)
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

## Tidy data
Tidy data has the mean value and the standard deviation of all features. There are some changes of variable names. Original data has variable name like `tBodyAcc-mean()-X`, and this is changed in tidy dataset to `tBodyAcc.Mean.X`.
First letter of mean and std in variable name is changed to capital letter(Mean, Std). And letter "-" is changed to "." and also "()" is removed.

###List of variable names
 

 Tidy data               |Raw data
 ------------------------|------------------
tBodyAcc-Mean-X          |tBodyAcc-mean()-X
tBodyAcc-Mean-Y          |tBodyAcc-mean()-Y
tBodyAcc-Mean-Z          |tBodyAcc-mean()-Z
tBodyAcc-Std-X           |tBodyAcc-std()-X
tBodyAcc-Std-Y           |tBodyAcc-std()-Y
tBodyAcc-Std-Z           |tBodyAcc-std()-Z
tGravityAcc-Mean-X       |tGravityAcc-mean()-X
tGravityAcc-Mean-Y       |tGravityAcc-mean()-Y
tGravityAcc-Mean-Z       |tGravityAcc-mean()-Z
tGravityAcc-Std-X        |tGravityAcc-std()-X
tGravityAcc-Std-Y        |tGravityAcc-std()-Y
tGravityAcc-Std-Z        |tGravityAcc-std()-Z
tBodyAccJerk-Mean-X      |tBodyAccJerk-mean()-X
tBodyAccJerk-Mean-Y      |tBodyAccJerk-mean()-Y
tBodyAccJerk-Mean-Z      |tBodyAccJerk-mean()-Z
tBodyAccJerk-Std-X       |tBodyAccJerk-std()-X
tBodyAccJerk-Std-Y       |tBodyAccJerk-std()-Y
tBodyAccJerk-Std-Z       |tBodyAccJerk-std()-Z
tBodyGyro-Mean-X         |tBodyGyro-mean()-X
tBodyGyro-Mean-Y         |tBodyGyro-mean()-Y
tBodyGyro-Mean-Z         |tBodyGyro-mean()-Z
tBodyGyro-Std-X          |tBodyGyro-std()-X
tBodyGyro-Std-Y          |tBodyGyro-std()-Y
tBodyGyro-Std-Z          |tBodyGyro-std()-Z
tBodyGyroJerk-Mean-X     |tBodyGyroJerk-mean()-X
tBodyGyroJerk-Mean-Y     |tBodyGyroJerk-mean()-Y
tBodyGyroJerk-Mean-Z     |tBodyGyroJerk-mean()-Z
tBodyGyroJerk-Std-X      |tBodyGyroJerk-std()-X
tBodyGyroJerk-Std-Y      |tBodyGyroJerk-std()-Y
tBodyGyroJerk-Std-Z      |tBodyGyroJerk-std()-Z
tBodyAccMag-Mean         |tBodyAccMag-mean()
tBodyAccMag-Std          |tBodyAccMag-std()
tGravityAccMag-Mean      |tGravityAccMag-mean()
tGravityAccMag-Std       |tGravityAccMag-std()
tBodyAccJerkMag-Mean     |tBodyAccJerkMag-mean()
tBodyAccJerkMag-Std      |tBodyAccJerkMag-std()
tBodyGyroMag-Mean        |tBodyGyroMag-mean()
tBodyGyroMag-Std         |tBodyGyroMag-std()
tBodyGyroJerkMag-Mean    |tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-Std     |tBodyGyroJerkMag-std()
fBodyAcc-Mean-X          |fBodyAcc-mean()-X
fBodyAcc-Mean-Y          |fBodyAcc-mean()-Y
fBodyAcc-Mean-Z          |fBodyAcc-mean()-Z
fBodyAcc-Std-X           |fBodyAcc-std()-X
fBodyAcc-Std-Y           |fBodyAcc-std()-Y
fBodyAcc-Std-Z           |fBodyAcc-std()-Z
fBodyAccJerk-Mean-X      |fBodyAccJerk-mean()-X
fBodyAccJerk-Mean-Y      |fBodyAccJerk-mean()-Y
fBodyAccJerk-Mean-Z      |fBodyAccJerk-mean()-Z
fBodyAccJerk-Std-X       |fBodyAccJerk-std()-X
fBodyAccJerk-Std-Y       |fBodyAccJerk-std()-Y
fBodyAccJerk-Std-Z       |fBodyAccJerk-std()-Z
fBodyGyro-Mean-X         |fBodyGyro-mean()-X
fBodyGyro-Mean-Y         |fBodyGyro-mean()-Y
fBodyGyro-Mean-Z         |fBodyGyro-mean()-Z
fBodyGyro-Std-X          |fBodyGyro-std()-X
fBodyGyro-Std-Y          |fBodyGyro-std()-Y
fBodyGyro-Std-Z          |fBodyGyro-std()-Z
fBodyAccMag-Mean         |fBodyAccMag-mean()
fBodyAccMag-Std          |fBodyAccMag-std()
fBodyBodyAccJerkMag-Mean |fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-Std  |fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-Mean    |fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-Std     |fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-Mean|fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-Std |fBodyBodyGyroJerkMag-std()


[1]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
[2]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip