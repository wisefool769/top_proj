library(ggplot2)
library(randomForest)

# load data
train <- data.frame(read.csv("data/cat/separate_ages/train.csv", header=TRUE))
test <- data.frame(read.csv("data/cat/separate_ages/test.csv", header=TRUE))

class(train$pclass) <- "ordered"
class(test$pclass) <- "ordered"

train$sex <- factor(train$sex, levels=c("0","1"))
test$sex <- factor(test$sex, levels=c("0","1"))

train$name <- factor(train$name, levels=c("0","1"))
test$name <- factor(test$name, levels=c("0","1"))

train$embarked <- factor(train$embarked, levels=c("?", "C", "Q", "S"))
test$embarked <- factor(test$embarked, levels=c("?", "C", "Q", "S"))

train$cabin <- factor(train$cabin, levels=c("?","A","B","C","D","E","F","G","T"))
test$cabin <- factor(test$cabin, levels=c("?","A","B","C","D","E","F","G","T"))

train$parch <- as.numeric(train$parch)
test$parch <- as.numeric(test$parch)

train$sibsp <- as.numeric(train$sibsp)
test$sibsp <- as.numeric(test$sibsp)

# get our data readty
X.train <- train[,-1]
y.train <- factor(train$survived)

X.test <- test

# Random Forest params
n.trees <- 5000
n.folds <- 10

## Random Forests
# rf.cv <- rfcv(X.train, y.train, cv.fold = n.folds)
# print("CV error for RF:")
# print(rf.cv$error.cv)

rf.model <- randomForest(X.train, y.train, ntree = n.trees)
# print(importance(rf.model))
train$rf <- predict(rf.model)
test$rf <- predict(rf.model, X.test)

# c.f <- "Factor"
# c.n <- "Numeric"
# c.o <- "Ordinal"

data <- as.data.frame(cbind(rownames(rf.model$importance),round(as.vector(rf.model$importance[,1]),2)))
colnames(data) <- c("Parameters","NodePurity")
data$NodePurity <- as.numeric(as.character(data$NodePurity))
data.types <- lapply(X.train, class)
data$Type <- unlist(data.types, use.names=FALSE)
data <- data[with(data, order(Type)),]
data$Parameters <- as.character(data$Parameters)
data$Parameters <- factor(data$Parameters, levels=unique(data$Parameters), ordered=TRUE)

p <- ggplot(data) + geom_bar(aes(Parameters,NodePurity, fill=Type, width=0.6), stat="identity") + scale_fill_discrete("Variable Type")
p1 <- p + theme(axis.text.y = element_text(angle = 90, hjust = 1)) + ylab("Variable Importance") + labs(x=element_blank())
p2 <- p1 + theme(axis.title.x = element_blank())

setEPS()
postscript("../writeup/plots/rf_imp.eps")
plot(p2)
dev.off()

# Edit for generating submission
test$PassengerId <- nrow(train) + as.numeric(row.names(test))
test$Survived <- as.numeric(test$rf)-1

# Write submissions to file
outname <- "rf"
fileout <- paste("predictions/", outname, ".csv", sep="")

submission <- cbind(test$PassengerId, test$Survived)
colnames(submission) <- c("PassengerId", "Survived")

# write.table(submission, file=fileout, row.names=FALSE, col.names=TRUE, sep=",")

