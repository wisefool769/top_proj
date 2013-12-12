chunks.size <- 90
title.lr <- paste("Dropbox/top_proj/model/data/log_returns/", chunks.size, ".csv", sep="")
title.pers <- paste("Dropbox/top_proj/model/data/wass/wass_kern_", chunks.size, ".csv", sep="")

log.returns <- as.matrix(read.csv(title.lr, header=FALSE))
diagram.dist <- as.matrix(read.csv(title.pers, header=FALSE))

train.frac <- 0.8
num.train <- as.integer(train.frac*nrow(diagram.dist))

train.index <- seq(from=1, to=num.train, by=1)
test.index <- seq(from=num.train+1, to=nrow(diagram.dist)-1, by=1)

rmse.list.pred <- NULL
rmse.list.null <- NULL

for (i in test.index) {
    best.match <- which.min(diagram.dist[train.index, i])

    pred.returns <- log.returns[best.match+1,]
    true.returns <- log.returns[i+1,]

    pred.error <- ((true.returns-pred.returns)^2)
    null.error <- ((true.returns)^2)

    rmse.list.pred <- rbind(rmse.list.pred, pred.error)
    rmse.list.null <- rbind(rmse.list.null, null.error)
}

rmse.pred <- sqrt(mean(rmse.list.pred))
rmse.null <- sqrt(mean(rmse.list.null))

print(rmse.pred)
print(rmse.null)