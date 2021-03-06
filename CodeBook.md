# Human Activity Recognition

## Input data files
The input data is collected from three main sources of the project files
* X_test.txt having test data holding all the reading types (e.g. the mean & standard deviatiouns) for various signals (e.g. tBodyAcc) the file holds no header
* X_train.txt having training data holding all the reading types for various signals and the file holds no header
* features.txt having all the reading names with all combinations of reading types/Signals corresponding to columns names in X_test and X_train files (i.e. the header of those files)


## Output data files
The output data files are the following
* tidyData.csv representing the merged data from the three data sources above, then reduced to only those having the mean and standard deviation values
* tidyDataAverage.csv representing the average of all variables categorized by test and train data

### tidyData.csv
the output file has 79 Columns representing only those variables holding the mean and standard deviation values + 1 more column added by the script run_analysis.R to distinguish between test and train data
* 1-tBodyAcc-mean()-X
* 2-tBodyAcc-mean()-Y
* 3-tBodyAcc-mean()-Z
* 4-tBodyAcc-std()-X
* 5-tBodyAcc-std()-Y
* 6-tBodyAcc-std()-Z
* 7-tBodyAcc-mad()-X
* .................................
* 77-fBodyBodyGyroJerkMag-mean()
* 78-fBodyBodyGyroJerkMag-std()
* 79-fBodyBodyGyroJerkMag-meanFreq()
* 80-Data.Type [value of 1 for test data and 2 for train data]

### tidyDataAverage.csv
The output file has three Columns
* 1-Variable [showing measurement type to be averaged]
* 2-TestDataAverage [showing the average of the measurement for all the test data]
* 3-TrainDataAverage [showing the average  of the measurement for all the train data]

The file has been structured in this manner to allow for test and train data comparison and in case an average for both is required, it would be fairly easy to be produced

## How to reproduce the output
* 1. Unzip the project file
* 2. Run the script run_analysis.R from the same level where "UCI HAR Dataset" directory is located
* 3. The two files mentioned above should be produced (i.e. tidyData.csv and tidyDataAverage.csv)
* 4. Note that you should not change the location of of any project file, simply keep all the unziped directories and files as is

run_analysis.R script provides in details the step-by-step process till the files are produced


