library(ggplot2)

p <- ggplot(mpg, aes(displ, hwy, colour = class)) + 
  geom_point()

print(p)


