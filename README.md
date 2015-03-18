## Getting and Cleaning Data

## Project Goal -
Create one R script called run_analysis.R that does the following:

*  Merges the training and the test sets to create one data set.
*  Extracts only the measurements on the mean and standard deviation for each measurement.
*  Uses descriptive activity names to name the activities in the data set
*  Appropriately labels the data set with descriptive activity names.
*  Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Notes

*  Script downloads and unzips dataset in the current directory.
*  Requires dplyr
*  Only variables containing mean and std are used.

##  Run script

Open and run script run_analysis.R

Creates tidy_means.txt