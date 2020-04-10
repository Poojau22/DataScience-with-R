library(datasets)
data("airquality")
airquality <- datasets::airquality
head(airquality) #top 6 rows
tail(airquality) #last 6 rows
airquality[c(1,2)] # col. 1st & 2nd
airquality $Ozone # particular ozone col.
summary(airquality$Temp) # descriptive stats of temp col.
summary(airquality) # descriptive stats of all the col.
plot(airquality$Ozone) # plot of ozone col.
plot(airquality$Ozone, airquality$Temp) # plot between ozone and Temp.
plot(airquality) # all the plots
# plot and lines
plot(airquality$Ozone, type = 'b') # p:points, l=lines, b:both
plot(airquality$Solar.R, type='l')
plot(airquality$Ozone, xlab = 'ozone concentration', ylab = 'no. of instavees',
     main = 'ozone levels in NY city', col = 'blue')
# Horizontal bar plot
barplot(airquality$Ozone, main = 'ozone concentration in air', xlab = 'ozone levels',
        col = 'blue', horiz = F)
barplot(airquality$Ozone, main = 'ozone concentration in air', xlab = 'ozone levels',
        col = 'blue', horiz = T)
# Histogram
hist(airquality$Solar.R)
hist(airquality$Solar.R,main = 'solar radiator', xlab= 'solar rad', col= 'blue')
# Single boxplot
boxplot(airquality$Solar.R)
# Multiple box plots
boxplot(airquality[,1:4], main = 'Multiple')
# All the plots together 
par(mfrow = c(3,3), mar = c(2,5,2,1), las =1, bty ='n') #mfrow = grid of 3 by 3, mar= margin
                                                        #las= for horiz. 1, otherwise 0
                                                        # bty = box around the plot
plot(airquality$Ozone)
plot(airquality$Solar.R)
plot(airquality$Wind, type='l')
plot(airquality$Ozone, xlab = 'ozone concentration', ylab = 'no. of instavees',
     main = 'ozone levels in NY city', col = 'blue')
plot(airquality$Ozone, type = 'b')
plot(airquality$Temp, type='p')
plot(airquality$Wind, airquality$Temp)
plot(airquality$Solar.R, airquality$Temp, type='l')
plot(airquality$Solar.R, airquality$Temp, type='b')
