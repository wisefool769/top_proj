### Example 1
library(datasets)
library(phom)
library(ggplot2)
<<<<<<< HEAD
=======
 

 

>>>>>>> 8fd379c06b249281c8275c4f41df58f16df0fa2b

data(EuStockMarkets)
# eu <- unique(EuStockMarkets)
# l <- dim(eu)[1]
# lr <- log(eu[2:l,]/eu[1:l-1,])
# nr <- 200

# somelr <- lr[sample(nrow(lr),size=nr,replace=TRUE),]


ns <- 100000
lrs <- sapply(1:ns, function(x) sqrt(sum((lr[sample(1833,1),] - lr[sample(1833,1),])^2)))
# dat <- data.frame(lrs)
#colnames(dat) <- c("dist")
# q <- ggplot(dat, aes(x = dist, y =..density..)) + geom_bar(binwidth = 0.001) + xlab("Euclidean Distance") + ylab("Density") + ggtitle("Log-Return Distance Distribution")

# setEPS()
# postscript("writeup/lr-dist2.eps")
# plot(q)
# dev.off()


# max_dim <- 1
# max_f <- 0.015

# intervals <- pHom(somelr, max_dim, max_f)

# diagram <- data.frame(intervals[intervals[,1] == 0,])
# colnames(diagram) <- c("dim", "birth", "death")



# # # # # for(nc in c("30", "60", "90", "100")){
# # # # #     for(np in c("0", "1")){
# # # # #         f <- paste("p2-",np,"-",nc, sep = "")
# # # # #         diagram <- data.frame(read.csv(paste("model/data/psquared/",f,".csv",sep = ""), header = FALSE))
# # # #         # colnames(diagram) <- c("birth", "death")
#         p <- qplot(birth, death, data = diagram) + geom_point(colour="red") 
#         p1 <- p + ggtitle(paste("0-dimensional persistence diagram", sep = "")) + geom_abline(intercept=0, slope=1) + 
#         xlim(0,0.015) + ylim(0,0.015)

#         setEPS()
#         postscript(paste("writeup/rlr-200-0-f15e-3.eps",sep = ""))
#         plot(p1)
#         dev.off()
# # #     }

# # # }










