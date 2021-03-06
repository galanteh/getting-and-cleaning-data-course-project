# CodeBook
Additional information about the variables, data and transformations used in the course project for the Johns Hopkins Getting and Cleaning Data course.

# Source files of the dataset
A full description of the data used in this project can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

Download the dataset from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# What information contains this dataset?
Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

# Files used in the script
After setting the source directory for the files, read into tables the data located in
- features.txt
- activity_labels.txt
- subject_train.txt
- x_train.txt
- y_train.txt
- subject_test.txt
- x_test.txt
- y_test.txt

# About the script
The script is document at each requested step in the instructions of the project.

####Tidy Data variables:
```
> str(TidyData)
'data.frame':	180 obs. of  81 variables:
 $ Subject                           : Factor w/ 30 levels "1","2","3","4",..: 1 2 3 4 5 6 7 8 9 10 ...
 $ Activity                          : Factor w/ 6 levels "LAYING","SITTING",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ TimeBodyAcc-mean()-X              : num  0.222 0.281 0.276 0.264 0.278 ...
 $ TimeBodyAcc-mean()-Y              : num  -0.0405 -0.0182 -0.019 -0.015 -0.0183 ...
 $ TimeBodyAcc-mean()-Z              : num  -0.113 -0.107 -0.101 -0.111 -0.108 ...
 $ TimeBodyAcc-std()-X               : num  -0.928 -0.974 -0.983 -0.954 -0.966 ...
 $ TimeBodyAcc-std()-Y               : num  -0.837 -0.98 -0.962 -0.942 -0.969 ...
 $ TimeBodyAcc-std()-Z               : num  -0.826 -0.984 -0.964 -0.963 -0.969 ...
 $ TimeGravityAcc-mean()-X           : num  -0.249 -0.51 -0.242 -0.421 -0.483 ...
 $ TimeGravityAcc-mean()-Y           : num  0.706 0.753 0.837 0.915 0.955 ...
 $ TimeGravityAcc-mean()-Z           : num  0.446 0.647 0.489 0.342 0.264 ...
 $ TimeGravityAcc-std()-X            : num  -0.897 -0.959 -0.983 -0.921 -0.946 ...
 $ TimeGravityAcc-std()-Y            : num  -0.908 -0.988 -0.981 -0.97 -0.986 ...
 $ TimeGravityAcc-std()-Z            : num  -0.852 -0.984 -0.965 -0.976 -0.977 ...
 $ TimeBodyAccJerk-mean()-X          : num  0.0811 0.0826 0.077 0.0934 0.0848 ...
 $ TimeBodyAccJerk-mean()-Y          : num  0.00384 0.01225 0.0138 0.00693 0.00747 ...
 $ TimeBodyAccJerk-mean()-Z          : num  0.01083 -0.0018 -0.00436 -0.00641 -0.00304 ...
 $ TimeBodyAccJerk-std()-X           : num  -0.958 -0.986 -0.981 -0.978 -0.983 ...
 $ TimeBodyAccJerk-std()-Y           : num  -0.924 -0.983 -0.969 -0.942 -0.965 ...
 $ TimeBodyAccJerk-std()-Z           : num  -0.955 -0.988 -0.982 -0.979 -0.985 ...
 $ TimeBodyGyro-mean()-X             : num  -0.01655 -0.01848 -0.02082 -0.00923 -0.02189 ...
 $ TimeBodyGyro-mean()-Y             : num  -0.0645 -0.1118 -0.0719 -0.093 -0.0799 ...
 $ TimeBodyGyro-mean()-Z             : num  0.149 0.145 0.138 0.17 0.16 ...
 $ TimeBodyGyro-std()-X              : num  -0.874 -0.988 -0.975 -0.973 -0.979 ...
 $ TimeBodyGyro-std()-Y              : num  -0.951 -0.982 -0.977 -0.961 -0.977 ...
 $ TimeBodyGyro-std()-Z              : num  -0.908 -0.96 -0.964 -0.962 -0.961 ...
 $ TimeBodyGyroJerk-mean()-X         : num  -0.107 -0.102 -0.1 -0.105 -0.102 ...
 $ TimeBodyGyroJerk-mean()-Y         : num  -0.0415 -0.0359 -0.039 -0.0381 -0.0404 ...
 $ TimeBodyGyroJerk-mean()-Z         : num  -0.0741 -0.0702 -0.0687 -0.0712 -0.0708 ...
 $ TimeBodyGyroJerk-std()-X          : num  -0.919 -0.993 -0.98 -0.975 -0.983 ...
 $ TimeBodyGyroJerk-std()-Y          : num  -0.968 -0.99 -0.987 -0.987 -0.984 ...
 $ TimeBodyGyroJerk-std()-Z          : num  -0.958 -0.988 -0.983 -0.984 -0.99 ...
 $ TimeBodyAccMag-mean()             : num  -0.842 -0.977 -0.973 -0.955 -0.967 ...
 $ TimeBodyAccMag-std()              : num  -0.795 -0.973 -0.964 -0.931 -0.959 ...
 $ TimeGravityAccMag-mean()          : num  -0.842 -0.977 -0.973 -0.955 -0.967 ...
 $ TimeGravityAccMag-std()           : num  -0.795 -0.973 -0.964 -0.931 -0.959 ...
 $ TimeBodyAccJerkMag-mean()         : num  -0.954 -0.988 -0.979 -0.97 -0.98 ...
 $ TimeBodyAccJerkMag-std()          : num  -0.928 -0.986 -0.976 -0.961 -0.977 ...
 $ TimeBodyGyroMag-mean()            : num  -0.875 -0.95 -0.952 -0.93 -0.947 ...
 $ TimeBodyGyroMag-std()             : num  -0.819 -0.961 -0.954 -0.947 -0.958 ...
 $ TimeBodyGyroJerkMag-mean()        : num  -0.963 -0.992 -0.987 -0.985 -0.986 ...
 $ TimeBodyGyroJerkMag-std()         : num  -0.936 -0.99 -0.983 -0.983 -0.984 ...
 $ FreqBodyAcc-mean()-X              : num  -0.939 -0.977 -0.981 -0.959 -0.969 ...
 $ FreqBodyAcc-mean()-Y              : num  -0.867 -0.98 -0.961 -0.939 -0.965 ...
 $ FreqBodyAcc-mean()-Z              : num  -0.883 -0.984 -0.968 -0.968 -0.977 ...
 $ FreqBodyAcc-std()-X               : num  -0.924 -0.973 -0.984 -0.952 -0.965 ...
 $ FreqBodyAcc-std()-Y               : num  -0.834 -0.981 -0.964 -0.946 -0.973 ...
 $ FreqBodyAcc-std()-Z               : num  -0.813 -0.985 -0.963 -0.962 -0.966 ...
 $ FreqBodyAcc-meanFreq()-X          : num  -0.159 -0.146 -0.074 -0.274 -0.136 ...
 $ FreqBodyAcc-meanFreq()-Y          : num  0.0975 0.2573 0.2385 0.3662 0.4665 ...
 $ FreqBodyAcc-meanFreq()-Z          : num  0.0894 0.4025 0.217 0.2013 0.1323 ...
 $ FreqBodyAccJerk-mean()-X          : num  -0.957 -0.986 -0.981 -0.979 -0.983 ...
 $ FreqBodyAccJerk-mean()-Y          : num  -0.922 -0.983 -0.969 -0.944 -0.965 ...
 $ FreqBodyAccJerk-mean()-Z          : num  -0.948 -0.986 -0.979 -0.975 -0.983 ...
 $ FreqBodyAccJerk-std()-X           : num  -0.964 -0.987 -0.983 -0.98 -0.986 ...
 $ FreqBodyAccJerk-std()-Y           : num  -0.932 -0.985 -0.971 -0.944 -0.966 ...
 $ FreqBodyAccJerk-std()-Z           : num  -0.961 -0.989 -0.984 -0.98 -0.986 ...
 $ FreqBodyAccJerk-meanFreq()-X      : num  0.132 0.16 0.176 0.182 0.24 ...
 $ FreqBodyAccJerk-meanFreq()-Y      : num  0.0245 0.1212 -0.0132 0.0987 0.1957 ...
 $ FreqBodyAccJerk-meanFreq()-Z      : num  0.0244 0.1906 0.0448 0.077 0.0917 ...
 $ FreqBodyGyro-mean()-X             : num  -0.85 -0.986 -0.97 -0.967 -0.976 ...
 $ FreqBodyGyro-mean()-Y             : num  -0.952 -0.983 -0.978 -0.972 -0.978 ...
 $ FreqBodyGyro-mean()-Z             : num  -0.909 -0.963 -0.962 -0.961 -0.963 ...
 $ FreqBodyGyro-std()-X              : num  -0.882 -0.989 -0.976 -0.975 -0.981 ...
 $ FreqBodyGyro-std()-Y              : num  -0.951 -0.982 -0.977 -0.956 -0.977 ...
 $ FreqBodyGyro-std()-Z              : num  -0.917 -0.963 -0.967 -0.966 -0.963 ...
 $ FreqBodyGyro-meanFreq()-X         : num  -0.00355 0.10261 -0.08222 -0.06609 -0.02272 ...
 $ FreqBodyGyro-meanFreq()-Y         : num  -0.0915 0.0423 -0.0267 -0.5269 0.0681 ...
 $ FreqBodyGyro-meanFreq()-Z         : num  0.0105 0.0553 0.1477 0.1529 0.0414 ...
 $ FreqBodyAccMag-mean()             : num  -0.862 -0.975 -0.966 -0.939 -0.962 ...
 $ FreqBodyAccMag-std()              : num  -0.798 -0.975 -0.968 -0.937 -0.963 ...
 $ FreqBodyAccMag-meanFreq()         : num  0.0864 0.2663 0.237 0.2417 0.292 ...
 $ FreqBodyBodyAccJerkMag-mean()     : num  -0.933 -0.985 -0.976 -0.962 -0.977 ...
 $ FreqBodyBodyAccJerkMag-std()      : num  -0.922 -0.985 -0.975 -0.958 -0.976 ...
 $ FreqBodyBodyAccJerkMag-meanFreq() : num  0.266 0.342 0.239 0.274 0.197 ...
 $ FreqBodyBodyGyroMag-mean()        : num  -0.862 -0.972 -0.965 -0.962 -0.968 ...
 $ FreqBodyBodyGyroMag-std()         : num  -0.824 -0.961 -0.955 -0.947 -0.959 ...
 $ FreqBodyBodyGyroMag-meanFreq()    : num  -0.1398 0.0186 -0.0229 -0.2599 0.1024 ...
 $ FreqBodyBodyGyroJerkMag-mean()    : num  -0.942 -0.99 -0.984 -0.984 -0.985 ...
 $ FreqBodyBodyGyroJerkMag-std()     : num  -0.933 -0.989 -0.983 -0.983 -0.983 ...
 $ FreqBodyBodyGyroJerkMag-meanFreq(): num  0.1765 0.2648 0.1107 0.2029 0.0247 ...
 ```
