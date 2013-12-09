nn <- data.frame(read.csv("predictions/nn.csv", header=TRUE))[,"Survived"]
svm_rbf <- data.frame(read.csv("predictions/svm_rbf.csv", header=TRUE))[,"Survived"]
rf <- data.frame(read.csv("predictions/rf.csv", header=TRUE))
maj <- rf
rf <- rf[,"Survived"]

maj[,"Survived"] <- round((nn + svm_rbf + rf)/3)
write.table(maj, file="predictions/bag.csv", row.names=FALSE, col.names=TRUE, sep=",")
