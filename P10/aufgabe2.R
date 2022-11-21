install.packages('ggplot2', dependencies = T)
library(ggplot2)

data(iris)

# Balkendiagramm: Zeichnen Sie ein Balkendiagramm der Häufigkeiten der Spezies aus dem Iris-Datensatz.

ggplot(iris, aes(x=Species)) + geom_bar()

# Zeichnen Sie Boxplots der Kelchblattbreiten (sepal width) der drei Irisarten. Füllen Sie die Boxen in Pink.

setosa <- iris[iris$Species=='setosa',]
ggplot(setosa, aes(y=Sepal.Width)) + geom_boxplot()

versicolor <- iris[iris$Species=='versicolor',]
ggplot(versicolor, aes(y=Sepal.Width)) + geom_boxplot()

virginica <- iris[iris$Species=='virginica',]
ggplot(virginica, aes(y=Sepal.Width)) + geom_boxplot()

# Zeichnen Sie Dichteplots (geom_density()) der Kelchblattbreiten in Abhängigkeit der Iris- art. Der Plot sollte wie unten aussehen.

ggplot(iris, aes(x=Sepal.Width, fill=Species)) + geom_density(alpha=0.2)

# Erzeugen Sie einen violin plot (geom_violin()) statt des Boxplots aus b) und fügen Sie die Originaldaten ein.

ggplot(iris, aes(x=Species, y=Sepal.Width, fill=Species)) + geom_violin() + geom_jitter()



