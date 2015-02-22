# Coursera: Getting And Cleaning Data
## Script

According to the requirement, the file denoted by run_analysis.R perform steps to getting and cleaning data for this [dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Steps
The script follows this logic:

1. Download the dataset
2. Merges the training and test set
3. Extract only the standard deviation and the mean for the measurement
4. Put inside the dataset the activity label instead of onle the activity id
5. Rename all variable with more readly name
6. Create a new independent dataset with the average of each variable for each activity and each subject.

## Output
Two file are created:
* `tidy-dataset.txt`: First dataset created according to point 1 to 5.
* `tidy-dataset-by-subject-activity.txt`: Second dataset according to point 6.

## Description
For all explanation concerning the variables used as columns names, refer to file `CodeBook.md`.
