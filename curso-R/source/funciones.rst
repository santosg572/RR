Funciones en R
==============

Las funciones en R son **programas** que realizan un calculo y entrega resultados.

Estas funciones aceptan parametros de entrada para realizar sus calculos.

**Ejemplos**

+-----------+--------------------------------------------------------------------+
| Función   | Significado                                                        |
+===========+====================================================================+
| *sum()*   | calcula la suma de los elementos de un vector o matriz             |
+-----------+--------------------------------------------------------------------+
| *mean()*  | calcula la media aritmética de los elementos de un vector o matriz |
+-----------+--------------------------------------------------------------------+
| *getwd()* | te dice en que folder estas guardando tus datos                    |                                                      
+-----------+--------------------------------------------------------------------+
| *setwd()* | cambia tu folder de trabajo                                        |                                                      
+-----------+--------------------------------------------------------------------+
| *max()*   | encuentra el máximo                                                |                                                      
+-----------+--------------------------------------------------------------------+
| *min()*   | encuentra el mínimo                                                |                                                      
+-----------+--------------------------------------------------------------------+
| *sum()*   | calcula la suma de los elementos de un vector o matriz             |
+-----------+--------------------------------------------------------------------+
| *mean()*  | calcula la media aritmética de los elementos de un vector o matriz |
+-----------+--------------------------------------------------------------------+
| *median()*| calcula la mediana                                                 |
+-----------+--------------------------------------------------------------------+
| *log()*   | calula el logaritmo de base e                                      |
+-----------+--------------------------------------------------------------------+
| *plot()*  | crea ventana y grafica pares ordenados en el plano                 |
+-----------+--------------------------------------------------------------------+
| *points()*| grafica pares ordenados en la ventana definida previamente         |
+-----------+--------------------------------------------------------------------+

**Ejemplos**

1. Sea x = c(3, 2, 5, 3, 2, 6)

.. code:: R

   mean(x)
   min(x)
   median(x)

2. Grafica de un circulo.

.. code:: R

   t <- seq(0, 2*pi, .01)
   x <- cos(t)
   y <- sin(t)
   plot(x,y)



