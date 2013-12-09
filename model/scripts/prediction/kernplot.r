library(ggplot2)
library(kernlab)

train <- data.frame(read.csv("data/num/separate_ages/train.csv", header=TRUE))
test <- data.frame(read.csv("data/num/separate_ages/test.csv", header = TRUE))

all.vars <- colnames(train)
vars.plot <- c("age", "fare", "sex", "survived")
novars.plot <- all.vars[!(all.vars %in% vars.plot)]
sex.0 <- 1
train.plot <- train[,vars.plot]


ksvm.model.plot <- ksvm(survived ~ age + fare + sex, data = train.plot, scaled=TRUE, kernel = "rbfdot", type = "C-svc")
setEPS()
postscript("../writeup/plots/kern_plot_male.eps")
plot(ksvm.model.plot, data=train.plot, grid=50, slice=list(sex=sex.0))
title("\n\nMale Passengers                       ")
dev.off()

# ksvm.model <- ksvm(survived ~ . -survived, data = train, kernel = "rbfdot", type = "C-svc")
# ksvm.predict <- predict(object = ksvm.model, newdata = test, type = "response")

# passenger.ids <- nrow(train) + as.numeric(row.names(test))
# submission <- cbind(passenger.ids, ksvm.predict)
# colnames(submission) <- c("PassengerId", "Survived")

# write.table(submission, file="predictions/svm_rbf.csv", row.names=FALSE, col.names=TRUE, sep=",")