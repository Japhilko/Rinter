library("HSAUR")
data("plasma", package = "HSAUR")

plasma_glm_1 <- glm(ESR ~ fibrinogen, data = plasma,
                    family = binomial())



visreg(plasma_glm_1)


mlexdat <- read.csv("https://github.com/Japhilko/RSocialScience/raw/master/data/mlexdat.csv")

HLM0 <- lmer(Score ~ (1 | ID), data = mlexdat)

visreg(HLM0)
