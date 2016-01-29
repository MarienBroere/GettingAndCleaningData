#Getting and Cleaning Data - Course Project


##Procedure:
1. Dowload data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Run R script: run_analysis.R

##The steps in the R script are:
1. Reading source files
2. Merges test and train files, add subject and activity to each observation
3. Adds columns names
4. Filters datatable on mean and std columns.
5. Reshape data, group and calculate the mean.
6. Write tidy_data and tidy_data_average to .txt file


##Input Files: 
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels

See the UCI HAR Dataset directory for a more detailed description of these files.

##Output Files:
- tidy_data.txt
- tidy_data_average.txt
