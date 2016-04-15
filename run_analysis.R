
# STEP 0: Premable 
# All relevent R packages are loaded
library(plyr)
library(dplyr)

# For long form column names use 'ColumnFormat = "Long"', 
# for abbreviated column names comment out this line or set ColumnFormat = "Short".
ColumnFormat <-  "Long"

# STEP 1 
# Download the Data to your current working directory if this has not already been done.
if(!file.exists("GalaxyData.zip")){
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
            destfile = "GalaxyData.zip",method = "curl")
      unzip("GalaxyData.zip")
}
# Change working directory to the (newly created) folder with the Galaxy S data set 
OldDir <- getwd()
setwd("./UCI HAR Dataset")

# STEP 2
# First we extract the meta-data for the experiments 
# 1 - The column names for the x varibles found in features.txt
# 2 - The activity labels for the y variables found in activity_labels.txt

xNames <- read.table("features.txt", stringsAsFactors = F)[,2]
yLabels <- read.table("activity_labels.txt")[,2]

# STEP 3
# Since only mean and standard diviation measurements are desired
# the relevent columns are found from xNames. 
# The names of the relevent columns are also cleaned at this time to be more discriptive as per
# point 4 of the project. This is done with the information in features_info.txt.
# Note: The original abbreviation may be used by setting ColumnFormat = "Short".

MeanStdIndx <- grep("(mean|std)\\(\\)",xNames)

if( ColumnFormat == "Long"){
      xNames[MeanStdIndx] <- gsub("-", ".", xNames[MeanStdIndx])
      xNames[MeanStdIndx] <- gsub("mean\\(\\)", "mean", xNames[MeanStdIndx])
      xNames[MeanStdIndx] <- gsub("std\\(\\)", "standard.deviation", xNames[MeanStdIndx])
      xNames[MeanStdIndx] <- gsub("^t", "time.", xNames[MeanStdIndx])
      xNames[MeanStdIndx] <- gsub("^f", "frequency.", xNames[MeanStdIndx])
      xNames[MeanStdIndx] <- gsub("Acc", ".accelerometer", xNames[MeanStdIndx])
      xNames[MeanStdIndx] <- gsub("Gyro", ".gyroscope", xNames[MeanStdIndx])
      xNames[MeanStdIndx] <- gsub("Mag", ".magnitude", xNames[MeanStdIndx])
      xNames[MeanStdIndx] <- gsub("Jerk", ".jerk", xNames[MeanStdIndx])
      ## This seems like it was just a mistake in the naming.
      ## There's nothing about bodybody in the documentation.
      xNames[MeanStdIndx] <- gsub("BodyBody", "Body", xNames[MeanStdIndx])
      xNames[MeanStdIndx] <- tolower(xNames[MeanStdIndx])
}

# STEP 4
# The revelevent data can now be retrieved for both the test and training data

subject_test  <- read.table("./test/subject_test.txt", col.names = "subject")
subject_train <- read.table("./train/subject_train.txt", col.names = "subject")

X_test      <- read.table("./test/X_test.txt", col.names = xNames)[,MeanStdIndx]
X_train     <- read.table("./train/X_train.txt", col.names = xNames)[,MeanStdIndx]

Y_test      <- read.table("./test/Y_test.txt", col.names = "activity")
Y_train     <- read.table("./train/Y_train.txt", col.names = "activity")

# STEP 5
# The data are now put together into a data.frame for the Test and Taining data
# respectively and finally merged into one single data.frame.

TestData    <- data.frame(subject_test,Y_test,X_test)
TrainData   <- data.frame(subject_train,Y_train,X_train)

TotalData   <- rbind(TestData,TrainData)

# STEP 6
# The column of activities are redefined as a factor using the
# associated activity name for each integer element of the Y variable. 

TotalData$activity <- factor(TotalData$activity, levels = 1:6, labels = yLabels)

# STEP 7
# Finally, a second data.frame is created sumarizing the 
# average of each variable for each activity and each subject.
TidyProjectData = ddply(TotalData, c("subject","activity"), .fun = numcolwise(mean))

## STEP 8
## Return to the original directory and save the final data file
setwd(OldDir)
write.table(TidyProjectData, file = "TidyProject.txt",  row.name=FALSE )

