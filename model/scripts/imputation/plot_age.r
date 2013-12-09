library(ggplot2)
df.train <- read.csv("data/cat/train.csv", header=TRUE)
df.test <- read.csv("data/cat/test.csv", header=TRUE)
df <- merge(df.train, df.test, all=TRUE, sort=FALSE)

df$Legend <- NA
df$Legend[(df$name + 2*df$sex)==0] <- "Younger females"
df$Legend[(df$name + 2*df$sex)==1] <- "Older females"
df$Legend[(df$name + 2*df$sex)==2] <- "Younger males"
df$Legend[(df$name + 2*df$sex)==3] <- "Older males"

df.women <- subset(df,sex==0)
df.men <- subset(df,sex==1)

bin.width <- 2.5
alpha.0 <- 0.4


# Genders together

# shitty way
# plot(ggplot(df,aes(x=age)) + 
#     geom_histogram(data=(subset(df,Legend == "Younger females")),fill = "green", alpha = alpha.0, binwidth = bin.width) +
#     geom_histogram(data=(subset(df,Legend == "Older females")),fill = "orange", alpha = alpha.0, binwidth = bin.width) +
#     geom_histogram(data=(subset(df,Legend == "Younger males")),fill = "red", alpha = alpha.0, binwidth = bin.width) +
#     geom_histogram(data=(subset(df,Legend == "Older males")),fill = "purple", alpha = alpha.0, binwidth = bin.width))

# good way
pdf("../writeup/plots/all_ages.pdf")
plot(ggplot(df,aes(x=age, fill=Legend)) + labs(title="Passenger's ages", x="Age", y="Count") + geom_histogram(position="identity", alpha = alpha.0, binwidth = bin.width))
dev.off()
# Genders apart

# shitty way
# plot(ggplot(df,aes(x=age, fill=Legend)) + 
#     geom_histogram(data=(subset(df,Legend == "Younger females")),fill = "green", alpha = alpha.0, binwidth = bin.width) +
#     geom_histogram(data=(subset(df,Legend == "Older females")),fill = "orange", alpha = alpha.0, binwidth = bin.width))
# dev.new()
# plot(ggplot(df,aes(x=age)) +
#     geom_histogram(data=(subset(df,Legend == "Younger males")),fill = "red", alpha = alpha.0, binwidth = bin.width) +
#     geom_histogram(data=(subset(df,Legend == "Older males")),fill = "purple", alpha = alpha.0, binwidth = bin.width))

# good way
pdf("../writeup/plots/womens_ages.pdf")
plot(ggplot(df.women,aes(x=age, fill=Legend)) + labs(title="Women's ages", x="Age", y="Count") + geom_histogram(position="identity", alpha = alpha.0, binwidth = bin.width))
dev.off()

pdf("../writeup/plots/mens_ages.pdf")
plot(ggplot(df.men,aes(x=age, fill=Legend)) + labs(title="Men's ages", x="Age", y="Count")+ geom_histogram(position="identity", alpha = alpha.0, binwidth = bin.width))
dev.off()