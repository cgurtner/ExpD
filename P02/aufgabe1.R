w <- c(1:5, 2)
w
mode(w)

x <- (6:13)
x
mode(x)

y <- c(TRUE, FALSE, TRUE, TRUE)
y
mode(y)

z <- c("Marie", "Betty", "Peter", "Peter")
z
mode(z)

z_f <- as.factor(z)
z_f
mode(z_f)

u <- (w <= 2)
u
mode(u)
as.numeric(u)
as.character(u)
as.character(z_f)
as.numeric(z_f)
as.numeric(z)
unique(z_f)
unique(w)
?unique
