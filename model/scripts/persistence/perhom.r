### Example 1
library(datasets)
library(phom)
library(ggplot2)
 
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
eu <- unique(EuStockMarkets)
eu.filter <- seq(from=1, to=nrow(eu)/3, by=3) + 2*nrow(eu)/3

eu <- eu[eu.filter,]
l <- nrow(eu)

X <- log(eu[2:l,]/eu[1:l-1,])

max_dim <- 1
max_f <- 1

intervals <- pHom(X, max_dim, max_f)

diagram.0 <- data.frame(intervals[intervals[,1] == 0,])
colnames(diagram.0) <- c("dim", "birth", "death")

diagram.1 <- data.frame(intervals[intervals[,1] == 1,])
colnames(diagram.1) <- c("dim", "birth", "death")

# diagram.2 <- data.frame(intervals[intervals[,1] == 2,])
# colnames(diagram.2) <- c("dim", "birth", "death")

# plotPersistenceDiagram(intervals, max_dim, max_f, title="EuStockMarkets")

p <- qplot(birth, death, data = diagram.1) + geom_point(colour="red") 
p1 <- p + ggtitle("1-dimensional persistence diagram") + geom_abline(intercept=0, slope=1)

setEPS()
postscript("1d_diagram.eps")
plot(p1)
dev.off()







