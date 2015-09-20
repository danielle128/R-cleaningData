library(plyr)
## Extracts the column position of the measurements on the mean and standard deviation for each measurement.
features <- read.table("~/R/Getting&Cleaning_Data/Project/UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
feature_select <-grep("*(mean..|std..)(.?.?)$",features$V2)
feature_text <-grep("*(mean..|std..)(.?.?)$",features$V2,value = TRUE)


## Load the data of selected columns.
df_Xtrain <- read.table("~/R/Getting&Cleaning_Data/Project/UCI HAR Dataset/train/X_train.txt")[,feature_select]
df_ytrain <- read.table("~/R/Getting&Cleaning_Data/Project/UCI HAR Dataset/train/y_train.txt")
df_subtrain <- read.table("~/R/Getting&Cleaning_Data/Project/UCI HAR Dataset/train/subject_train.txt")
df_Xtest <- read.table("~/R/Getting&Cleaning_Data/Project/UCI HAR Dataset/test/X_test.txt")[,feature_select]
df_ytest <- read.table("~/R/Getting&Cleaning_Data/Project/UCI HAR Dataset/test/y_test.txt")
df_subtest <- read.table("~/R/Getting&Cleaning_Data/Project/UCI HAR Dataset/test/subject_test.txt")

## Appropriately labels the data set with descriptive feature names. 
feature_text1<-gsub("tBody","Time Domain ",feature_text)
feature_text2<-gsub("fBody","Frequency Domain ",feature_text1)
feature_text3<-gsub("Acc"," Accelerator Data ",feature_text2)
feature_text4<-gsub("Gyro"," Gyroscope Data ",feature_text3)
feature_text5<-gsub("AccJerk","Bodylinear Acceleration",feature_text4)
feature_text6<-gsub("GyroJerk","Angular Acceleration",feature_text5)
feature_text7<-gsub("Mag"," Magnitude",feature_text6)
feature_text8<-gsub("tGravity","Time Domain Gravity",feature_text7)
feature_text9<-gsub("mean()","Mean Value",feature_text8)
feature_text10<-gsub("std()","Standard Deviation",feature_text9)


## Merges the training and the test sets to create one data set.
df_X <- rbind(df_Xtrain,df_Xtest)
df_y <- rbind(df_ytrain,df_ytest)
df_subject <- rbind(df_subtrain,df_subtest)

colnames(df_X)<-feature_text10
colnames(df_subject)<-"Subject"
df <- cbind(df_subject,df_X)

## Uses descriptive activity names to name the activities in the data set
activity_name <- read.table("~/R/Getting&Cleaning_Data/Project/UCI HAR Dataset/activity_labels.txt", stringsAsFactors=FALSE)
activity<-merge(df_y,activity_name,by.x="V1",by.y = "V1",all=TRUE)
colnames(activity)<-c("V1","Activity")
Activity<-activity$Activity
df <- cbind(df,Activity)

## Calculate the average of each variable for each activity and each subject, and save as txt file.
output<-ddply(df, .(Activity,Subject), numcolwise(mean))
colnames(output)<-c("Activity","Subject",paste("Averaged",feature_text10))
write.table(output, "~/R/Getting&Cleaning_Data/Project/UCI HAR Dataset/tidy_mean_data.txt", sep="\t",row.name=FALSE)