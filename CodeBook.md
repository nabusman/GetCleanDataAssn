Code Book for GetCleanDataAssn
==============================

## Variables in TidyHAR.txt

In the original dataset the variable names are in the following format:  
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

Where "XYZ" is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are:  
- mean(): Mean value  
- std(): Standard deviation  
- mad(): Median absolute deviation   
- max(): Largest value in array  
- min(): Smallest value in array  
- sma(): Signal magnitude area  
- energy(): Energy measure. Sum of the squares divided by the number of values.   
- iqr(): Interquartile range   
- entropy(): Signal entropy  
- arCoeff(): Autorregresion coefficients with Burg order equal to 4  
- correlation(): correlation coefficient between two signals  
- maxInds(): index of the frequency component with largest magnitude  
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency  
- skewness(): skewness of the frequency domain signal   
- kurtosis(): kurtosis of the frequency domain signal   
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.  
- angle(): Angle between to vectors.

In TidyHAR.txt all these variables have been averaged over the Subject (1-30) and the Label (walking, walking upstairs, walking downstairs, sitting, standing, and laying).

## Tidy Data Processing

To convert the raw data into tidy data the following steps were undertaken:

1. Data was loaded into R
2. The training set (UCI HAR Dataset/train/X_train.txt), testing set (UCI HAR Dataset/test/X_test.txt), training labels (UCI HAR Dataset/train/y_train.txt), testing lables(UCI HAR Dataset/train/y_test.txt), training subjects (UCI HAR Dataset/train/subject_train.txt) and testing subjects (UCI HAR Dataset/train/subject_test.txt) were all combined into one dataset
3. The columns were labeled with the features (UCI HAR Dataset/features.txt) and the label data was named "Labels" and subject data "Subjects"
4. The Labels column was converted into a factor variable with levels for each activity and the Subjects column was converted into a factor as well

For more information on the original dataset files refer to UCI HAR Dataset/README.txt