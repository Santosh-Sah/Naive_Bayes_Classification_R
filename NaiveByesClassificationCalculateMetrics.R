source("NaiveByesClassificationUtils.R")

#reading NaiveByesClassification model
naiveByesClassificationModel = readRDS("NaiveByesClassificationModel.RDS")

#reading testing set data
naiveByesClassificationTestingSet <- readRDS("NaiveByesClassificationTestingSet.RDS")

#reading predicted values of the testing set
naiveByesClassificationPredictedValuesForTestingSet <- readRDS("NaiveByesClassificationPredictedValuesForTestingSet.RDS")

naiveByesClassificationConfusionMatrix = table(naiveByesClassificationTestingSet[, 3], naiveByesClassificationPredictedValuesForTestingSet)

naiveByesClassificationConfusionMatrix

#    0  1
# 0 59  5
# 1  6 30
