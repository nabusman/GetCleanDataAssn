# Load Datasets
unzip("UCI HAR Dataset.zip")
features <- read.csv("features.txt",
                     sep = "",
                     stringsAsFactors = FALSE,
                     header = FALSE)
setwd("UCI HAR Dataset/train/")
training <- read.csv("X_train.txt",
                     sep = "",
                     stringsAsFactors = FALSE,
                     header = FALSE)
trainingLabels <- read.csv("y_train.txt",
                           sep = "",
                           stringsAsFactors = FALSE,
                           header = FALSE)
trainingSubjects <- read.csv("subject_train.txt",
                             sep = "",
                             stringsAsFactors = FALSE,
                             header = FALSE)
setwd("../test")
testing <- read.csv("X_test.txt",
                     sep = "",
                     stringsAsFactors = FALSE,
                     header = FALSE)
testingLabels <- read.csv("y_test.txt",
                           sep = "",
                           stringsAsFactors = FALSE,
                           header = FALSE)
testingSubjects <- read.csv("subject_test.txt",
                            sep = "",
                            stringsAsFactors = FALSE,
                            header = FALSE)
setwd("../../")

# Appropriately labels the data set with descriptive variable names. 
names(training) <- features[,2]
names(testing) <- features[,2]

# Merges the training and the test sets to create one data set.
combinedDataset <- rbind(
    cbind(training, trainingLabels, trainingSubjects),
    cbind(testing, testingLabels, testingSubjects))
names(combinedDataset)[562] <- "Labels"
names(combinedDataset)[563] <- "Subjects"
combinedDataset$Subjects <- as.factor(combinedDataset$Subjects)

# Uses descriptive activity names to name the activities in the data set
combinedDataset$Labels <- as.factor(combinedDataset$Labels)
levels(combinedDataset$Labels) <- c("WALKING",
                                    "WALKING_UPSTAIRS",
                                    "WALKING_DOWNSTAIRS",
                                    "SITTING",
                                    "STANDING",
                                    "LAYING")

# Extracts only the measurements on the mean and standard deviation for each
# measurement.
stdOrMeanSubset <- combinedDataset[,grep("mean|std", names(combinedDataset))]

# Creates a second, independent tidy data set with the average of each variable
# for each activity and each subject. 

newTidy <- aggregate(. ~ Subjects + Labels, data = combinedDataset, mean)

write.table(newTidy, "TidyHAR.txt", row.names = FALSE)
