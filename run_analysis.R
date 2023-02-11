# Downloading a zipped file:
if(!file.exists("./data")) {dir.create("./data")}
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url = URL, destfile = "./data/DS.zip", method = "curl")

# Extracting contents:
unzip(zipfile = "./data/DS.zip", exdir = "./data")

library(data.table)
library(dplyr)
label<-fread("./data/UCI Har Dataset/activity_labels.txt")
label <- label[,.(tolower(V2))]
