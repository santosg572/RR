source('funciones.R')

x <- c(8.2, 9.4, 9.6, 9.7, 10.0, 14.5, 15.2, 16.1, 17.6, 21.5)
y <- c(4.2, 5.2, 5.8, 6.4, 7.0, 7.3, 10.1, 11.2, 11.3, 11.5)
# A Wilcoxon rank sum test:

res <-wilcox.test(x, y)

Titulo('e01')
print(res)
Linea()


