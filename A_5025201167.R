library(BSDA)
library(tidyverse)
library(ggplot2)
library(MASS)
library(readr)
library(car)
library(dplyr)
library(broom)
library(ggpubr)
library(multcompView)

#soal 1
#1a
selisih1 <- c(22, 20, 3, 13, 20, 18, 11, 16, 23)
sd(selisih1)

#1b
before  <- c(78,75,67,77,70,72,78,74,77)
after <- c(100,95,70,90,90,90,89,90,100)

mean1 <- mean(before )
mean2 <- mean(after)

sd1 <- sd(before )
sd2 <- sd(after)

varians1 <- sd1 ^ 2
varians2 <- sd2 ^ 2

t_value1<- abs(mean2 - mean1) / sqrt((varians1/9) + (varians2/9))
t_value1

#1c
t.test(after, before )

#dari hasil t test disimpulkan berarti:
#ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi
#oksigen , sebelum dan sesudah melakukan aktivitas ????


#soal 2
data2 <- list("mean" = 23500, "mean_hipo" = 20000, "sd" = 3900, "n" = 100)

tsum.test(mean.x = data2$mean, n.x = 100, sd(data2$sd), mu = data2$mean_hipo)

zScore = (data2$mean - data2$mean_hipo) / (data2$sd / sqrt(data2$n))
pnorm(-abs(zScore))

#soal 3
bandung <- list("saham" = 19, "mean" = 3.64, "sd" = 1.67)
bali <- list("saham" = 27, "mean" = 2.79, "sd" = 1.32)

#H0 = bandung bali tidak ada perbedaan rata2
#h1 = bandung bali ada perbedaan rata2


tsum.test(
  n.x = bandung$saham,
  n.y = bali$saham,
  mean.x = bandung$mean,
  mean.y = bali$mean,
  s.x = bandung$sd,
  s.y = bali$sd,
  var.equal = TRUE,
  alternative = "two.sided",
)

qt(p = 0.05, df = 2, lower.tail = FALSE)


#soal4
# Soal 4a
# Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup
# 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan
# lihat apakah ada outlier utama dalam homogenitas varians.

myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(myFile)
head(myFile)
attach(myFile)

myFile$V1 <- as.factor(myFile$V1)
myFile$V1 = factor(myFile$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(myFile$V1)

group1 <- subset(myFile, V1=="Kucing Oren")
group2 <- subset(myFile, V1=="Kucing Hitam")
group3 <- subset(myFile, V1=="Kucing Putih")

# Soal 4b
# carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang
# didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?
bartlett.test(Length~V1, data=dataoneway)

# Soal 4c
# Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus
# Grup dan beri nama model tersebut model 1.
qqnorm(group1$Length)
qqline(group1$Length)

# Soal 4d
# Jawaban di README

# Soal 4e
model1 <- lm(Length~Group, data=myFile)

anova(model1)

TukeyHSD(aov(model1))

# Soal 4f
library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + 
  scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")

#soal 5
data5 <- read_csv("E:/Semester 4/Probstat/Prak/P2_Probstat_A_5025201187/GTL.csv")
qplot(Temp, Light, data = data5) + facet_wrap(~Glass)


av <- aov(Light ~ factor(Glass)*factor(Temp), data = data5)
summary.aov(av)

#tapply(data5$Temp, data5$Glass, summary)
group_by(data5, Glass, Temp)%>% 
  summarize(
    mean = mean(Light),
    standar_deviasi = sd(Light)
  )

hsd <- TukeyHSD(av)
hsd

multcompLetters4(av, hsd)