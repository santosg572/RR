library(ggplot2) 

p = ggplot(mpg, aes(displ, hwy)) + geom_point(colour = "blue") 

print(p)



