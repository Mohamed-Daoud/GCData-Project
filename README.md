## Scripts

There is only one script for this process called run_analysis.R

### How to to make the required input data visible to the script

* Unzip the project file
* Run the script run_analysis.R from the same level where "UCI HAR Dataset" directory is located

###### Note that you should not change the location of of any project file, simply keep all the unziped directories and files as is

### How the script works
The script works as follows:
* Set the path for X_test, X_train and features files
* Loads the data from the above three files creating three data frames xTest, xTrain and features
* changes the column names of xTest and xTrain using the second column of features data frame
* Add new column called Data.Type for xTest and xTrain data frames having the values 1 and 2 respectively
* Merge the xTest and xTrain, producing allData by placing the xTrain values after xTest using rbind() function
* The source of the data is distinguished using the Data.Type column
* At this point we have all the columns (i.e. variables) from both data frames
* We need to keep only those columns having the mean and standard deviation variables
* Create a character vector, called cNames, holding all column names (i.e. variable names) from features data frame
* Add the Data.Type column name to cNames as it is added to xTest and xTrain data frames but not to features data frame
* Using grep() function get all the positions where the word mean and std is mentioned
* Add the position 562 representing Data.Type column
* Using the output values reduce the list of cNames to only those positions holding mean and std
* Using the new list of cNames reduce the data frame allData to allNewData holding only the mean and std columns
* Export allNewData to tidyData.csv file
* ---
* Now we need to create another data frame with the averages of all variables (i.e. columns) distinguishing between train and test data
* Split the allData based on Data.Type column
* Get the average for the test data (i.e. list item named 1)
* Get teh average for the train data (i.e. list item named 2)
* Create a new data frame having three columns Average holding the names of the variables, TestDataAverage and TrainDataAverage
* Export allAvergae to tidyDataAverage.csv file


### Script output

##### Two files are produced tidyData.csv and tidyDataAverage.csv
Check the CodeBook.md file for more details about those output files

