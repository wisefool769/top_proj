### Example 1
library(datasets)
library(phom)
 
# x <- runif(100)
# y <- runif(100)
# points <- t(as.matrix(rbind(x, y)))
 
# max_dim <- 1
# max_f <- 0.2
 
# intervals <- pHom(points, max_dim, max_f, metric="manhattan")
 
# plotPersistenceDiagram(intervals, max_dim, max_f, 
#     title="Random Points in Cube with l_1 Norm")
 
 
### Example 2

# t <- 2 * pi * runif(100)
# x <- cos(t)
# y <- sin(t)
# X <- t(as.matrix(rbind(x, y)))
 
# max_dim <- 2
# max_f <- 0.6
 
# intervals <- pHom(X, max_dim, max_f)
 
# plotPersistenceDiagram(intervals, max_dim, max_f,
#     title="Random Points on S^1 with Euclidean Norm")

data(EuStockMarkets)
# X <- (as.matrix(read.csv("Dropbox/top_proj/model/RCA1Portable/swiss_roll.csv")))
 
X <- unique(EuStockMarkets)

max_dim <- 1
max_f <- 200
 
intervals <- pHom(X, max_dim, max_f)

# diagram.0 <- intervals[intervals[,1] == 0,]
# plot(diagram.0[,2], diagram.0[,3])

# diagram.1 <- intervals[intervals[,1] == 1,]
# plot(diagram.1[,2], diagram.1[,3])

plotPersistenceDiagram(intervals, max_dim, max_f,
    title="EuStockMarkets")











