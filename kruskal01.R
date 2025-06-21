# https://docs.tibco.com/pub/enterprise-runtime-for-R/6.1.5/doc/html/Language_Reference/stats/kruskal.test.html

source('funciones.R')

# e01

# Data from Hollander and Wolfe (1973), p. 116 
holl.x <- c(2.9,3.0,2.5,2.6,3.2,3.8,2.7,4.0,2.4,2.8,3.4,3.7,2.2,2.0)
holl.grps <- factor(c(1,1,1,1,1,2,2,2,2,3,3,3,3,3), 
     labels=c("Normal Subjects","Obstr. Airway Disease","Asbestosis"))
e01 <- kruskal.test(holl.x, holl.grps) 

Titulo('e01')
print(e01)
Linea()





