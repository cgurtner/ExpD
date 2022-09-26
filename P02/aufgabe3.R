# a)

dat <- data.frame(
    Name=c("Ruedi", "Hans", "Peter", "Stefan", "Julia", "Maria"),
    Alter=c(27, 34, 21, 25, 29, 23),
    Note=c(5.0, 6.0, 5.5, 4.0, 3.5, 5.0),
    Studium=c(FALSE, TRUE, TRUE, TRUE, FALSE, TRUE)
)
dat

# b)

dat_points = nrow(dat)*ncol(dat)
dat_points
dim(dat)

# c)

mode(dat$Name)
mode(dat$Alter)
mode(dat$Note)
mode(dat$Studium)

# d)

p_tbl <- table(dat$Studium)
pie(p_tbl)
