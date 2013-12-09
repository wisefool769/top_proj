require("kernlab")
train <- data.frame(read.csv("data/num/separate_ages/train.csv", header=TRUE))
test <- data.frame(read.csv("data/num/separate_ages/test.csv", header = TRUE))

noty <- c("name", "sex", "embarked.C",
	 "embarked.Q", "embarked.S","age", "fare",
	 "pclass", "sibsp", "parch")
all <- c("survived", noty)
binvars <- c("name", "sex", "embarked.C",
 "embarked.Q", "embarked.S")
convars <- c("age", "fare")
ordvars <- c("pclass", "sibsp", "parch")

# "survived","pclass","name","sex","age","sibsp","parch","fare","embarked.C","embarked.Q","embarked.S"

assignTypes <- function(data){
	data[,noty] <- sapply(data[,noty], as.numeric)
	if("survived" %in% colnames(data)){
		data[,"survived"] <- as.factor(data[,"survived"])	
	}
	return(data)
}

train <- assignTypes(train)
test <- assignTypes(test)

ntrain <- scale(as.matrix(sapply(train[,noty], as.numeric), center = TRUE))
ntest <- scale(as.matrix(sapply(test[,noty], as.numeric), center = TRUE))
treig <- eigen(cov(ntrain))
vn <- 4
pctrain <- ntrain %*% treig$vectors[,1:vn] 
pctest <- ntest %*% treig$vectors[,1:vn]


# dat <- data.frame(Eigenvector = c(1:10), Eigenvalue = treig$values)
# g <- ggplot(dat, aes(x = Eigenvector, y = Eigenvalue)) + geom_point(shape = 1)
# setEPS()
# postscript("../writeup/plots/pca_ev.eps")
# print(g)
# dev.off()
# 	diag(treig$values[1:2]) %*% t(treig$vectors[,1:2])

# k <- ksvm(x = as.matrix(train[,noty]), y = as.factor(train[,"survived"]), scaled = TRUE, 
# 	kernel = "rbfdot", type = "C-svc", kpar = "automatic"
# ,na.action = na.omit)

# # kpca <- ksvm(x = pctrain, y = as.factor(train[,"survived"]), scaled = TRUE, 
# # 	kernel = "rbfdot", type = "C-svc", kpar = "automatic"
# # ,na.action = na.omit)

# # pred_pca <- predict(object = kpca, newdata = pctest, type = "response")
# pred <- predict(object = k, newdata = as.matrix(test[,noty]), type = "response")

# pids <- nrow(train) + as.numeric(row.names(test))
# subm <- cbind(pids, as.numeric(pred)-1)
# colnames(subm) <- c("PassengerId", "Survived")
# write.table(subm, file="predictions/svm_rbf.csv", row.names=FALSE, col.names=TRUE, sep=",")
