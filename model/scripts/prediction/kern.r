require("kernlab")
train <- data.frame(read.csv("data/num/separate_ages/train.csv", header=TRUE))
test <- data.frame(read.csv("data/num/separate_ages/test.csv", header = TRUE))


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

# # kpca <- ksvm(x = pctrain, y = as.factor(train[,"survived"]), scaled = TRUE, 
# # 	kernel = "rbfdot", type = "C-svc", kpar = "automatic"
# # ,na.action = na.omit)

# # pred_pca <- predict(object = kpca, newdata = pctest, type = "response")
# pred <- predict(object = k, newdata = as.matrix(test[,noty]), type = "response")

