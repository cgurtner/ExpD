data <- as.data.frame(Erhebung_DS22)

# add index
data$id <- seq.int(nrow(data))

# 1)
data[34,]$Q06_Koerpergroesse == 183
# TRUE

# 2)
data$Q14_Statistische.Vorkenntnisse <- tolower(data$Q14_Statistische.Vorkenntnisse)
data[13,]$Q14_Statistische.Vorkenntnisse == 'mittel'
# TRUE

# 4)
data$Q11_Schlafzimmer <- tolower(data$Q11_Schlafzimmer)
id34 <- data[34,c('Q11_Schlafzimmer', 'Q10_Postleitzahl')]
id34$Q10_Postleitzahl == 9552 & id34$Q11_Schlafzimmer == '4. stock'
# TRUE

# 5)
data$Q12_Ausbildung <- tolower(data$Q12_Ausbildung)
data$Q05_Augenfarbe <- tolower(data$Q05_Augenfarbe)
id20 <- data[data$id==20,]
id20$Q12_Ausbildung == 'automobil mechatroniker' & id20$Q05_Augenfarbe == 'braun'
# TRUE

# 6)
id2u25 <- data[data$id %in% c(2,25),]
all(id2u25$Q07_Sport < 2 & id2u25$Q15_Anreisezeit.an.die.ZHAW > 30)
# TRUE

# 7)
data$Q04_Haarfarbe <- tolower(data$Q04_Haarfarbe)
id20u22 <- data[data$id %in% c(2,22),]
all(id20u22$Q04_Haarfarbe == 'braun' & id20u22$Q05_Augenfarbe == 'braun')
# FALSE

# 8)
data$Q03_Geschlecht <- tolower(data$Q03_Geschlecht)
first20 <- data[data$id %in% c(1:20),]$Q03_Geschlecht == 'weiblich'
length(first20[first20 == TRUE]) == 2
# FALSE

# 9)
first15 <- data[data$id %in% c(1:15),]$Q11_Schlafzimmer != '3. stock'
length(first15[first15 == TRUE]) == 15
# TRUE

# 10)
round(mean(data$Q08_Handspanne), 1) == 21.9
# TRUE

# 11)
round(mean(data$Q06_Koerpergroesse), 1) == 178.9
# TRUE

# 12)
median(data$Q06_Koerpergroesse) != median(data[c(1:38), ]$Q06_Koerpergroesse)
# FALSE

# 13)
round(mean(data[c(6,27,32),]$Q15_Anreisezeit.an.die.ZHAW)) > 95 # TRUE
round(mean(data[-c(6,27,32),]$Q15_Anreisezeit.an.die.ZHAW)) == 43 # TRUE
# TRUE

# 14)
data[3, 'Q07_Sport'] <- NA
data$Q07_Sport <- as.numeric(data$Q07_Sport)
meanSport <- mean(data$Q07_Sport, na.rm = TRUE)
all(data[c(13,17,37),]$Q07_Sport > meanSport)
# TRUE

# 15)
dt <- data[c(13,17,21),]
comparsion <- dt$Q10_Postleitzahl >= 8001 & dt$Q10_Postleitzahl <= 8064 & dt$Q03_Geschlecht == 'männlich' & dt$Q01_Klasse == 'DS21t'
all(comparsion)
# FALSE

# 16)
data[c(20,31),]$Q12_Ausbildung
# TRUE

