Desription of Data Cleaning Procedure:

1.	Data was downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2.	Folder was unzipped in working directory and the following files were loaded into R:
   a.	  The training data files (including “subject_train.txt” (subject ID), “y_train.txt” (activity labels), and “X_train.txt” (set))
   b.	  The test data files (including “subject_test.txt” (subject ID), “y_test.txt” (activity labels), and “X_test.txt” (set))
3.	The training data files (including subject ID, activity labels, and set) and the test data files (including subject ID, activity labels, and set) were merged (cbind)
4.	The merged training dataset and the merged test dataset were merged (rbind)
5.	From this newly merged dataset, only the variables on subject ID and activity labels as well as the variables measuring the mean and standard deviation for each measurement were extracted (by a code relying on the “features.txt” file)
6.	The activity labels (in original file coded with numbers) in this new dataset were coded by names of the activity (in accordance with the file “activity_labels.txt”)
7.	The variable names were applied to the variables in this dataset (activity, subjectID, and other variables according to the “features.txt” file; however, often it was written “BodyBody” in the original names, this was exchanged by “Body”)
8.	Lastly, the average of each variable for each activity and each subject was calculated and stored in a new – finally uploaded – dataset (see file: Tidy_Data_Summary_Upload.txt). For this final dataset, also the variable names (except subjectID and activity) were changed by adding an “Avrg” before the names to indicate the average.


Description of Variables in Final Dataset

The finally uploaded, tidy dataset (Tidy_Data_Summary_Upload.txt) includes 180 observations of 68 variables:

•	"subjectID"
•	"activity"
•	"Avrg-tBodyAcc-mean()-X"
•	"Avrg-tBodyAcc-mean()-Y"
•	"Avrg-tBodyAcc-mean()-Z"
•	"Avrg-tBodyAcc-std()-X"
•	"Avrg-tBodyAcc-std()-Y"
•	"Avrg-tBodyAcc-std()-Z"
•	"Avrg-tGravityAcc-mean()-X"
•	"Avrg-tGravityAcc-mean()-Y"
•	"Avrg-tGravityAcc-mean()-Z"
•	"Avrg-tGravityAcc-std()-X"
•	"Avrg-tGravityAcc-std()-Y"
•	"Avrg-tGravityAcc-std()-Z"
•	"Avrg-tBodyAccJerk-mean()-X" 
•	"Avrg-tBodyAccJerk-mean()-Y"
•	"Avrg-tBodyAccJerk-mean()-Z"
•	"Avrg-tBodyAccJerk-std()-X"
•	"Avrg-tBodyAccJerk-std()-Y"
•	"Avrg-tBodyAccJerk-std()-Z"
•	"Avrg-tBodyGyro-mean()-X"
•	"Avrg-tBodyGyro-mean()-Y"
•	"Avrg-tBodyGyro-mean()-Z"
•	"Avrg-tBodyGyro-std()-X"
•	"Avrg-tBodyGyro-std()-Y"
•	"Avrg-tBodyGyro-std()-Z"
•	"Avrg-tBodyGyroJerk-mean()-X"
•	"Avrg-tBodyGyroJerk-mean()-Y"
•	"Avrg-tBodyGyroJerk-mean()-Z"
•	"Avrg-tBodyGyroJerk-std()-X"
•	"Avrg-tBodyGyroJerk-std()-Y"
•	"Avrg-tBodyGyroJerk-std()-Z"
•	"Avrg-tBodyAccMag-mean()"
•	"Avrg-tBodyAccMag-std()"
•	"Avrg-tGravityAccMag-mean()"
•	"Avrg-tGravityAccMag-std()"
•	"Avrg-tBodyAccJerkMag-mean()"
•	"Avrg-tBodyAccJerkMag-std()"
•	"Avrg-tBodyGyroMag-mean()"
•	"Avrg-tBodyGyroMag-std()"
•	"Avrg-tBodyGyroJerkMag-mean()"
•	"Avrg-tBodyGyroJerkMag-std()"
•	"Avrg-fBodyAcc-mean()-X"
•	"Avrg-fBodyAcc-mean()-Y"
•	"Avrg-fBodyAcc-mean()-Z"
•	"Avrg-fBodyAcc-std()-X"
•	"Avrg-fBodyAcc-std()-Y"
•	"Avrg-fBodyAcc-std()-Z"
•	"Avrg-fBodyAccJerk-mean()-X"
•	"Avrg-fBodyAccJerk-mean()-Y"
•	"Avrg-fBodyAccJerk-mean()-Z"
•	"Avrg-fBodyAccJerk-std()-X"
•	"Avrg-fBodyAccJerk-std()-Y"
•	"Avrg-fBodyAccJerk-std()-Z"
•	"Avrg-fBodyGyro-mean()-X"
•	"Avrg-fBodyGyro-mean()-Y"
•	"Avrg-fBodyGyro-mean()-Z"
•	"Avrg-fBodyGyro-std()-X"
•	"Avrg-fBodyGyro-std()-Y"
•	"Avrg-fBodyGyro-std()-Z"
•	"Avrg-fBodyAccMag-mean()"
•	"Avrg-fBodyAccMag-std()"
•	"Avrg-fBodyAccJerkMag-mean()"
•	"Avrg-fBodyAccJerkMag-std()"
•	"Avrg-fBodyGyroMag-mean()"
•	"Avrg-fBodyGyroMag-std()"
•	"Avrg-fBodyGyroJerkMag-mean()"
•	"Avrg-fBodyGyroJerkMag-std()"


Variable Units:

•	subjectID: integer variable (describes the subject ID from 1-30)
•	activity: factor variable with 6 levels (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
•	All other variables: numeric variables (all values lie between -1 and +1; more exactly between -0.9976661 and +0.9745087)
