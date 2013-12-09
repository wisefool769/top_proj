library(glmnet)

# load data
train <- data.frame(read.csv("data/num/train.csv", header=TRUE))
test <- data.frame(read.csv("data/num/test.csv", header=TRUE))

# merge training and testng sets
test$survived <- rep(NA, nrow(test))
data <- merge(train, test, all=TRUE, sort=FALSE)

age.train <- subset(data, !is.na(age))
age.pred <- subset(data, is.na(age))

# set up our data for model building
include <- c("pclass","sibsp","parch","fare","embarked.C","embarked.Q","embarked.S")
# include <- c(2, 6, 7, 8, 9, 10, 11)
pred <- "age"

X.train <- data.matrix(age.train[,include])
y.train <- as.vector(age.train[,pred])

lasso.model <- cv.glmnet(X.train, y.train, alpha = 1)
w <- which(lasso.model$lambda == lasso.model$lambda.min)
# print(sqrt(lasso.model$cvm[w]))

X.pred <- data.matrix(age.pred[,include])
y.pred <- predict(lasso.model, X.pred)
y.pred <- round(y.pred, digits=3)

colnames(y.pred) <- NULL
rownames(y.pred) <- NULL

data$age[which(is.na(data$age))] <- y.pred

train.new <- subset(data, !is.na(survived))
test.new <- subset(data, is.na(survived))
test.new$survived <- NULL

write.table(train.new, "data/num/all_ages/train.csv", sep=",", row.names=FALSE)
write.table(test.new, "data/num/all_ages/test.csv", sep=",", row.names=FALSE)

train.cat <- data.frame(read.csv("data/cat/train.csv", header=TRUE))
test.cat <- data.frame(read.csv("data/cat/test.csv", header=TRUE))

train.cat$age <- train.new$age
test.cat$age <- test.new$age

write.table(train.cat, "data/cat/all_ages/train.csv", sep=",", row.names=FALSE)
write.table(test.cat, "data/cat/all_ages/test.csv", sep=",", row.names=FALSE)

