# Not passed

strDates <- c("01/05/1965", "08/16/1975")

dates <- as.Date(strDates, format = "%m/%d/%Y")

format1 <- format(dates, format="%m/%d/%Y")
format2 <- format(dates, format="%Y-%m-%d")

print(format1)
print(format2)