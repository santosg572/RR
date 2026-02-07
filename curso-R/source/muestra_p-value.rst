Como interpretar el p-value
===========================

.. code:: R

   rm(list=ls())

   x <- c(54, 57, 56, 57, 52, 49, 63, 61, 57, 59)
   x <- c(58, 69, 60, 62, 46, 48, 55, 59, 62, 51)
   x <- c(59, 53, 57, 62, 64, 60, 52, 54, 48, 60)

   np = length(x)
   mm = mean(x)
   sd1 = sd(x)
   ee = sd1/sqrt(np)

   t <- seq(mm - 4*ee, mm + 4*ee,.1)
   y <- dnorm(t, mean=mm, sd=ee)

   ma = max(y)
   cat('ma: ', ma, '\n')

   plot(t, y, type='l', ylim=c(0, ma + ma/2))

   points(c(mm, mm), c(0, .5), type='l', col='red', lwd=3)

   alfa = .05
   q = qt(1-alfa/2, np-1)

   ee = sd(x)/sqrt(np)

   q1 = mm - q * ee
   q2 = mm + q * ee

   cat(' intervalo de confianza:[ ', q1, ' , ',  q2, ']')

   mup = 60

   points(c(mup, mup), c(0, .1), type='l', col='blue', lwd=3)

   print(q1)

   points(c(q1, q1), c(0, .1), type='l', col='green', lwd=3)

   points(c(q2, q2), c(0, .1), type='l', col='green', lwd=3)

   res <- t.test(x, mu=mup)

   print(res)

   print(names(res))

   estadistica = (mm - mup)/ee

   cat('estadistica= ', estadistica, '\n')
   cat('p-value    = ', 2*pt(estadistica, np-1), '\n')



