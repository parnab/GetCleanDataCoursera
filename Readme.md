#Getting data

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#Setting up Working Directory

- Unzip the data file downloaded in the previous step
- Open RStudio and place the downloaded file in the previous step in the Working directory
- Rename UCI HAR Dataset to UCI_HAR_Dataset
- Place run_analysis.R in the same working directory
- type source("run_analysis.R") in the console
- "myTidyData.txt" will be generated in the working directory


#Objectives
###The R script called run_analysis.R  does the following. 
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# Code walkthrough
###Step 1
- Read Test and Train data files

###Step 2
- Column bind the labels, subjects and the actual measure data for Test and 
Train files and den row bind to merge Test and Train data

###Step 3
- read the features
 

###Step 4
- only retain features of mean and standard deviation


###Step 5
- read the labels (activities). replace labels in data with label names

###Step 6
- create tidy data grouped by subject and activity label. Write to file.