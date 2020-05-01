source("NaiveByesClassificationUtils.R")
library(e1071)

#reading training set 
naiveByesClassificationTrainingSet <- readRDS("NaiveByesClassificationTrainingSet.RDS")

#feature scaling
naiveByesClassificationTrainingSet[-3] = scale(naiveByesClassificationTrainingSet[-3])

# Fitting NaiveByesClassification to the Training set
naiveByesClassification = naiveBayes(x = naiveByesClassificationTrainingSet[-3],
                                     y = naiveByesClassificationTrainingSet$Purchased)

#saving NaiveByesClassification model
saveNaiveByesClassificationModel(naiveByesClassification)
