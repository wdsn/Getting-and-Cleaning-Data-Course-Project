## Required libraries
require(dplyr)


e## Download data

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile <- "./data/samsungData.zip"

if (!file.exists(destfile)) {
        
        if(!dir.exists("./data")){
                
                dir.create("data")
        
        }
        
        download.file(fileURL, destfile, method="auto")

}

unzip(paste(getwd(),destfile, sep="/"), exdir = paste(getwd(),"data", sep="/"))

## Read in required labels

activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
variables <- read.table("./data/UCI HAR Dataset/features.txt")

## Read in train data and subject labels

X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
Sub_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

## Read in test data and subject labels

X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")
Sub_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

## Combine the training and test data & remove superseded files
X <- rbind(X_train, X_test)
Y <- rbind(Y_train, Y_test)
sub_all <- rbind(Sub_train, Sub_test)
rm(list=c("X_train", "X_test", "Y_train", "Y_test","Sub_train", "Sub_test"))

## Identify & name correct columns from combined x table

variables_selected <- variables[grep("mean|std",variables[,2]),]
X <- X[,variables_selected[,1]]
colnames(X) <- variables[variables_selected[,1],2]

## Rename comibed Y column & add the correct activity label

colnames(Y) <- "activityref"
Y$activity <- factor(Y$activityref, labels = as.character(activity_labels[,2]))
activity <- Y$activity

## Rename subjects

colnames(sub_all) <- "Subject"

## Combine all tables 

combinedtables <- cbind(X, activity, sub_all)

## Group combined table by activity then subject

Grouped <- group_by(combinedtables,activity, Subject)

## Summary table by mean

final <- summarise_all(Grouped, funs(mean))

# output final table

write.table(final, file = "./summarised_tidy_data.txt", row.names = FALSE, col.names = TRUE)

