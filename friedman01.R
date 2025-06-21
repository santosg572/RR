# https://docs.tibco.com/pub/enterprise-runtime-for-R/6.1.5/doc/html/Language_Reference/stats/friedman.test.html

source('funciones.R')

# eje01

x = round(rnorm(21, 55,7))
ii = factor(rep(c('A1', 'A2', 'A3'), each=7))
jj  = factor(rep(c('B1', 'B2', 'B3', 'B4'), c(5,5,5,6)))

boxplot(x ~ jj)

eje01 <- friedman.test(x, ii, jj)

Titulo('e01')
print(eje01)
Linea()

res5 <- aov(x  ~ ii+jj)

print(summary(res5))

# e02

treatments <- factor(rep(c("Trt1", "Trt2", "Trt3"), each=4))
print(treatments)
people <- factor(rep(c("Subject1", "Subject2", "Subject3", "Subject4"), 3))
print(people)
y <- c(0.73,0.76,0.46,0.85,0.48,0.78,0.87,0.22,0.51,0.03,0.39,0.44)
print(length(y))

boxplot(y ~ people)

res2 <- friedman.test(y, treatments, people) 

Titulo('e02')
print(res2)
Linea()

res3 <- aov(y ~  treatments+people)

print(summary(res3))

#===========================================
# eje03

# Now suppose the data is in the form of a matrix, rows are people and
#   columns are treatments.
# Generate 'ymat' and the factor objects: 
ymat <- matrix(c(0.73,0.76,0.46,0.85,0.48,0.78,0.87,0.22,0.51,
     0.03,0.39,0.44), ncol=3)
bl <- factor(as.vector(row(ymat)))
gr <- factor(as.vector(col(ymat)))   

eje03 <- friedman.test(ymat, gr, bl)  # same answer as above 

print('--------------- eje03 ----------------')
print(eje03)
