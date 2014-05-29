#EdX Week 1

WHO_Europe <- subset(WHO, Region == "Europe")
str(WHO_Europe)
summary(WHO_Europe)
write.csv(WHO_Europe, "./data/edx/WHO_europe.csv")

# remove all variables, except funtcions
rm(list = setdiff(ls(), lsf.str()))

WHO <- read.csv("./data/edx/WHO.csv")
summary(WHO$Under15)
WHO$Country[which.min(WHO$Under15)]
WHO$Country[which.max(WHO$Under15)]
plot(WHO$GNI, WHO$FertilityRate)
Outliers <- subset(WHO, GNI > 10000 & FertilityRate > 2.5)
Outliers[c("Country", "GNI", "FertilityRate")]
hist(WHO$CellularSubscribers)
boxplot(WHO$LifeExpectancy ~ WHO$Region)
boxplot(WHO$LifeExpectancy ~ WHO$Region, xlab="Region", ylab="Life Expectancy", main="Life Expectancy of Countries by Region")

table(WHO$Region)
tapply(WHO$Over60, WHO$Region, mean)
tapply(WHO$LiteracyRate, WHO$Region, min, na.rm=T)
mean(WHO$Over60)
WHO$Country[which.min(WHO$Over60)]
WHO$Country[which.max(WHO$LiteracyRate)]