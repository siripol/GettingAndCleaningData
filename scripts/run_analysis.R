widths <- c(1, 1, 20)


#data <- read.fwf("~/data/UCI HAR Dataset/activity_labels.txt", widths=widths, stringsAsFactors=FALSE)
#data <- data[, !names(data) %in% c("V2")]
#names(data) <- c("classLabels", "activity")

# ################### Prepare Data ###################
path <- "~/data/UCI HAR Dataset"
data_activityLabels <- read.table(file.path(path, "activity_labels.txt")
                             , col.names = c("activity", "activity_name"))
data_features <- read.table(file.path(path, "features.txt")
                            , col.names = c("index", "featureNames"))

# Extract only mean and standard deviation columns
mean_std_indices <- grep("mean\\(\\)|std\\(\\)", data_features$featureNames)


# Read in the Train data
data_x_train <- read.table(file.path(path, "train", "X_train.txt"))
data_y_train <- read.table(file.path(path, "train", "Y_train.txt"))
data_subject_train <- read.table(file.path(path, "train", "subject_train.txt"))

data_x_train <- data_x_train[, mean_std_indices]
names(data_subject_train) <- c("subject")
names(data_y_train) <- c("activity")
names(data_x_train) <- data_features$featureNames[mean_std_indices]
data_train <- cbind(data_subject_train, data_y_train, data_x_train)

# Read in the Test data
data_x_test <- read.table(file.path(path, "test", "X_test.txt"))
data_y_test <- read.table(file.path(path, "test", "Y_test.txt"))
data_subject_test <- read.table(file.path(path, "test", "subject_test.txt"))

data_x_test <- data_x_test[, mean_std_indices]
names(data_subject_test) <- c("subject")
names(data_y_test) <- c("activity")
names(data_x_test) <- data_features$featureNames[mean_std_indices]
data_test <- cbind(data_subject_test, data_y_test, data_x_test)

# Merge Data Set
data_set <- rbind(data_train, data_test)
# ################### End Prepare Data ###################

#print(nrow(data_set))
data_set[["activity"]] <- factor(data_set[["activity"]]
                                  , levels = data_activityLabels[["activity"]]
                                  , labels = data_activityLabels[["activity_name"]])


data_set[["subject"]] <- as.factor(data_set[["subject"]])
# print(nrow(data_set))
# print(length(names(data_set)))
data_set <- reshape2::melt(data = data_set, id = c("subject", "activity"))
# print(nrow(data_set))
# print(length(names(data_set)))
data_set <- reshape2::dcast(data = data_set, subject + activity ~ variable, fun.aggregate = mean)
# print(nrow(data_set))
# print(length(names(data_set)))

#creates a second, independent tidy data set with the average of each variable for each activity and each subject
data.table::fwrite(x = data_set, file = file.path(path, "tidyData.txt"), quote = FALSE)
