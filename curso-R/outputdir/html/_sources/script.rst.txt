Script's
==============

Un **Script** es un programa que esta guardado en un folder con extensión ".R".

El programa esta formado de una secuencia de intrucciones que resuelven un problema dado.

**Ejemplo**

1. Resolver la ecuación la ecuación: :math:`x^2 + x -2 =0`

PASO 1. Buscamos una solución al poblema, en este caso es la expresión:

.. math::
   
   x = \frac{-b \pm \sqrt{b^2-4ac}}{2a}

PASO 2. Escribimos el script:

.. code:: R 
 
   a = 1
   b = 1
   c = -2
 
   del1 = b^2 - 4*a*c
   print(del1)

   x1 = (-b + sqrt(del1))/(2*a)
   x2 = (-b - sqrt(del1))/(2*a)
  
   print(c(x1, x2))

PASO 3. Ejecutamos el script

.. code:: R

   > source('problema1.R')


2. Graficar un círculo de radio 2 cuyo centro es el punto (2,3)

PASO 1. La solucion para graficar es utilizando las coordenadas polares de uncirculo.

.. mat::

   x = x_0 + r \cos(\theta)
   y = y_0 + r \sin(\theta)

Donde :math:`(x_0, y_0)` es el centro del circulo, r es el radio y :math:`\theta` es el angulo que describe el circulo.

PASO 2. Escribir el circulo

.. code::

   t = seq(0, 2*pi, .01)

   x = 2 + 2*cos(t)
   y = 3 + 2*sin(t)

   plot(x,y, type='l')


