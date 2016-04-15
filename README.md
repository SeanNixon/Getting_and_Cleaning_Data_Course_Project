# Getting and Cleaning Data Course Project

This code downloads the "Human Activity Recognition Using Smartphones" dataset from 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

and then proceeds to 

1 - Discard x variables not associated with taking the mean or standard deviation.

2 - Merge the test and training data sets. 

3 - Replace the numbered activities in the y variable with the associated activity name.

4 - The x variables are averaged for each subject and activity combination.

Optional - For a version of the final data frame with the original abbreviated column names change ColumnFormat to "Short", otherwise, the default
 (ColumnFormat = "Long") produces column names for the x variables with detailed descriptions. 
 
 ## Instruction for use
 
 Download the file run_analysis.R and run source("run_analysis.R"). This will create a new directory "./UCI HAR Dataset" with 
 raw data files and generate the data frame "TidyProjectData.txt" with the modified data in your current working directory.
 

