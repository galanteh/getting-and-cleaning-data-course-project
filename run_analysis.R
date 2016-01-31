#####################################################################
# Final Project
# Dataset: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# Create one R script called run_analysis.R that does the following:
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive activity names.
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#####################################################################

#####################################################################
# Set the working directory
#####################################################################
workingDirectory <- "C:/Hernan Galante/Autonomy/Certification/Getting and Cleaning data/Week4/Final Project/UCI HAR Dataset/"
setwd(workingDirectory)

#####################################################################
# Download data and unzip it
#####################################################################
# url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# zip_localFile <- file.path(getwd(),"dataset.zip")
# download.file(url=url,destfile=zip_localFile, mode='wb')
# zip_dir <- file.path(getwd(),"/")
# unzip (zip_localFile)

# Load data
activity_labels <- read.table("activity_labels.txt")[,2]
features <- read.table("features.txt")[,2]
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

#####################################################################
# 1. Merges the training and the test sets to create one data set.
#####################################################################

require("data.table")
data_test <- cbind(as.data.table(subject_test), y_test, X_test)
data_train <- cbind(as.data.table(subject_train), y_train, X_train)
merged_data <- rbind(data_test, data_train)

#####################################################################
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
#####################################################################
extract_features <- grepl("mean|std", features)

#####################################################################
# 3. Uses descriptive activity names to name the activities in the data set
#####################################################################
names(X_test) <- features
X_test <- X_test[,extract_features]
names(X_train) <- features
X_train <- X_train[,extract_features]

# Define activity labels
y_test[,2] <- activity_labels[y_test[,1]]
names(y_test) <- c("Activity_ID", "Activity_Label")
names(subject_test) <- "subject"
y_train[,2] <- activity_labels[y_train[,1]]
names(y_train) <- c("Activity_ID", "Activity_Label")
names(subject_train) <- "subject"


#####################################################################
# 4. Appropriately labels the data set with descriptive activity names.
#####################################################################
data_test <- cbind(as.data.table(subject_test), y_test, X_test)
data_train <- cbind(as.data.table(subject_train), y_train, X_train)
labeled_merged_data <- rbind(data_test, data_train)

#####################################################################
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#####################################################################

id_labels   <- c("subject", "Activity_ID", "Activity_Label")
data_labels <- setdiff(colnames(labeled_merged_data), id_labels)
require("reshape2")
melt_data <- melt(labeled_merged_data, id = id_labels, measure.vars = data_labels)
tidy_data <- dcast(melt_data, subject + Activity_Label ~ variable, mean)
write.table(tidy_data, file = file.path(getwd(),"tidy_data.txt"), row.names=FALSE)
