install.packages('ggplot2', dependencies = T)
library(ggplot2)

data(iris)
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, colour=Species, size=Petal.Width)) + geom_point()
colnames(iris)
