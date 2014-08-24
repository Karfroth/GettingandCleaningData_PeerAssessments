library(data.table)

#Q1.
train.x<-read.table("Dataset/train/X_train.txt")
test.x<-read.table("Dataset/test/X_test.txt")
data.x<-rbind(train.x, test.x)

train.y<-read.table("Dataset/train/y_train.txt")
test.y<-read.table("Dataset/test/y_test.txt")
activity<-rbind(train.y, test.y)

train.subject<-read.table("Dataset/train/subject_train.txt")
test.subject<-read.table("Dataset/test/subject_test.txt")
subject<-rbind(train.subject, test.subject)
names(subject)<-"Subject"

#Q2.
feat<-read.table("Dataset/features.txt")
num.col<-grep("mean[()]|std[()]", feat[,2])
feature<-feat[num.col,]
feature[,2]<-gsub("mean[(][)]", "Mean", feature[,2])
feature[,2]<-gsub("std[(][)]", "Std", feature[,2])

data<-data.x[,num.col]
names(data)<-feature[,2]

#Q3.
activity.labels<-read.table("Dataset/activity_labels.txt")
activity.labels[,2]<-tolower(activity.labels[,2])
activity<-as.data.frame(activity.labels[unlist(activity) ,2])
colnames(activity)<-"Activity"

#Q4.
tidydata<-cbind(subject, activity, data)

#Q5.
processed.data<-aggregate(tidydata[3:68], by=c(list(tidydata$Subject),list(tidydata$Activity)), FUN=mean)
names(processed.data)[1:2]<-c("Subject", "Activity")
write.table(processed.data, "processed_data.txt", row.name=FALSE)