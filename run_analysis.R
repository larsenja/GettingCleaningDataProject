library(dplyr)
library(Hmisc)

# ########### Preparations ###########

# Labels, indices and acivities
labels<-read.csv("./UCI HAR Dataset/features.txt",sep="",header=FALSE)
labelvec<-as.vector(labels[,2])
index<-grep("mean\\()|std\\()",labelvec)
namevec<-grep("mean\\()|std\\()",labelvec,value=TRUE)

Activity<-read.csv("./UCI HAR Dataset/activity_labels.txt",sep="",header=FALSE)
names(Activity)<-c("ACTNO","activity")

# ########### Test data ###########
# Subjects
dfSubtst<-read.csv("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)
names(dfSubtst)<-c("sub_id")

# Activities
dfActtst<-read.csv("./UCI HAR Dataset/test/y_test.txt",header=FALSE)
names(dfActtst)<-c("ACTNO")

# Activitity values set
dfTemp<-cbind(dfSubtst,dfActtst)
#dfTemp2<-transform(dfTemp,tempid=as.character(paste0(sub_id,ACTNO)))
Mergnames<-merge(dfTemp,Activity,by.x="ACTNO",by.y="ACTNO")
Mergnames<-select(Mergnames,-ACTNO)


# Results
dfRes1<-read.csv("./UCI HAR Dataset/test/X_test.txt",sep="",header=FALSE)
dfRestst<-dfRes1[,index]
names(dfRestst)<-namevec

# Final test data
dfTESTdata<-cbind(Mergnames,dfRestst)


# ########### Training data ###########
# Subjects
dfSubtrain<-read.csv("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)
names(dfSubtrain)<-c("sub_id")

# Activities
dfActtrain<-read.csv("./UCI HAR Dataset/train/y_train.txt",header=FALSE)
names(dfActtrain)<-c("ACTNO")

# Activitity values set
dfTemp<-cbind(dfSubtrain,dfActtrain)
#dfTemp2<-transform(dfTemp,tempid=as.character(paste0(sub_id,ACTNO)))
Mergnames<-merge(dfTemp,Activity,by.x="ACTNO",by.y="ACTNO")
Mergnames<-select(Mergnames,-ACTNO)


# Results
dfRes1<-read.csv("./UCI HAR Dataset/train/X_train.txt",sep="",header=FALSE)
dfRestst<-dfRes1[,index]
names(dfRestst)<-namevec

# Final training data
dfTRAINdata<-cbind(Mergnames,dfRestst)

# Final data set

dfFinal<-rbind(dfTESTdata,dfTRAINdata)
write.table(dfFinal, "./UCI HAR Dataset/finaldata.txt", sep="\t",col.names=TRUE)

# Averages by activity and subject
