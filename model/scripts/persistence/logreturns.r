### Example 1
library(datasets)

data(EuStockMarkets)
eu <- unique(EuStockMarkets)
chunks.size <- 30
num.chunks <- as.integer(nrow(eu)/chunks.size)

returns.list <- NULL
for (i in 1:num.chunks) {
    eu <- unique(EuStockMarkets)
    eu.filter <- seq(from=1, to=chunks.size, by=1) + (i-1)*chunks.size

    eu <- eu[eu.filter,]
    l <- nrow(eu)

    X <- log(eu[2:l,]/eu[1:l-1,])
    returns <- apply(X, 2, sum)
    returns.list <- rbind(returns.list, returns)
}

## Sanity check
# print(apply(returns.list, 2, sum))
# eu <- unique(EuStockMarkets)
# eu <- log(eu[2:nrow(eu),]/eu[1:nrow(eu)-1,])
# print(apply(eu, 2, sum))

title.csv <- paste("Dropbox/top_proj/model/data/log_returns/", chunks.size, ".csv", sep="")
write.table(returns.list, file=title.csv, row.names=FALSE, col.names=FALSE, sep=",")

