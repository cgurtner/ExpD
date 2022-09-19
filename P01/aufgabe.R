# Aufgabe 1

## a)

5 + 3 
3 - 1 
5 * 2 
11 / 3 
log(2) 
log(-2) 
va <- 2 
va
vb <- 3
vb
vc <- va * vb
vc
va <- 4
vc
vc <- va * vb
vc
vb <- 'hallo'
vb
vc <- va * vb

## b)

log2(15)
exp <- 8^7
exp

# Aufgabe 2 

## a)

1:5
v <- 1:5
v
length(x = v)
help(length)
5 * v
y <- c(3, 8, 9, 100, 200)
v * y
sum(v * y)
z <- seq(from = 0, to = 0.2, by = 0.05)
z
names(z)
names(z) <- c("Element 1", "Element 2", "Element 3", "Element 4", "Element 5") 
names(z)
sum(z)
min(y)

## b) 

numbers <- 1:1000
numbers
sum_of_numbers <- sum(numbers)
sum_of_numbers

# Aufgabe 3

## a)

v <- 1:12
m1 <- matrix(data = v, nrow = 3, ncol = 4, byrow = FALSE)
m1
help(matrix)
m2 <- matrix(data = v, nrow = 3)
m2 # Was ist der Unterschied zu m1? nichts. es wird automatisch die passende anzahl cols gewählt
nrow(m1)
ncol(m1)
dim(m1)
colnames(m1)
rownames(m1)
colnames(m1) <- c("Spalte 1", "Spalte 2", "Spalte 3", "Spalte 4") 
rownames(m1) <- c("Zeile 1", "Zeile 2", "Zeile 3")
m1
2 * m1
m1 - m2
m1 * m2

m3 <- matrix(data=1:8, ncol = 4, byrow = TRUE)
m3
m1 * m3

## b)

mat <- matrix(data=1:8, nrow=8, ncol=5, byrow=TRUE)
rownames(mat) <- c("Z1", "Z2", "Z3", "Z4", "Z5", "Z6", "Z7", "Z8")
colnames(mat) <- c("S1", "S2", "S3", "S4", "S5")
mat

summe <- sum(mat)
summe



