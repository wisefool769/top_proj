### Example 1
library(datasets)
library(phom)
library(ggplot2)

data(EuStockMarkets)
eu <- unique(EuStockMarkets)
chunks.size <- 90
num.chunks <- as.integer(nrow(eu)/chunks.size)

for (i in 1:num.chunks) {
    eu <- unique(EuStockMarkets)
    eu.filter <- seq(from=1, to=chunks.size, by=1) + (i-1)*chunks.size

    eu <- eu[eu.filter,]
    l <- nrow(eu)

    X <- log(eu[2:l,]/eu[1:l-1,])

    max_dim <- 1
    max_f <- 1

    intervals <- pHom(X, max_dim, max_f)
    # diagram.0 <- data.frame(intervals[intervals[,1] == 0,])
    # colnames(diagram.0) <- c("dim", "birth", "death")

    diagram.1 <- data.frame(intervals[intervals[,1] == 1,])
    diagram.1 <- diagram.1[,-1]
    colnames(diagram.1) <- c("birth", "death")

    title.csv <- paste("small_diagrams/diagram_", chunks.size, "_", i, ".csv", sep="")
    write.table(diagram.1, file=title.csv, row.names=FALSE, col.names=FALSE, sep=",")
}

# intervals <- pHom(X, max_dim, max_f)

# diagram.0 <- data.frame(intervals[intervals[,1] == 0,])
# colnames(diagram.0) <- c("dim", "birth", "death")

# diagram.1 <- data.frame(intervals[intervals[,1] == 1,])
# colnames(diagram.1) <- c("dim", "birth", "death")

# diagram.2 <- data.frame(intervals[intervals[,1] == 2,])
# colnames(diagram.2) <- c("dim", "birth", "death")

# plotPersistenceDiagram(intervals, max_dim, max_f, title="EuStockMarkets")

# p <- qplot(birth, death, data = diagram.1) + geom_point(colour="red") 
# p1 <- p + ggtitle("1-dimensional persistence diagram") + geom_abline(intercept=0, slope=1)

# setEPS()
# postscript("1d_diagram.eps")
# plot(p1)
# dev.off()







