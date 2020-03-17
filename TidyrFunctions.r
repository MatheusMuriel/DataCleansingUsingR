#library(tidyr)

#player <- c("Sachin Tendulkar", "Sourav Ganguly", "VVS Laxman", "Rahul Dravid")
#Y2010 <- c(48.8, 40.22, 51.02, 53.34)
#Y2011 <- c(53.7, 41.9, 50.8, 59.44)
#Y2012 <- c(60.0, 52.39, 61.2, 61.44)

#paverage.df <- data.frame(player,Y2010,Y2011,Y2012)
#print(paverage.df)

pavg_gather <- unite(paverage.df, "year", Y2010,Y2011,Y2012)
print(pavg_gather)

pvgSpread <- spread(pavg_gather, year, year)
print(pvgSpread)

fname <- c("Martina", "Monica", "Stan", "Oscar")
lname <- c("Welch", "Sobers", "Griffith", "Williams")
DoB <- c("1-Oct-1980", "2-Nov-1982", "13-Dec-1979", "27-Jan-1988")

first.df <- data.frame(fname,lname,DoB)
print(first.df)

second.df <- separate(first.df, col = "DoB", into = c("date", "month", "year"), sep = "-")
print(second.df)

three.df <- unite(second.df, col = "Name", c(fname, lname), sep = " ", remove = TRUE)
print(three.df)
