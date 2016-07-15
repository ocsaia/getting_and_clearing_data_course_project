# Clean up workspace
rm(list=ls(all = T))

library(plyr)

filename <- "uci_har_dataset.zip"
datadir <- paste0(getwd(), "/data/uci_har_dataset")

#Download and unzip dataset, if necessary

if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename)
} 

if (!file.exists(datadir)) {
  unzip(filename, exdir = datadir)
}

datadir <- paste0(datadir, "/UCI HAR Dataset")

if (!file.exists(datadir)){
  stop(paste0("Data directory is not exists: ", datadir))
}

#print(datadir)

# step 1: Merges the training and the test sets to create one data set

  # Load traning datasets

  x_train <- read.table(paste0(datadir,"/train/X_train.txt"))
  y_train <- read.table(paste0(datadir,"/train/y_train.txt"))
  subject_train <- read.table(paste0(datadir,"/train/subject_train.txt"))

  # Load test datasets

  x_test <- read.table(paste0(datadir,"/test/X_test.txt"))
  y_test <- read.table(paste0(datadir,"/test/y_test.txt"))
  subject_test <- read.table(paste0(datadir,"/test/subject_test.txt"))

  # Merge training and test datasets

  x_merge <- rbind(x_train, x_test)
  y_merge <- rbind(y_train, y_test)
  subject_merge <- rbind(subject_train, subject_test)

# step 2: Extracts only the measurements on the mean and standard deviation for each measurement.

  # Load features
  features <- read.table(paste0(datadir, "/features.txt"))

  #Extract only mean and std dev features
  mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2])


# step 3: Uses descriptive activity names to name the activities in the data set

  # Load activity labels 
  activities <- read.table(paste0(datadir, "/activity_labels.txt"))

  y_merge[, 1] <- activities[y_merge[, 1], 2]
  
  #modify variable name
  names(y_merge) <- "activity"

# step 4: Appropriately labels the data set with descriptive variable names.

  #modify variable name
  names(subject_merge) <- "subject"
  
  x_merge <- x_merge[, mean_and_std_features]

  #add formatted names of variable to x_merge (i prefer underscore naming convention)
  names(x_merge) <- tolower(gsub("\\-", "_", gsub("[\\)\\(]","", gsub("([a-z])([A-Z])", "\\1_\\L\\2", features[mean_and_std_features, 2], perl = TRUE))))

# step 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

  # bind all the data in a single data set
  all_data <- cbind(x_merge, y_merge, subject_merge)

  averages_data <- ddply(all_data, .(subject, activity), function(x) colMeans(x[, 1:66]))

  write.table(averages_data, "tidy_data.txt", row.name=FALSE)
