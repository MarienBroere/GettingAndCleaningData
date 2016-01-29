#CodeBook

##Summary choices:
The test and train data set are merged. This data is filtered on mean and std columns, resulting in tidy_data.txt

tidy_data.txt is grouped by:
- subject
- activity
- variable

Based on the grouped data the mean is calculated of the variable column. 
The result is tidy_data_average.txt with the mean per subject, per activity, per variable.


##Variables:
In tidy_data.txt and tidy_data_average.txt the following variables are available, per subject and activity:
- fbodyacc-mean()-x
- fbodyacc-mean()-y
- fbodyacc-mean()-z
- fbodyacc-std()-x
- fbodyacc-std()-y
- fbodyacc-std()-z
- fbodyaccjerk-mean()-x
- fbodyaccjerk-mean()-y
- fbodyaccjerk-mean()-z
- fbodyaccjerk-std()-x
- fbodyaccjerk-std()-y
- fbodyaccjerk-std()-z
- fbodyaccmag-mean()
- fbodyaccmag-std()
- fbodybodyaccjerkmag-mean()
- fbodybodyaccjerkmag-std()
- fbodybodygyrojerkmag-mean()
- fbodybodygyrojerkmag-std()
- fbodybodygyromag-mean()
- fbodybodygyromag-std()
- fbodygyro-mean()-x
- fbodygyro-mean()-y
- fbodygyro-mean()-z
- fbodygyro-std()-x
- fbodygyro-std()-y
- fbodygyro-std()-z
- tbodyacc-mean()-x
- tbodyacc-mean()-y
- tbodyacc-mean()-z
- tbodyacc-std()-x
- tbodyacc-std()-y
- tbodyacc-std()-z
- tbodyaccjerk-mean()-x
- tbodyaccjerk-mean()-y
- tbodyaccjerk-mean()-z
- tbodyaccjerk-std()-x
- tbodyaccjerk-std()-y
- tbodyaccjerk-std()-z
- tbodyaccjerkmag-mean()
- tbodyaccjerkmag-std()
- tbodyaccmag-mean()
- tbodyaccmag-std()
- tbodygyro-mean()-x
- tbodygyro-mean()-y
- tbodygyro-mean()-z
- tbodygyro-std()-x
- tbodygyro-std()-y
- tbodygyro-std()-z
- tbodygyrojerk-mean()-x
- tbodygyrojerk-mean()-y
- tbodygyrojerk-mean()-z
- tbodygyrojerk-std()-x
- tbodygyrojerk-std()-y
- tbodygyrojerk-std()-z
- tbodygyrojerkmag-mean()
- tbodygyrojerkmag-std()
- tbodygyromag-mean()
- tbodygyromag-std()
- tgravityacc-mean()-x
- tgravityacc-mean()-y
- tgravityacc-mean()-z
- tgravityacc-std()-x
- tgravityacc-std()-y
- tgravityacc-std()-z
- tgravityaccmag-mean()
- tgravityaccmag-std()

##Experimental study design:
Data is downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

