library(dplyr)
library(plyr)
library(Hmisc)


# 1 Loading activity labels and features

Features<-read.csv("./UCI HAR Dataset/features.txt",sep="",header=FALSE)
ActivityLabels<-read.csv("./UCI HAR Dataset/activity_labels.txt",sep="",header=FALSE)

Features[,2]<-as.character(Features[,2])
ActivityLabels[,2]<-as.character(ActivityLabels[,2])

# 2 Prepare to extract only means and standard deviations

Featurevec<-as.vector(Features[,2])
index<-grep("mean\\(\\)|std\\(\\)",Featurevec)
Featurenames<-Features[index,2]

# 3 Merges training and test data sets

# 3.1 Measurement data

MeasurementsTest<-read.csv("./UCI HAR Dataset/test/X_test.txt",sep="",header=FALSE)
MeasurementsTrain<-read.csv("./UCI HAR Dataset/train/X_train.txt",sep="",header=FALSE)
Measurements<-rbind(MeasurementsTest,MeasurementsTrain)
  
# 3.2 Subjects

SubjectsTest<-read.csv("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)
SubjectsTrain<-read.csv("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)
subjects<-rbind(SubjectsTest,SubjectsTrain)

# 3.3 Activities

ActivityTest<-read.csv("./UCI HAR Dataset/test/y_test.txt",header=FALSE)
ActivityTrain<-read.csv("./UCI HAR Dataset/train/y_train.txt",header=FALSE)
Activities<-rbind(ActivityTest,ActivityTrain)

# 3.4 Select only measurements on mean and standard deviation

Measurements<-Measurements[,index]

# 3.5 Combine in dataset

FinalData<-cbind(subjects,Activities,Measurements)

# 4 Appropriately name and label variables

names(FinalData)<-c("subject","activity",Featurenames)
names(FinalData)<-gsub("BodyBody", "Body", names(FinalData))

# 5 Change subjects and activities to factors

FinalData$subject <- as.factor(FinalData$subject)
FinalData$activity <- factor(FinalData$activity, levels = ActivityLabels[,1], labels = ActivityLabels[,2])

# 6 Write finaldata to file

write.table(FinalData, "./UCI HAR Dataset/finaldata.txt", sep="\t",col.names=TRUE)

# 7 Create a tidy data set from the final data set above with the average for each subject and each activity  

table <- ddply(FinalData, c("subject", "activity"), function(x) colMeans(x[,3:68]))

write.table(table, "./UCI HAR Dataset/tidydata.txt", row.names = FALSE, quote = FALSE)



