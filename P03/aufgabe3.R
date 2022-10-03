# a)
data <- read.table('./Git/ExpD/P03/sleep.txt', header=TRUE, sep='');

# b)
nrow(data)

# c)
data$Differenz <- abs(data$Placebo - data$Schlafmittel)

# d)
mean(data$Schlafmittel) - mean(data$Placebo)
median(data$Schlafmittel) - median(data$Placebo)

# e)
data$Differenz
stripchart(data$Differenz)
hist(data$Differenz)

# f)
plot(ecdf(data$Differenz))
