#Data File Description

###Train Files
===========
- /UCI_HAR_Dataset/test/y_test.txt
- /UCI_HAR_Dataset/test/subject_test.txt
- /UCI_HAR_Dataset/test/X_test.txt


###Test Files
==========
- /UCI_HAR_Dataset/train/y_train.txt
- /UCI_HAR_Dataset/train/subject_train.txt
- /UCI_HAR_Dataset/train/X_train.txt

###Feature File
==========
- /UCI_HAR_Dataset/features.txt
 

###Activity Label File
==========
- /UCI_HAR_Dataset/activity_labels.txt


#Variables used in code and their usage

###The following variables stores data from corresponding files. The names are self explanatory where applicable
- test.labels 
- test.subjects
- test.data
- train.labels
- train.subjects
- train.data
- data_all (Stores the merged test and train data)
- features (stores the feature data)
- features_mean_std (Features with only mean and standard deviation)
- data_mean_std (subset of data from data_all based on the features_mean_std )
- labels (Stores the labels)
- tidy_data (data that has been grouped by subjects and activity using the data in data_mean_std)