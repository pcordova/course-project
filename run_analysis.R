# Download data set zipped file:
if(!file.exists("./data")) {dir.create("./data")}
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url = URL, destfile = "./data/DS.zip", method = "curl")

# Extract contents:
unzip(zipfile = "./data/DS.zip", exdir = "./data")

#Load required libraries
library(data.table)
library(dplyr)

# Read "test" provided files:
testResults <- fread("./data/UCI Har Dataset/test/X_test.txt")
testLabels <- fread("./data/UCI Har Dataset/test/y_test.txt")
testSubjects <- fread("./data/UCI Har Dataset/test/subject_test.txt")

# Read "train" provided files:
trainResults <- fread("./data/UCI Har Dataset/train/X_train.txt")
trainLabels <- fread("./data/UCI Har Dataset/train/y_train.txt")
trainSubjects <- fread("./data/UCI Har Dataset/train/subject_train.txt")

# Merge the "Results" data sets ("train" + "test")
merged <- rbind(testResults, trainResults) # First task of the project

# Extract positions of "mean" and "std" columns
colNames <- fread("./data/UCI Har Dataset/features.txt")
msCols <- c(grep("mean\\(\\)",colNames$V2),
            grep("std\\(\\)",colNames$V2))

# Create a "depurated Results" data set
depurated <- merged[,..msCols] # Second task of the project

# Modify "colNames" names
colNames <- as.vector(unlist(colNames[msCols,2]))
colNames <- gsub("^t","time",colNames)
colNames <- gsub("^f","freq",colNames)
colNames <- gsub("-mean\\(\\)-","Mean.",colNames)
colNames <- gsub("-mean\\(\\)","Mean",colNames)
colNames <- gsub("-std\\(\\)-","Std.",colNames)
colNames <- gsub("-std\\(\\)","Std",colNames)

# Assign descriptive names to "depurated" table
names(depurated) <- colNames # Fourth task of the project (part 1)

# Read file and format appropriate names in "activity_labels.txt"
activityLabels <- fread("./data/UCI Har Dataset/activity_labels.txt")
activityLabels$V2 <- gsub("ING_", "", activityLabels$V2) %>%tolower()

# Bind all data objects
tidyData <- cbind(subject = rbind(testSubjects, trainSubjects),
      activity = rbind(testLabels, trainLabels),
      depurated)

# Final column names modification
names(tidyData)[1:2] <- c("subject", "activity") # Fourth task of the project (part 2)

# Assign "activityLabels" to "tidyData" table
tidyData$activity <- activityLabels$V2[tidyData$activity] # Third task of the project


# Create a second data set to hold the averages
meanTidyData <- tidyData %>%
            group_by(subject,activity) %>%
            summarise(across(everything(), mean), .groups = "keep") # Fifth task of the project. All done!
 
# Generate some friendly output
cat('Results are stored in tables: "tidyData" and "meanTidyData"')
