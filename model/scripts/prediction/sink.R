library(e1071)

################# load data
train <- data.frame(read.csv("data/num/separate_ages/train.csv", header=TRUE))
test <- data.frame(read.csv("data/num/separate_ages/test.csv", header=TRUE))

# Support Vector Machines
svm.model <- svm(survived ~ ., data=train)
test$svm <- predict(svm.model, test)

test$PassengerId <- nrow(train) + as.numeric(row.names(test))
test$Survived <- as.numeric(test$svm > 1/2)

subm <- cbind(test$PassengerId, test$Survived)
colnames(subm) <- c("PassengerId", "Survived")

write.table(subm, file="predictions/svm.csv", row.names=FALSE, col.names=TRUE, sep=",")

