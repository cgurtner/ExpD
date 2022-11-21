install.packages('ggplot2', dependencies = T)

library(ggplot2)

homicide_data <- read.csv(url('https://cgurtner.ch/files/homicide.csv'))

# worst cities from 2000 - 2014
filter_year <- data.frame(homicide_data[homicide_data$Year %in% c(2000:2014),])
df <- data.frame(table(filter_year$State))
colnames(df) <- c('state', 'count')
top10 <- df[order(-df$count),][1:10,]
top10

ggplot(top10, aes(x=state, y=count)) + geom_bar(stat="identity")
