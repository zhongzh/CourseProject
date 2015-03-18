##download source

  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "Dataset.zip", mode = "wb")

##unzip Dataset.zip

  unzip("Dataset.zip")
  
##load dplyr and tidyr
  
  require(dplyr)

##read relevant files for merging.
  
  features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
  activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
  subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = FALSE)
  factors_train <- read.table("./UCI HAR Dataset/train/x_train.txt", stringsAsFactors = FALSE)
  activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt", stringsAsFactors = FALSE)
  subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = FALSE)
  factors_test <- read.table("./UCI HAR Dataset/test/x_test.txt", stringsAsFactors = FALSE)
  activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt", stringsAsFactors = FALSE)
  
##set features names as column headings for factors_train and factors_test
  
  colnames(factors_train) = features[ , 2]
  colnames(factors_test) = features[ , 2]

##combine the training group into one data table and testing group in another
  
  train <- cbind(subject_train, activity_train, factors_train)       
  test <- cbind(subject_test, activity_test, factors_test)

##merge the training and testing groups into one data set and finish renaming all columns descriptively
  
  table <- rbind(train, test)
  names(table)[1] <- "Subject"
  names(table)[2] <- "Activity"
  
##use descriptive activity names and then extract measurements of mean and standard deviation
  
  mean_std <- merge(table, activity_labels, by = "Activity", by.y = "V1")
  names(mean_std) <- gsub("\\(|\\)", "", names(mean_std), perl = TRUE)
  names(mean_std) <- make.names(names(mean_std))
  mean_std <- mean_std[ , grepl("mean|std|Subject|Activity", names(table))]
  mean_std <- mutate(mean_std, Activity = V2) %>%
              select(-V2)
  tidy <- arrange(mean_std, Subject, Activity)
  tidy <- tidy[c(2, 1, 3:81)]
  
##appropriately label the data set with descriptive variable names
  
  names(tidy) <- gsub('Acc', "Acceleration", names(tidy))
  names(tidy) <- gsub('GyroJerk', "AngularAcceleration", names(tidy))
  names(tidy) <- gsub('Gyro', "AngularSpeed", names(tidy))
  names(tidy) <- gsub('Mag', "Magnitude", names(tidy))
  names(tidy) <- gsub('^t', "TimeDom.", names(tidy))
  names(tidy) <- gsub('^f', "FrequencyDom.", names(tidy))
  names(tidy) <- gsub('\\.mean', ".Mean", names(tidy))
  names(tidy) <- gsub('\\.std', ".StdDev", names(tidy))

##creates a second tidy data set with the average of each variable for each activity and each subject
  
  tidy_mean <- tbl_df(tidy) %>%
               group_by(Subject, Activity) %>%
               summarise_each(funs(mean))
  
##create text file
  
  write.table(tidy_mean, file = "tidy_means.txt", row.names = FALSE)