library(lattice)

xyplot(Sepal.Length + Sepal.Width ~ Petal.Length + Petal.Width | Species,
       data = iris, scales = "free", layout = c(2, 2),
       auto.key = list(x = .6, y = .7, corner = c(0, 0)))


library(ggplot2)

?qplot

qplot(mpg, wt, data = mtcars, colour = I("red"),
      xlim=c(0,40))
