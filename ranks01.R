# https://docs.tibco.com/pub/enterprise-runtime-for-R/6.1.5/doc/html/Language_Reference/base/rank.html

source('funciones.R')

# Create sample objects:
testscores <- matrix(sample(30:98, 60, replace = TRUE), 30, 2)
diffgeom <- testscores[,1] 
complexanal <- testscores[,2] 
e01 <- rank(diffgeom)

Titulo('e01')
print(e01)
Linea()


