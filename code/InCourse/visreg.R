library("DAAG")
data(roller)
ergList <- list()
i <- 1
ergList[[i]] <- lm(depression ~ weight, data = roller)

roller.lm <- lm(depression ~ weight, data = roller)
# So bekommt man die Schätzwerte:


erg <- summary(roller.lm)

summary(1:10)


erg$r.squared

?predict.lm

library(visreg)
fit1 <- lm(Ozone ~ Solar.R + Wind + Temp, data = airquality)
summary(fit1)

fit <- lm(Ozone ~ log(Solar.R) + Wind + Temp, data = airquality)
summary(fit)

airquality$Heat <- cut(airquality$Temp, 3,
                       labels=c("Cool", "Mild", "Hot"))

cut(airquality$Temp,3)


fit.heat <- lm(Ozone ~ Solar.R + Wind * Heat,
               data = airquality)


fit.heat <- lm(Ozone ~ Solar.R + Wind : Heat,
               data = airquality)

fit.heat <- lm(Ozone ~ -1 + Solar.R + Wind : Heat,
               data = airquality)


summary(fit.heat)


mod1 <- glm(Heat~Ozone,data=airquality)
