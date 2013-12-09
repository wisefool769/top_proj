# scrub.R
# a file to scrub the data
library(stringr)

train <- data.frame(read.csv("data/orig/train.csv", header=TRUE))
test <- data.frame(read.csv("data/orig/test.csv", header=TRUE))

train$sex <- as.character(train$sex)
train$sex[which(train$sex == "female")] <- 0
train$sex[which(train$sex == "male")] <- 1

test$sex <- as.character(test$sex)
test$sex[which(test$sex == "female")] <- 0
test$sex[which(test$sex == "male")] <- 1

train$name <- str_match(train$name, "Miss.|Master.|Mlle.")
train$name[which(train$name %in% c("Miss.", "Master.", "Mlle."))] <- 0
train$name[which(is.na(train$name))] <- 1

test$name <- str_match(test$name, "Miss.|Master.|Mlle.")
test$name[which(test$name %in% c("Miss.", "Master.", "Mlle."))] <- 0
test$name[which(is.na(test$name))] <- 1

train$name <- as.numeric(train$name)
test$name <- as.numeric(test$name)

train$sex <- as.numeric(train$sex)
test$sex <- as.numeric(test$sex)

train$ticket <- NULL
test$ticket <- NULL

train$cabin <- substring(train$cabin, 1, 1)
test$cabin <- substring(test$cabin, 1, 1)

train$embarked <- as.character(train$embarked)
test$embarked <- as.character(test$embarked)

train$embarked[train$embarked==""] <- "?"
test$embarked[test$embarked==""] <- "?"

train$cabin[train$cabin==""] <- "?"
test$cabin[test$cabin==""] <- "?"

train[train==""] <- NA
test[test==""] <- NA

train$fare[is.na(train$fare)] <- 0
test$fare[is.na(test$fare)] <- 0

write.table(train, file = "data/cat/train.csv", sep = ",", row.names = FALSE)
write.table(test, file = "data/cat/test.csv", sep = ",", row.names = FALSE)

train$embarked.C <- 0
train$embarked.Q <- 0
train$embarked.S <- 0
train$embarked.C[which(train$embarked == "C")] <- 1
train$embarked.Q[which(train$embarked == "Q")] <- 1
train$embarked.S[which(train$embarked == "S")] <- 1
train$embarked <- NULL

test$embarked.C <- 0
test$embarked.Q <- 0
test$embarked.S <- 0
test$embarked.C[which(test$embarked == "C")] <- 1
test$embarked.Q[which(test$embarked == "Q")] <- 1
test$embarked.S[which(test$embarked == "S")] <- 1
test$embarked <- NULL

train$cabin <- NULL
test$cabin <- NULL

write.table(train, file = "data/num/train.csv", sep = ",", row.names = FALSE)
write.table(test, file = "data/num/test.csv", sep = ",", row.names = FALSE)
