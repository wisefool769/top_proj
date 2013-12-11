# li.r

train <- data.frame(read.csv("Dropbox/top_proj/model/data/cat/separate_ages/df.csv", header=TRUE))
test <- data.frame(read.csv("Dropbox/top_proj/model/data/cat/separate_ages/test.csv", header=TRUE))
df <- merge(train, test, all=TRUE)

# categorical variables
# "pclass","name","sex","cabin","embarked"

df$pclass <- factor(df$pclass, levels=c("1", "2", "3"))
df$sex <- factor(df$sex, levels=c("0","1"))
df$name <- factor(df$name, levels=c("0","1"))
df$cabin <- factor(test$cabin, levels=c("?","A","B","C","D","E","F","G","T"))
df$embarked <- factor(df$embarked, levels=c("?", "C", "Q", "S"))

# numeric variables
# "age","sibsp","parch","fare"
df$age <- as.numeric(df$age)
df$sibsp <- as.numeric(df$sibsp)
df$parch <- as.numeric(df$parch)
df$fare <- as.numeric(df$fare)

