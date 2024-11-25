library(ggplot2) 

p = ggplot(mpg, aes(x = displ, y = hwy)) + geom_point()

print(p)



