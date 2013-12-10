### Example 1
 
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

t <- 2 * pi * runif(100)
x <- cos(t)
y <- sin(t)
X <- t(as.matrix(rbind(x, y)))
 
max_dim <- 2
max_f <- 0.6
 
intervals <- pHom(X, max_dim, max_f)
 
plotPersistenceDiagram(intervals, max_dim, max_f,
    title="Random Points on S^1 with Euclidean Norm")

# plotBarcodeDiagram(intervals, max_dim, max_f,
#     title="Barcode Diagram for Random Points on S^1 with Euclidean Norm")
