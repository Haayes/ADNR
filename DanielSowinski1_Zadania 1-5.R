#Zadanie 1

x <- 1%%2

x <- as.logical(x)

x

#Zadanie22


trasa <- c(175)
wI<-c(120)
wII<-c(90)

wynik <-(wI+wII)/2
wynik

#Zadanie3
tab<-read.table("dane.csv",header=TRUE,sep=";")
tab
cor.test(tab$waga, tab$wzrost)

#Zadanie4
#Nie do końca wiem, czy o to chodzio ale tak to zinterpretowaem

imiona <-c("Kasia", "Asia", "Basia", "Jasia")
wiek <- c(20, 20, 21, 22)
rama <- data.frame(imie = imiona, wiek)
rama

#Zadanie 5
library(data.table)
setwd("C:/Users/danie/OneDrive/Pulpit/PJWSTK/Semestr 2/Zjazd 07.11.2020/ADNR/08.11.2020/ADNR/smogKrakow")
files <- list.files(pattern = ".csv")
temp <- lapply(files, fread, sep=",")
data <- rbindlist(temp)
write.csv(data, file = "all_months.csv", row.names = FALSE)

#Stworzylem jeden plik ze wszystkimi danymi w celu szukania interesujcych nas kolumn

a <- read.table("all_months.csv", head = TRUE, sep = ",", dec = ";" )

#W zaleznosci od interesujcej nas kolumny, liczymy co chcemy

head(a)

mean(a[, "X3_temperature"], na.rm = TRUE)
median(a[, "X3_temperature"], na.rm = TRUE)
min(a[, "X3_temperature"], na.rm = TRUE)
max(a[, "X3_temperature"], na.rm = TRUE)






