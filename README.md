# Getting-and-Cleaning-Data-Course-Project

## Background

This project is based on the data gathered in the 'Human Activity Recognition Using Smartphones Dataset'. A full description is available at the fillowing link
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
A link to the original dataset is included below:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The original data was used in the following publication:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded to label the data manually.  

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
 
For more information see the original dataset & accompaning documentation.

## Goals

The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. The purpose of this project is to combine the test and training data tables into one table and tidying the data.
Speicifcally the goals of this project are to:
* Merge the training and the test sets to create one data set.
* Extract only the measurements on the mean and standard deviation for each measurement.
* Use descriptive activity names to name the activities in the data set
* Appropriately label the data set with descriptive variable names.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Files

This project includes the following files:
* DataAnlaysis.R - The R script to achieve the above goals.
* summarised_tidy_data.txt - The tidy data set with the average of each variable for each activity and each subject.
* CodeBook.txt - A summary of the variables included in the resulting dataset




