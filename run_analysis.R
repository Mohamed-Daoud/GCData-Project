createTidyData <- function() { 
    # set the working directory one level up to "UCI HAR Datase" directory 
    # set the path for X_test and X_train holding the data
    xTestPath <- "./UCI HAR Dataset/test/X_test.txt"
    xTrainPath <- "./UCI HAR Dataset/train/X_train.txt"
    # set the path for features files holding the column names of the data
    featuresPath <- "./UCI HAR Dataset/features.txt"
    
    # now load the data
    # both test & training data has the same number of columns 561 columns
    xTest <- read.table(xTestPath)
    xTrain <- read.table(xTrainPath)
    # the features file shows the name of the columns respectively
    features <- read.table(featuresPath)
    # rename test and training data column names
    names(xTest) <- features$V2
    names(xTrain) <- features$V2
    # add new column to distinguish between them after being merged
    xTest$Data.Type <- 1
    xTrain$Data.Type <- 2
    # we would merge the tow data sets xTest and xTrain using rbind()
    allData <- rbind(xTest, xTrain)
    
    # now we need to extract only the mean and standard deviation values
    # first lets get all the column names having "mean" or "std" within them
    # get all column names in character vector then add the new column "Data.Type"
    cNames <- as.character(features$V2)
    cNames <- c(cNames, "Data.Type")
    # get all position holding "mean"
    meanPos <- grep("mean", cNames)
    # get all positions holding "std"
    stdPos <- grep("std", cNames)
    # create a character vector holding all positions of "mean" & "std"
    allPos <- c(meanPos, stdPos, 562)
    # reduce the cNames charater vector to only hold those positions
    cNames <- cNames[allPos]
    
    # now extract only those columns from the data frame holding the cNames
    allNewData <- allData[names(allData) %in% cNames]
    
    # export this data to a csv file
    print("Creating tidy data file")
    write.csv(allNewData, "tidyData.csv")
    print("Tidy data file created")
    
    # now we would create another data set with the average of all variables
    # first split the data based on the Data.Type
    allDataSplit <- split(allData, allData$Data.Type)
    # get the average for test data
    allAverage1 <- sapply(allDataSplit$"1", mean)
    # get the average for train data
    allAverage2 <- sapply(allDataSplit$"2", mean)
    # convert it to a data frame having three columns to look better
    allAverage <- data.frame(Variable=names(allAverage1), TestDataAverage=allAverage1, 
                                    TrainDataAverage=allAverage2)
    print("Creating file for averages")
    # export data frame to a csv file
    write.csv(allAverage, "tidyDataAverage.csv")
    
    print("Process Completed, you can check the files now")
    
}