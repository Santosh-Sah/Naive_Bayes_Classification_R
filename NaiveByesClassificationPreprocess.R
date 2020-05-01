source("NaiveByesClassificationUtils.R")

naiveByesClassificationDatasetList <- importNaiveByesClassificationDataset("Naive_Byes_Classification_Social_Network_Ads.csv")

saveTrainingAndTestingDataset(naiveByesClassificationDatasetList[[1]], naiveByesClassificationDatasetList[[2]])
