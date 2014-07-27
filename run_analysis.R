
getdata <- function(datafil) {
  read.table(datafil, header = FALSE, sep = "")  
} 

## The current working directory must contain training dataset
## in file train/x_train.txt and test dataset in test/x_test.txt 
filtrain="train/x_train.txt"
filtest="test/x_test.txt"

filhdr="features.txt"
headerdata = getdata(filhdr)

## Obtain the train dataset
traindata = getdata(filtrain)
## Obtain the test dataset
testdata = getdata(filtest)

## Merge the train and test datasets into a single set
mergedata = rbind(traindata, testdata)

## Define the columns in the source dataset for the target dataset (mean and standard deviation)
relevantcols = c(1,2,3,4,5,6,41,42,43,44,45,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,266,267,268,269,270,271,345,346,347,348,349,350,424,425,426,427,428,429,503,504,516,517,529,530,542,543)

## Derive a new dataset based on columns of interest (mean and standard deviation)
vertprojdata = mergedata[,relevantcols]

## Specify descriptive variable names for the target dataset
newcolnames = c('meanTdomainBodyAcclr_X','meanTdomainBodyAcclr_Y','meanTdomainBodyAcclr_Z','sdevTdomainBodyAcclr_X','sdevTdomainBodyAcclr_Y','sdevTdomainBodyAcclr_Z','meanTdomainGravityAcclr_X','meanTdomainGravityAcclr_Y','meanTdomainGravityAcclr_Z','sdevTdomainGravityAcclr_X','sdevTdomainGravityAcclr_Y','sdevTdomainGravityAcclr_Z','meanTdomainBodyAcclrJerk_X','meanTdomainBodyAcclrJerk_Y','meanTdomainBodyAcclrJerk_Z','sdevTdomainBodyAcclrJerk_X','sdevTdomainBodyAcclrJerk_Y','sdevTdomainBodyAcclrJerk_Z','meanTdomainBodyGyro_X','meanTdomainBodyGyro_Y','meanTdomainBodyGyro_Z','sdevTdomainBodyGyro_X','sdevTdomainBodyGyro_Y','sdevTdomainBodyGyro_Z','meanTdomainBodyGyroJerk_X','meanTdomainBodyGyroJerk_Y','meanTdomainBodyGyroJerk_Z','sdevTdomainBodyGyroJerk_X','sdevTdomainBodyGyroJerk_Y','sdevTdomainBodyGyroJerk_Z','meanTdomainBodyAcclrMag','sdevTdomainBodyAcclrMag','meanTdomainGravityAcclrMag','sdevTdomainGravityAcclrMag','meanTdomainBodyAcclrJerkMag','sdevTdomainBodyAcclrJerkMag','meanTdomainBodyGyroMag','sdevTdomainBodyGyroMag','meanTdomainBodyGyroJerkMag','sdevTdomainBodyGyroJerkMag','meanFdomainBodyAcclr_X','meanFdomainBodyAcclr_Y','meanFdomainBodyAcclr_Z','sdevFdomainBodyAcclr_X','sdevFdomainBodyAcclr_Y','sdevFdomainBodyAcclr_Z','meanFdomainBodyAcclrJerk_X','meanFdomainBodyAcclrJerk_Y','meanFdomainBodyAcclrJerk_Z','sdevFdomainBodyAcclrJerk_X','sdevFdomainBodyAcclrJerk_Y','sdevFdomainBodyAcclrJerk_Z','meanFdomainBodyGyro_X','meanFdomainBodyGyro_Y','meanFdomainBodyGyro_Z','sdevFdomainBodyGyro_X','sdevFdomainBodyGyro_Y','sdevFdomainBodyGyro_Z','meanFdomainBodyAcclrMag','sdevFdomainBodyAcclrMag','meanFdomainBodyAcclrJerkMag','sdevFdomainBodyAcclrJerkMag','meanFdomainBodyGyroMag','sdevFdomainBodyGyroMag','meanFdomainBodyGyroJerkMag','sdevFdomainBodyGyroJerkMag')

## Assign columns in the the target dataset with new variable names 
colnames(vertprojdata) <- newcolnames

## Write to x_clean.csv
write.table(vertprojdata, "x_clean.csv", sep=",", row.names = FALSE, col.names = TRUE)



