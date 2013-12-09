# require("neuralnet")
# #source("scripts/kern.r")

library(devtools)
source_url('https://gist.github.com/fawda123/7471137/raw/5b3f226003d8ee30b95d874c073d4a8ad89b6b68/nnet_plot_update.r')

# train <- data.frame(read.csv("data/num/separate_ages/train.csv", header=TRUE))
# test <- data.frame(read.csv("data/num/separate_ages/test.csv", header = TRUE))
# train <- sapply(train, as.numeric)

# noty <- c("name", "sex", "embarked.C",
# 	 "embarked.Q", "embarked.S","age", "fare",
# 	 "pclass", "sibsp", "parch")

# train[,noty] <- sapply(train[,noty], as.numeric)
# test[,noty] <- sapply(test[,noty], as.numeric)
# train[,"survived"] <- as.numeric(train[,"survived"])
#test[,"survived"] <-  as.factor(test[,"survived"])
# numTrain <- dim(train)[1]
# first <- numTrain - floor(numTrain * 1 / 10)

# ptrain <- train[1:first,]
# ttrain <- train[(first + 1): numTrain,]

# "survived","pclass","name","sex","age","sibsp","parch","fare","embarked.C","embarked.Q","embarked.S"



# print("imputing ages")

# nas <- is.na(ptrain[,"age"])

# imp.fields <- c("pclass", "name", "sex", "age", "sibsp", "parch", "fare", "embarked.C", "embarked.Q", "embarked.S")

# print(imp.net <- neuralnet(age~pclass+name+sex+sibsp+parch+fare+embarked.C+embarked.Q+embarked.S, ptrain[!nas,imp.fields],
#  hidden = 5, rep = 1, err.fct = "sse"))
# impcomp.fields <- c("pclass", "name", "sex", "sibsp", "parch", "fare", "embarked.C", "embarked.Q", "embarked.S")
# imp.com <- compute(imp.net,ptrain[nas,impcomp.fields])

#ptrain$age[which(is.na(ptrain$age))] <- mean(ptrain$age[which(!is.na(ptrain$age))])

# ptrain$age[which(is.na(ptrain$age))] <- imp.com$net.result

# print("nas in following columns:")
# for(sym in colnames(ptrain)){
# 	if ( sum(is.na(ptrain[[sym]])) > 0){
# 		print(sym)
# 	}
# }

# print("training")
# vtrain <- c("survived", "pclass", "name", "sex", "age", "sibsp", "parch", "fare")
# pred.net <- neuralnet(survived~pclass+name+sex+age+sibsp+parch+fare,
# 	train[,vtrain], hidden = 3, rep = 1, err.fct = "sse", act.fct = "tanh")


# print("graphing")
# png("../writeup/nn_fw.png")
# plot(pred.net, show.weights = "FALSE")

mod2 <- pred.net

setEPS()
postscript("nn_weights-2.eps", width = 13, height = 13)
plot.nnet(mod2, cex.val = 1.5)
dev.off()
# dev.off()

# print("predicting values")
# vtest <- c("pclass", "name", "sex", "age", "sibsp", "parch", "fare")
# pred.com <- compute(pred.net, test[,vtest])

# pred <- data.frame(cbind(892:1309, round(pred.com$net.result)))
# colnames(pred) <- c("PassengerId", "Survived")
# write.table(subm, file="predictions/nn.csv", row.names=FALSE, col.names=TRUE, sep=",")


# plot(pred.net)
# print("imputation rmse")
# nas2 <- is.na(ttrain[,"age"])
# ic <- compute(imp.net, ttrain[!nas2,impcomp.fields])
# irmse <- sqrt(mean((ttrain[!nas2,"age"] - ic$net.result)^2)) 
# print(irmse)

# print("survival error rate")
# pc <- compute(pred.net, ttrain[,predFields])
# err<- sum(abs(ttrain$survived - round(pc$net.result)))/floor(numTrain/10)
# print(err)


