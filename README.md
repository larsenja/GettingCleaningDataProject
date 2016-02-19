# GettingCleaningDataProject
Repo for the Getting and Cleaning Data Course Project. 

This repo contains my work for Getting and Cleaning Data Course Project, Jan - Feb 2016.

The repo contains 1) a R-script that does the required analysis (run_analysis.R), 2) a Mark Down document describing variables, data and transformations (CodeBook.MD) and 3) a data set in .txt format (finaldata.txt), the output of the R-script.

The script assumes that the files from the project description is located in your Working Directory and has a similar structure.
I run R version 3.2.3 on a Windows PC.

The R-script is named run_analysis.R and the output is a .txt file named finaldata.txt. The output file is placed in the project folder where input files are stored.

The workings of the script.

First, the names of the features are read from the csv-file ad the relevant measures are extracted (name and index). According to the project assignment only measurements on mean and standard deviation are to be used.

For each of the test files and training files the following steps are taken:

Secondly, subject and activity files (subject_test.txt, y_test.txt and subject_train.txt, y_train.txt) are read from csv-files. The activity file is merged with the file containing names to appropriate name the values. 

Finally, the results are read from the cvs-files (X_test.txt and X_train.txt) and merged via cbind() with subject and activity data.

At the end, the resulting test and training data is merged by placing the dataframes on top of each other via rbind() and the resulting file is exported in .txt format.

Important note: Part 5 of the assignment is missing since I ran out of time. 

To reviewers: Have fun.
Jakob Larsen, 19 Feb 2016.


