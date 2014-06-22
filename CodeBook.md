## Human Activity Recognition

### Input data files
The input data is collected from three main sources of the project files
* X_test.txt having test data holding all the reading types (e.g. the mean & standard deviatiouns) for various signals (e.g. tBodyAcc) the file holds no header
* X_train.txt having training data holding all the reading types for various signals and the file holds no header
* features.txt having all the reading names with all combinations of reading types/Signals corresponding to columns names in X_test and X_train files (i.e. the header of those files)


### Output data files
The output data files are the following
* tidyData.csv representing the merged data from the three data sources above
* tidyDataAverage.csv representing the average of all variables categorized by test and train data

### tidyData.csv
561 Columns represeted in the features.txt file + 1 more column to distinguish between test and train data
* 1-tBodyAcc-mean()-X
* 2-tBodyAcc-mean()-Y
* 3-tBodyAcc-mean()-Z
* 4-tBodyAcc-std()-X
* 5-tBodyAcc-std()-Y
* 6-tBodyAcc-std()-Z
* 7-tBodyAcc-mad()-X
* .................................
* 556-angle(tBodyAccJerkMean),gravityMean)
* 557-angle(tBodyGyroMean,gravityMean)
* 558-angle(tBodyGyroJerkMean,gravityMean)
* 559-angle(X,gravityMean)
* 560-angle(Y,gravityMean)
* 561-angle(Z,gravityMean)
* 562-Data.Type [value of 1 for test data and 2 for train data]

### tidyDataAverage.csv
the output has three Columns
* 1-Variable [showing measurement type which is averaged]
* 2-TestDataAverage [showing the average of the measurement for all the test data]
* 3-TrainDataAverage [showing the average  of the measurement for all the train data]

### How to reproduce the output
* 1. Unzip the project file
* 2. Run the script run_analysis.R from the same level where "UCI HAR Dataset" directory is located
* 3. The two files mentioned above should be produced (i.e. tidyData.csv and tidyDataAverage.csv)
* 4. Note that you should not change the location of of any project file, simply keep all the unziped directories and files as is

run_analysis.R script provides in details the step-by-step process till the files are produced


