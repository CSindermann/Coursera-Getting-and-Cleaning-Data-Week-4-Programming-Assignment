### Programming Assignemnt Week 4 of "Getting and Cleaning Data" (coursera course)

## load required packages
library(dplyr)


## Get the data:
#1. Data folder (zip) was manually downloaded and unzipped from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#2. Load data into R
#2.1 Training data set(s) (files identified according to README file)
data_Train_set <- read.table("./UCI HAR Dataset/train/X_train.txt")
data_Train_label <- read.table("./UCI HAR Dataset/train/y_train.txt")
data_Train_subj <- read.table("./UCI HAR Dataset/train/subject_train.txt")

#2.1 Test data set (files identified according to README file)
data_Test_set <- read.table("./UCI HAR Dataset/test/X_test.txt")
data_Test_label <- read.table("./UCI HAR Dataset/test/y_test.txt")
data_Test_subj <- read.table("./UCI HAR Dataset/test/subject_test.txt")



## Exercise 1: "1. Merges the training and the test sets to create one data set."
# Merge files
#1.1 Merge all training files 
Merge_Train <- cbind(data_Train_set, data_Train_label, data_Train_subj)
#1.2 Merge all test files
Merge_Test <- cbind(data_Test_set, data_Test_label, data_Test_subj)
#1.3 Merge training and test file
Merge_Train_Test <- rbind(Merge_Train, Merge_Test)


## Exercise 2: "2. Extracts only the measurements on the mean and standard deviation for each measurement."
#2.1 Load "features.txt" (includes description of variables)
data_features <- read.table("./UCI HAR Dataset/features.txt")
#2.2 Find variables including mean or std (see "features.info.txt")
target_features_indexes <- data_features[grep("mean\\(\\)|std\\(\\)", data_features[,2]),]
##ATTENTION: In exercise 1, I added two variables to dataset at the end (now 563 instead of 561 variables)
## -> No big problem as their added at the end and do not include mean or std
#2.3 Extract data (and keep subj. ID and activity label (and put them at the beginning of dataset))
Target_Data <- Merge_Train_Test[ , c(562:563, target_features_indexes[,1])]


## Exercise 3: "3. Uses descriptive activity names to name the activities in the data set."
#3.1 Load "activity_labels.txt"
data_activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
#3.2 Give columns names
colnames(data_activity_labels) <- c("activityId","activityType")
#3.3 Labels are in the 1st column in my dataset --> exchange by factor using information from "data_activity_labels"
Target_Data[[1]] <- factor(Target_Data[[1]],
                           levels = data_activity_labels[[1]],
                           labels = data_activity_labels[[2]])


## Exercise 4: "4. Appropriately labels the data set with descriptive variable names."
#4.1 Names are explained in features file (already used in step 2)
Descriptive_Names <- target_features_indexes[,2]
#4.2 Correct BodyBody to Body
Descriptive_Names <- gsub(pattern = "BodyBody", replacement = "Body", Descriptive_Names)
#4.3 Give variables names...
Tidy_Data_1 <- Target_Data
names(Tidy_Data_1) <- c("activity", "subjectID", Descriptive_Names)


## Exercise 5: "5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject."
#5.1 Calculate means grouped by subject and group
Tidy_Data_1_summary <- Tidy_Data_1 %>%
        group_by(subjectID, activity) %>%
        summarise_all(funs(mean)) %>%
        ungroup()
#5.2. As it should be a tidy dataset --> give variables new names (BUT NOT subjectID and activity)
New_Names_Summary_Tidy <- c(names(Tidy_Data_1_summary[c(1,2)]),
                           paste0("Avrg-", names(Tidy_Data_1_summary[-c(1, 2)])))
names(Tidy_Data_1_summary) <- New_Names_Summary_Tidy

#Lastly: Save the final dataset for the upload to github
write.table(Tidy_Data_1_summary, "Tidy_Data_Summary_Upload.txt", row.names = FALSE)
