importNaiveByesClassificationDataset <- function(naiveByesClassificationDatasetFileName) {
  
  #importing dataset
  naiveByesClassificationDataset = read.csv(naiveByesClassificationDatasetFileName)
  
  #getting the required columns
  naiveByesClassificationDataset = naiveByesClassificationDataset[3:5]
  
  #encoding target feature as factor
  naiveByesClassificationDataset$Purchased = factor(naiveByesClassificationDataset$Purchased, levels = c(0, 1))
  
  #splitting the dataset into training set and testing set
  library(caTools)
  set.seed(1234)
  
  naiveByesClassificationDatasetSlpit = sample.split(naiveByesClassificationDataset$Purchased, SplitRatio = 0.75)
  
  naiveByesClassificationTrainingSet = subset(naiveByesClassificationDataset, naiveByesClassificationDatasetSlpit == TRUE)
  
  naiveByesClassificationTestingSet = subset(naiveByesClassificationDataset, naiveByesClassificationDatasetSlpit == FALSE)
  
  
  returnList <- list(naiveByesClassificationTrainingSet, naiveByesClassificationTestingSet)
  
  return (returnList)
  
}

#saving training and testing set
saveTrainingAndTestingDataset <- function(naiveByesClassificationTrainingSet, naiveByesClassificationTestingSet){
  
  saveRDS(naiveByesClassificationTrainingSet, file = "NaiveByesClassificationTrainingSet.RDS")
  saveRDS(naiveByesClassificationTestingSet, file = "NaiveByesClassificationTestingSet.RDS")
  
}

#Save NaiveByesClassification Model
saveNaiveByesClassificationModel <- function(naiveByesClassificationModel) {
  
  saveRDS(naiveByesClassificationModel, file = "NaiveByesClassificationModel.RDS")
}

#Save prediced values for testing set
saveNaiveByesClassificationPredictedValuesForTestingSet <- function(naiveByesClassificationPredictedValuesForTestingSet) {
  
  saveRDS(naiveByesClassificationPredictedValuesForTestingSet, file = "NaiveByesClassificationPredictedValuesForTestingSet.RDS")
}
