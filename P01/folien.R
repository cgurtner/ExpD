# assignments
var1 <- 2
var2 <- 5.7
res <- var1 + var2

# functions
round(res, digits=2)

# help pages
help(round)

# vector
v1 <- c(2,3,4,5)
v2 <- v1 * 2
v3 <- v1 + v2

# sequence
s1 <- 2:5
s2 <- seq(from=1, to=12, by=2)
s3 <- rep(3, times=12)

# functions of vectors
sum(v1)
min(v1)
max(v1)

summary <- c(min(v1), max(v1), sum(v1))
names(summary) <- c('min', 'max', 'sum')
summary

# matrix
mat1 <- matrix(data=1:4, nrow=2, byrow=TRUE)
mat1

mat2 <- matrix(data=1:4, ncol=2, byrow=FALSE)
mat2

mat3 <- matrix(data=1:7, ncol=2, byrow=FALSE)
mat3

dim(mat3)

colnames(mat3) <- c('Spalte 1', 'Spalte 2')
rownames(mat3) <- c('Zeile 1', 'Zeile 2', 'Zeile 3', 'Zeile 4')

mat3
