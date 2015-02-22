library(plyr)
# Download the data
url <- paste("https://d396qusza40orc.cloudfront.net/",
             "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
             sep = "")
if(!file.exists("data.zip")) {
  download.file(url, destfile = "data.zip")
  unzip("data.zip")
}
##
# Misc
##
repo <- "UCI HAR Dataset"
feature.file <- paste(repo,
                      "features.txt",
                      sep = "/")
x.file <- function(file) {
  file <- paste(repo,
                file,
                paste("X_", paste(file, "txt", sep = "."), sep = ""),
                sep = "/")
}

##
# 1. Merge the training set and test set
## 
feature <- read.table(feature.file,
                      sep = " ",
                      col.names = c("id", "name"))

# Get the training and testing set
test <- read.table(x.file("test"),
                   col.names = feature$name)

train <- read.table(x.file("train"),
                    col.names = feature$name)

data.merge <- rbind(test, train) 

##
# 2. Extracts measurements on the mean and the SD for each measurements
##
col <- names(data.merge)[grepl("(mean|std)[.]", names(data.merge))]
data.merge <- data.merge[, col]

##
# 3. Uses descriptive activity names to name the activities in the dataset
##
# Get the activity labels
activity <- read.table("UCI HAR Dataset/activity_labels.txt",
                       sep = " ",
                       col.names = c("activity_id", "activity_label"))

# Get the activity id related to train and test dataset
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")

ytest <- read.table("UCI HAR Dataset/test/y_test.txt")

ydata.merge <- rbind(ytest, ytrain)

data.merge$activity <- ydata.merge$V1
data.merge <- merge(activity, data.merge, by.x = "activity_id", by.y = "activity")

##
# 4. Give descriptive variables name
# Pattern user for all measurements columns is:
#   variables_to_describe.method_axe
##
names(data.merge) <- gsub('^t', 'time_', names(data.merge))
names(data.merge) <- gsub('^f', 'frequency_', names(data.merge))
names(data.merge) <- gsub('BodyBody', '2body_', names(data.merge))
names(data.merge) <- gsub('_Body', '_body_', names(data.merge))
names(data.merge) <- gsub('Acc', 'acceleration_', names(data.merge))
names(data.merge) <- gsub('Gyro', 'gyroscope_', names(data.merge))
names(data.merge) <- gsub('Jerk', 'jerk_', names(data.merge))
names(data.merge) <- gsub('Mag', 'magnitude_', names(data.merge))
names(data.merge) <- gsub('_\\.', '.', names(data.merge))
names(data.merge) <- gsub('\\.{3}', '_', names(data.merge))
names(data.merge) <- gsub('\\.{2}', '', names(data.merge))

##
# 5. Create a tidy dataset with the average of each variable for each activity
# and each subject
##
## Add the subject to compute data for the tidy dataset
subject.test <- read.table("UCI HAR Dataset/test/subject_test.txt")
subject.train <- read.table("UCI HAR Dataset/train/subject_train.txt")

subject <- rbind(subject.test, 
                 subject.train)
data.tidy <- data.merge
data.tidy$subject <- subject$V1


DT <- data.table(data.tidy)
columns <- names(DT)[names(DT) == "subject" | names(DT) == "activity_id"]
DT <- DT[,lapply(.SD,sum), by = list(subject, activity_id)]

##
# Save the dataset
##
write.table(data.merge, file='tidy-dataset.txt')
write.table(DT, file='tidy-dataset-by-subject-activity.txt')

