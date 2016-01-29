library(data.table)
library(tidyr)
library(dplyr)

subject_train <-  './UCI HAR Dataset/train/subject_train.txt'
subject_test <- './UCI HAR Dataset/test/subject_test.txt'
X_train <- './UCI HAR Dataset/train/X_train.txt'
X_test <-  './UCI HAR Dataset/test/X_test.txt'
y_train <- './UCI HAR Dataset/train/y_train.txt'
y_test <- './UCI HAR Dataset/test/y_test.txt'

subject <-  rbind(fread(input = subject_test), fread(input=subject_train))

activitynumbers <- rbind(fread(input = y_test, col.names ='activitynumber'), fread(input=y_train, col.names ='activitynumber'))
activityLabels <- fread(input = './UCI HAR Dataset/activity_labels.txt', col.names = c('activitynumber', 'activity'))
activities <- merge(activitynumbers, activityLabels, by = 'activitynumber')

X <- cbind(subject, activities$activity, (rbind(fread(input = X_test), 
                                                fread(input=X_train))))
setnames(X, tolower(append(c('subject', 'activity'), 
                           fread(input = './UCI HAR Dataset/features.txt')[[2]])))

tidy_data <- select(X, subject, activity, matches("mean[(]"), matches('std()'))

rm(list=setdiff(ls(), "tidy_data"))

tidy_data_average <- tidy_data %>% 
        gather(variable, value, - subject, -activity) %>% 
        group_by(subject, activity, variable) %>% summarise(mean(value))

write.table(tidy_data_average, "tidy_data_average.txt", row.name = FALSE)