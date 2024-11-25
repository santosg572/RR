library(ggplot2) 

p = ggplot(mpg, aes(displ, hwy)) + geom_point(aes(colour = "blue"))

print(p)



