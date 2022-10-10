# a)

data <- read.table('./Git/ExpD/P03/kiebitz.txt', header=TRUE, sep=',');
data

# b)

dat1411 <- data.frame(data[data$Feld.Nr == 1411,])
dat1411

# c)

sum_fr <- sum(dat1411[dat1411$Taetigkeit == 'fr',]$Anzahl)
sum_fr

# d)

# Auf welchen Feldern wurden ruhende Kiebitze beobachtet?
filter_ru = data[data$Taetigkeit == 'ru',]
filter_ru

# Auf welchem dieser Felder die meisten?
filter_ru
which.max(filter_ru$Anzahl)
filter_ru[which.max(filter_ru$Anzahl),]
