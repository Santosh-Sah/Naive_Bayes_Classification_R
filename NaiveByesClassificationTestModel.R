source("NaiveByesClassificationUtils.R")
library(e1071)

#reading testing set data
naiveByesClassificationTestingSet <- readRDS("NaiveByesClassificationTestingSet.RDS")

#feature scaling
naiveByesClassificationTestingSet[-3] = scale(naiveByesClassificationTestingSet[-3])

#reading NaiveByesClassification model
naiveByesClassificationModel = readRDS("NaiveByesClassificationModel.RDS")

#predicting testing set result.
y_pred = predict(naiveByesClassificationModel ,newdata = naiveByesClassificationTestingSet[-3])

#Saving prediced values for testing set
saveNaiveByesClassificationPredictedValuesForTestingSet(y_pred)

