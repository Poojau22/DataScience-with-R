library(datasets)
data("quakes")
e_quakes<- datasets::quakes
head(e_quakes)
tail(e_quakes)
e_quakes[,c(3,4)]
e_quakes$depth
summary(e_quakes$depth)
summary(e_quakes)
plot(e_quakes$mag)
plot(e_quakes$depth, e_quakes$mag)
plot(e_quakes)
plot(e_quakes$depth, type='b')
plot(e_quakes$depth, xlab = 'index', ylab = 'depth of equake', main = 'e_quake', col='blue')

#Horizontal bar
barplot(e_quakes$depth, main = 'depth of equake', xlab = 'depth', col ='blue', horiz= F)
#Histogram
hist(e_quakes$mag, main= 'magnitude', xlab = 'level of magnitude', col= 'blue')
# Single Boxplot
boxplot(e_quakes$stations)
# Mulpile boxplot
boxplot(e_quakes[,3:5], main = 'Multiple')

par(mfrow = c(3,2), mar= c(2,5,2,1), las = 0, bty='o')
plot(e_quakes$depth)
plot(e_quakes$depth, e_quakes$stations)
plot(e_quakes$depth, type='b')
plot(e_quakes$depth, type='l')
plot(e_quakes$depth, xlab = 'index', ylab = 'depth of equake', main = 'e_quake', col='blue')

