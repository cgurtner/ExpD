# a)

data <- read.table('./Git/ExpD/P03/kiebitz.txt', header=TRUE, sep=',');

# b)

ncol(data)
nrow(data)

# c)

typeof(data$Feld.Nr)
typeof(data$Anzahl)
typeof(data$Taetigkeit)

# d)

df <- data.frame(subset(data, data$Feld.Nr==1411))
df

# c)

nrow(df)