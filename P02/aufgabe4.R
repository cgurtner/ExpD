# a)

getwd()
erheb <- readRDS('./Git/ExpD/P02/Erhebung_DS22.rds')

# b)

head(erheb, 10)
dim(erheb)
colnames(erheb)

# d)

tbl_abs <- table(erheb$Q04_Haarfarbe)
tbl_abs

tbl_rela <- round(table(erheb$Q04_Haarfarbe)/length(erheb$Q04_Haarfarbe), digits = 2)
tbl_rela

# e)

colors()
p_tbl = table(erheb$Q04_Haarfarbe)
pie(p_tbl, col=c('tomato2', 'tan4', 'whitesmoke'))

# f)

floor_tbl <- table(erheb$Q11_Schlafzimmer)
barplot(
  floor_tbl, main="Stockwerke", 
  ylab="Anzahl", 
  col=c("plum", "purple", "sienna", "pink", "red2", "yellow1", "orchid"),
  las=1
)

# g)

plz_tbl <- sort(table(erheb$Q10_Postleitzahl), decreasing = TRUE)
barplot(plz_tbl, las=3, cex.axis=0.75, cex.names=0.75)

