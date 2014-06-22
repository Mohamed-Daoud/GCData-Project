Human Activity Recognition

The input data is collected from three main sources of the project files
X_test.txt having test data holding all the reading types (e.g. the mean & standard deviatiouns) for various signals (e.g. tBodyAcc) the file holds no header
X_train.txt having training data holding all the reading types for various signals and the file holds no header
features.txt having all the reading names with all combinations of reading types/Signals corresponding to columns names in X_test and X_train files (i.e. the header of those files)

The output data files are the following
tidyData.csv representing the merged data from the three data sources above
tidyDataAverage.csv representing the average of all variables categorized by test and train data

Output files details

tidyData.csv
561 Columns represeted in the features.txt file + 1 more column to distinguish between test and train data

tidyDataAverage.csv
3 columns
Columns
Variable
  showing for each row one type of measurement
TestDataAverage
  showing the average of the measurement for all the test data
TrainDataAverage
  showing the average  of the measurement for all the train data



