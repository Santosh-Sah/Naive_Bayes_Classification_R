source("NaiveByesClassificationUtils.R")
library(e1071)

#reading NaiveByesClassification model
naiveByesClassificationModel = readRDS("NaiveByesClassificationModel.RDS")

inputValue <- data.frame(Age = c(28,30), EstimatedSalary = c(43000,30000))
inputValue[, 1:2] = scale(inputValue[, 1:2])


#predicting testing set result.
y_pred = predict(naiveByesClassificationModel, newdata = inputValue)

y_pred
