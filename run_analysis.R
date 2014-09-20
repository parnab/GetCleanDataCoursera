
## Read Test data files
test.labels <- read.table("./UCI_HAR_Dataset/test/y_test.txt", col.names="label")
test.subjects <- read.table("./UCI_HAR_Dataset/test/subject_test.txt", col.names="subject")
test.data <- read.table("./UCI_HAR_Dataset/test/X_test.txt")

## Read Train Data files
train.labels <- read.table("./UCI_HAR_Dataset/train/y_train.txt", col.names="label")
train.subjects <- read.table("./UCI_HAR_Dataset/train/subject_train.txt", col.names="subject")
train.data <- read.table("./UCI_HAR_Dataset/train/X_train.txt")

## Column bind the labels, subjects and the actual measure data for Test and 
## Train files and den row bind to merge Test and Train data
data_all <- rbind(cbind(test.subjects, test.labels,test.data),
                  cbind(train.subjects, train.labels,train.data))

## read the features
features <- read.table("./UCI_HAR_Dataset/features.txt", strip.white=TRUE, stringsAsFactors=FALSE)

## only retain features of mean and standard deviation
features_mean_std <- features[grep("mean|std", features$V2), ]

# select only the means and standard deviations from data
# increment by 2 because data has subjects and labels in the beginning
data_mean_std <- data_all[, c(1, 2, features_mean_std$V1+2)]

# read the labels (activities)
labels <- read.table("./UCI_HAR_Dataset/activity_labels.txt", stringsAsFactors=FALSE)

# replace labels in data with label names
data_mean_std$label <- labels[data_mean_std$label, 2]

#create tidy data grouped by subject and activity label
tidy_data <- aggregate(data_mean_std[, 3:ncol(data_mean_std)],
                        by=list(subject = data_mean_std$subject, 
                                label = data_mean_std$label),mean)
# write to a file
write.table(format(tidy_data, scientific=T), "myTidyData.txt", row.names=F, col.names=F, quote=2)

