# Merges the training and the test sets to create one data set. =====================
  
# I downloaded the files 

# check the right working directory
getwd()
setwd("C:/Users/ma12p/Documents/UCI HAR Dataset")

# loading TRAIN data sets 

dxtrain <- read.csv("train/X_train.txt", sep="", header=FALSE)
  head(dxtrain)
  dim(dxtrain)

dytrain <- read.csv("train/Y_train.txt", sep="", header=FALSE)
  head(dytrain)

dstrain <- read.csv("train/subject_train.txt", sep="", header=FALSE)
  head(dstrain)

dtrain <- dxtrain
dtrain[,562] <- dytrain
dtrain[,563] <- dstrain
rm(dxtrain, dytrain, dstrain) 

#loading TEST datasets (faster version)

dtest       <- read.table("test/X_test.txt")
dtest[,562] <- read.table("test/y_test.txt")
dtest[,563] <- read.table("test/subject_test.txt")

# merging by adding new rows
data <- rbind(dtrain, dtest) 
rm(dtrain,dtest)

# Extracts only the measurements on the mean and standard deviation for each measurement.====

features <- read.table("features.txt")
head(features)

# select columns with -mean() or -std() in their names
meanstd <- grep("-(mean|std)\\(\\)", features[, 2])

# subset/extract the columns
data <- data[, c(meanstd,562,563)]


# Uses descriptive activity names to name the activities in the data set ====

# load activity labels
activitylabels <- read.table("activity_labels.txt")
activitylabels[,2] <- as.character(activitylabels[,2])

# add labels to activity variable and factor subjects
data[,67] <- factor(data[,67], levels = activitylabels[,1], labels = activitylabels[,2])
data[,68] <- as.factor(data[,68])


# Appropriately labels the data set with descriptive variable names. ====

# add column names
namecol <- as.character(features[meanstd, 2])
namecol <- gsub('[()]', '', namecol)
names(data) <- c(namecol, "activity", "subject") 

# From the data set in step 4, creates a second, independent tidy data set with the average ====
# of each variable for each activity and each subject. 

# install.packages("reshape")
library(reshape) # melt function
datamelt <- melt(data, id=c("subject", "activity"))

# install.packages("reshape2")
library(reshape2) # dcast function
datatidy <- dcast(datamelt, subject + activity ~ variable, mean) 

write.csv(datatidy, "tidy.csv", row.names = FALSE)
