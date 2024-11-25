library(ggplot2) 
load(mpg)

print(mpg)
print(drv)
print(hwy)

p = ggplot(mpg, aes(drv, hwy)) + geom_boxplot() 

print(p)



