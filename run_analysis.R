library(dplyr)
# Step1 data merging from training and testing data
xt<-read.table("C:/Users/BoKaLoK/Desktop/UCI HAR Dataset/train/X_train.txt")
yt<-read.table("C:/Users/BoKaLoK/Desktop/UCI HAR Dataset/train/y_train.txt")
st<-read.table("C:/Users/BoKaLoK/Desktop/UCI HAR Dataset/train/subject_train.txt")

train<-cbind(xt,st,yt)
xte<-read.table("C:/Users/BoKaLoK/Desktop/UCI HAR Dataset/test/X_test.txt")
yte<-read.table("C:/Users/BoKaLoK/Desktop/UCI HAR Dataset/test/y_test.txt")
ste<-read.table("C:/Users/BoKaLoK/Desktop/UCI HAR Dataset/test/subject_test.txt")
test<-cbind(xte,ste,yte)
finaldata<-rbind(train,test)
#Steps- 4 Appropriately labeling data (I have completed step2 and 4 later)
feat<-read.table("C:/Users/BoKaLoK/Desktop/UCI HAR Dataset/features.txt")
colnames(finaldata)<-feat[,2]
colnames(finaldata)[562]<-"Subject_ID"
colnames(finaldata)[563]<-"Activity_ID"
#Step 2 Extracting maen() and std() measurements
grep("mean\\()|std\\()",feat[,2])
extracted<-finaldata[,c(grep("-mean\\(\\)|-std\\(\\)",feat[,2]),562,563)]
#Step 3 naming the activities
Act_list<-read.table("C:/Users/BoKaLoK/Desktop/UCI HAR Dataset/activity_labels.txt")
extracted["Activity"]<-rep(0,times=length((extracted[,1])))
extracted$Activity<-Act_list[match(extracted$Activity_ID,Act_list$V1),2]
# Step 5 creating tidy data sets
tidy_data<-extracted %>% group_by(Subject_ID,Activity) %>% summarise_all(funs(mean))
write.table(tidy_data,"tidy_data.csv", row.names = FALSE)
message("Genrated output without error.\n Completed")