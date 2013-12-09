library(glmnet)

# load data
train <- data.frame(read.csv("data/num/train.csv", header=TRUE))
test <- data.frame(read.csv("data/num/test.csv", header=TRUE))

# merge training and testng sets
test$survived <- rep(NA, nrow(test))
data <- merge(train, test, all=TRUE, sort=FALSE)

# print(data)

cvm.tot <- 0

sex.0 <- c(0,1)
name.0 <- c(0,1)
for(s in sex.0) {
    for (n in name.0) {

        # split data by sex and name (honorific)
        df <- subset(data, sex == s)
        df <- subset(df, name == n)

        age.train <- subset(df, !is.na(age))
        age.pred <- subset(df, is.na(age))

        # set up our data for model building
        include <- c("pclass","sibsp","parch","fare","embarked.C","embarked.Q","embarked.S")
        # include <- c(2, 6, 7, 8, 9, 10, 11)
        pred <- "age"

        X.train <- data.matrix(age.train[,include])
        y.train <- as.vector(age.train[,pred])

        lasso.model <- cv.glmnet(X.train, y.train, alpha = 1)
        w <- which(lasso.model$lambda == lasso.model$lambda.min)
        # print(lasso.model$cvm[w])
        cvm.tot <- cvm.tot + (nrow(df)/nrow(data)) * lasso.model$cvm[w]

        X.pred <- data.matrix(age.pred[,include])
        # print(X.pred)
        y.pred <- predict(lasso.model, X.pred)
        y.pred <- round(y.pred, digits=3)

        colnames(y.pred) <- NULL
        rownames(y.pred) <- NULL

        data$age[as.logical((is.na(data$age)) * (data$sex == s) * (data$name == n))] <- y.pred
    }
}

# print(sqrt(cvm.tot))

train.new <- subset(data, !is.na(survived))
test.new <- subset(data, is.na(survived))
test.new$survived <- NULL

write.table(train.new, "data/num/separate_ages/train.csv", sep=",", row.names=FALSE)
write.table(test.new, "data/num/separate_ages/test.csv", sep=",", row.names=FALSE)

train.cat <- data.frame(read.csv("data/cat/train.csv", header=TRUE))
test.cat <- data.frame(read.csv("data/cat/test.csv", header=TRUE))

train.cat$age <- train.new$age
test.cat$age <- test.new$age

write.table(train.cat, "data/cat/separate_ages/train.csv", sep=",", row.names=FALSE)
write.table(test.cat, "data/cat/separate_ages/test.csv", sep=",", row.names=FALSE)


