Coeficientes de correlación
===========================

Existen diversos coeficientes que miden el grado de correlación, adaptados a la naturaleza de los datos. El más conocido es el coeficiente de correlación de Pearson (introducido en realidad por Francis Galton), que se obtiene dividiendo la covarianza de dos variables entre el producto de sus desviaciones estándar. Otros coeficientes son:

* Coeficiente de correlación de Spearman
* Correlación canónica

**Interpretación geométrica**

Dados los valores muestrales de dos variables aleatorias :math:`X(x_1, x2, ..., x_n)` e :math:`Y(y_1, y2, ..., y_n)`,  
que pueden ser consideradas como vectores en un espacio de n dimensiones, pueden construirse los "vectores centrados" como:

.. math::
 
   X(x_1 - \bar{x}, x2 - \bar{x}, ..., x_n- \bar{x}) e  Y(y_1 - \bar{y}, y2 - \bar{y}, ..., y_n- \bar{y})

El coseno del ángulo alfa entre estos vectores es dado por la fórmula siguiente:

.. math::

   r = \cos(\alpha) = \frac{\sum_{i=1}^n (x_i - \bar{x}} \cdot (y_i - \bar{y}{ \sqrt{\sum_{i=1}^n ((x_i - \bar{x})^2 \cdot \sqrt{\sum_{i=1}^n ((y_i - \bar{y})^2}}

Pues :math:`\cos(\alpha)` es el coeficiente de correlación muestral de Pearson. El coeficiente de correlación es el coseno del ángulo entre ambos vectores centrados:

* Si r = 1, el ángulo :math:`\alpha = 0^o` ambos vectores son colineales (paralelos).

* Si r = 0, el ángulo :math:`\alpha = 90^o` ambos vectores son ortogonales.

* Si r = -1, el ángulo :math:`\alpha = 180^o` ambos vectores son colineales de dirección opuesta.


Más generalmente: :math:`\alpha = arccos(r)`

