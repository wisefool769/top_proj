#wasserstein metric 
library(combinat)


has.na <- function(pt){
	return(sum(is.na(pt)) > 0)
}

ld <- function(pt1, pt2, q = Inf){
	if(has.na(pt2))
		return(ld(pt1, (pt1[1] + pt1[2])/2, q))

	if(is.infinite(q))
		return(max(abs(pt1 - pt2)))

	return(sum(abs(pt1 - pt2)^q)^(1/q))
}


wd <- function(p1, p2,q){
	#p1 is a matrix with the births in col 1 and deaths in col 2
	l1 <- dim(p1)[1]
	l2 <- dim(p2)[1]
	n <- max(l1, l2)

	if(l2 > l1)
		return(wd(p2,p1,q))

	p2 <- rbind(p2, matrix(rep(NA, 2 * (l1 - l2)), ncol = 2) )

	perms <- permn(1:n)

	dists <- c()
	for(perm in perms){
		pwds <- mapply(function(a,b) ld(p1[a,], p2[b,]) , 1:n, perm) 
		dists <- c(dists, ld(rep(0,n), pwds, q))
	}

	return(min(dists))
}

