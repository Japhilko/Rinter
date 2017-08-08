library(DAAG)

data(toycars)

mod2 <- lm(distance~car,data=toycars)

data <- data.frame(toycars)

data$car <- as.factor(data$car)

boxplot(distance~car,data=toycars)

mod3 <- lm(distance~car,data=data)

mod3 <- lm(distance~factor(car),data=toycars)

summary(mod3)
summary(mod2)
