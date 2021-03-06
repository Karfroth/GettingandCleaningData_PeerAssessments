# Getting and Cleaning Data PeerAssessments
##Introduction
This is assignment of `Getting and Cleaning Data` class in Coursera.

##Assignment
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

One of the most exciting areas in all of data science right now is wearable computing - [see for example][1] . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Here are the data for the project:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

 You should create one R script called run_analysis.R that does the following. 

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names. 
    5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Good luck!

##Solution
`run_analysis.R` file in this repo is solution. and `processed_data.txt` file is result of 5th instruction. It is needed to change name of extracted folder from **UCI HAR Dataset** to **Dataset**.

##How to use
* Download and unzip [this data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) in current working directory. After that, you should change folder name from **UCI HAR Dataset** to **Dataset**.
* Download `run_analysis.R` file in current working directory.
* Type `source("run_analysis.R")`. It will process automatically.
* Variable `tidydata` is result of step 4. And You can find `processed_data.txt` in working directory after use script file. It contains result of 5th instruction.

If you want to check final result, just check `processed.data` variable in R after processing of data, or just type `read.table("processed_data.txt")`.

###CodeBook
`Codebook.md` describes codes that used in this process. Check that file.

##Result
By using script, you will have processed data file name `processed_data.txt`. This file include datas that calculated each features by both subject and activity. And you can also find variable `tidydata`. It is dataset took the means and standard deviations from raw data.

[1]: http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/
