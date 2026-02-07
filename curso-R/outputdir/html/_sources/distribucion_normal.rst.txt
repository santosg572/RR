Distribución Normal
===================

.. https://es.wikipedia.org/wiki/Distribuci%C3%B3n_normal

En estadística y probabilidad se llama distribución normal, distribución de Gauss, distribución gaussiana, distribución de Laplace-Gauss o normalidad estadística a una de las distribuciones de probabilidad de variable continua que con más frecuencia aparece en estadística y en la teoría de probabilidades.[1]​ 

La gráfica de su función de densidad tiene una forma acampanada y es simétrica respecto de un determinado parámetro estadístico. Esta curva se conoce como campana de Gauss y es el gráfico de una función gaussiana.[2]​ Su forma general es: 

.. math::

   f(x) = \frac{1}{\sqrt{2 \pi \sigma^2}} e^{- \frac{(x-\mu)^2}{2 \sigma^2}}

La importancia de esta distribución radica en que permite modelar numerosos fenómenos naturales, sociales y psicológicos.[3]​ Mientras que los mecanismos que subyacen a gran parte de este tipo de fenómenos son desconocidos, por la enorme cantidad de variables incontrolables que en ellos intervienen, el uso del modelo normal puede justificarse asumiendo que cada observación se obtiene como la suma de unas pocas causas independientes.

La distribución normal también es importante por su relación con la estimación por mínimos cuadrados, uno de los métodos de estimación más simples y antiguos. 

Algunos ejemplos de variables asociadas a fenómenos naturales que siguen el modelo de la normal son:

* caracteres morfológicos de individuos como la estatura;
* caracteres fisiológicos como el efecto de un fármaco;
* caracteres sociológicos como el consumo de cierto producto por un mismo grupo de individuos;
* caracteres psicológicos como el cociente intelectual;
* nivel de ruido en telecomunicaciones;
* errores cometidos al medir ciertas magnitudes;
* etc.

La distribución normal también aparece en muchas áreas de la propia estadística. Por ejemplo, la distribución muestral de las medias muestrales es aproximadamente normal, aún cuando la distribución de la población de la cual se extrae la muestra no es normal, siempre que la muestra sea suficientemente grande.[4]​ Además, la distribución normal maximiza la entropía entre todas las distribuciones con media y varianza conocidas, lo cual la convierte en la elección natural de la distribución subyacente a una lista de datos resumidos en términos de media muestral y varianza. La distribución normal es la más extendida en estadística y muchos tests estadísticos están basados en una "normalidad" más o menos justificada de la variable aleatoria bajo estudio. 

En probabilidad, la distribución normal aparece como el límite de varias distribuciones de probabilidad continuas y discretas. 

**Historia**

La distribución normal fue presentada por primera vez por Abraham de Moivre en un artículo del año 1733,[5]​ que fue reimpreso en la segunda edición de su The Doctrine of Chances, de 1738, en el contexto de cierta aproximación de la distribución binomial para grandes valores de n. Su resultado fue ampliado por Laplace en su libro Teoría analítica de las probabilidades (1812), y en la actualidad se llama Teorema de De Moivre-Laplace. 

Laplace usó la distribución normal en el análisis de errores de experimentos. El importante método de mínimos cuadrados fue introducido por Legendre en 1805. Gauss, que afirmaba haber usado el método desde 1794, lo justificó rigurosamente en 1809 asumiendo una distribución normal de los errores. El nombre de Gauss se ha asociado a esta distribución porque la usó con profusión cuando analizaba datos astronómicos[6]​ y algunos autores le atribuyen un descubrimiento independiente del de De Moivre.[7]​ Esta atribución del nombre de la distribución a una persona distinta de su primer descubridor es un claro ejemplo de la ley de Stigler. 

El nombre de "campana" viene de Esprit Jouffret que usó el término "bell surface" (superficie campana) por primera vez en 1872 para una distribución normal bivariante de componentes independientes. El nombre de "distribución normal" fue otorgado independientemente por Charles S. Peirce, Francis Galton y Wilhelm Lexis hacia 1875.[cita requerida] A pesar de esta terminología, otras distribuciones de probabilidad podrían ser más apropiadas en determinados contextos; véase la discusión sobre incidencia, más abajo. 

**Definición formal**

La función de distribución de la distribución normal está definida como sigue: 

.. math::

   \Phi_{\mu, \sigma^2}(x) = \int_{- \infty}^x \varphi_{\mu, \sigma^2}(u) du

   = \frac{1}{\sigma \sqrt{2 \pi}} \int_{- \infy}^x e^{- \frac{(u - \mu)^2}{2\sigma^2}} du, x \in \mathbb{R} 

donde:

* :math:`\mu` es la media (también puede ser la mediana, la moda o el valor esperado, según aplique)
* :math:`\sigma` es la desviación típica [estándar es un anglicismo]
* :math:`\sigma^{2}` es la varianza
* :math:`\varphi` representa la función de densidad de probabilidad

También podemos definir la distribución normal a través de su función de densidad: 

.. math::

   \varphi_{\mu,\sigma^2}(x) = \frac{1}{\sigma \sqrt{2 \pi}} e^{-\frac{(x-\mu)^2}{2 \sigma^2}}, x \in \mathbb{R} 

La función de distribución normal estándar es un caso especial de la función donde :math:`\mu =0` y :math:`\sigma =1`: 

.. math::

   \Phi(x) =  \Phi_{0,1} (x) = \frac{1}{\sigma \sqrt{2 \pi}} \int_{-\infty}^x e^{-\frac{u^2}{2}} du, x \in \mathbb{R} 

**Propiedades**

Algunas propiedades de la distribución normal son las siguientes:

1. Es simétrica respecto de su media, :math:`\mu`.
2. La moda y la mediana son ambas iguales a la media, :math:`\mu`.
3. Los puntos de inflexión de la curva se dan para :math:`x = \mu −\sigma` y :math:`x = \mu + \sigma`. 
4. Distribución de probabilidad en un entorno de la media:
        
a) en el intervalo :math:`[ \mu −\sigma, \mu + \sigma ]` se encuentra comprendida, aproximadamente, el 68.26 % de la distribución;

b) en el intervalo :math:`[ \mu - 2\sigma, \mu + 2\sigma ]`  se encuentra, aproximadamente, el 95.44 % de la distribución;

c) por su parte, en el intervalo :math:`[ \mu - 3\sigma, \mu + 3\sigma ]`  se encuentra comprendida, aproximadamente, el 99.74 % de la distribución. Estas propiedades son de gran utilidad para el establecimiento de intervalos de confianza. Por otra parte, el hecho de que prácticamente la totalidad de la distribución se encuentre a tres desviaciones típicas de la media justifica los límites de las tablas empleadas habitualmente en la normal estándar.

5. Si :math:`X \sim {\mathcal {N}}(\mu ,\sigma ^{2}) \text{ y }  a,b \in \mathbb {R}`, entonces
:math:`aX+b \sim {\mathcal {N}}(a\mu +b,a^{2}\sigma ^{2})`.

6. Si :math:`X \sim {\mathcal {N}}(\mu _{X},\sigma _{X}^{2}) e Y\sim {\mathcal {N}}(\mu _{Y},\sigma _{Y}^{2})` son variables aleatorias normales independientes, entonces:

* Su suma está normalmente distribuida con :math:`U=X+Y \sim {\mathcal {N}}(\mu _{X}+\mu _{Y},\sigma _{X}^{2}+\sigma _{Y}^{2})`. Recíprocamente, si dos variables aleatorias independientes tienen una suma normalmente distribuida, deben ser normales (Teorema de Crámer).
* Su diferencia está normalmente distribuida con :math:`V=X-Y\sim {\mathcal {N}}(\mu _{X}-\mu _{Y},\sigma _{X}^{2}+\sigma _{Y}^{2})`.
* Si las varianzas de X e Y son iguales, entonces U y V son independientes entre sí.

8. Si :math:`X_{1},\dots ,X_{n}` son variables normales estándar independientes, :math:`X_{1}^{2}+\cdots +X_{n}^{2}` sigue una distribución :math:`\chi` con n grados de libertad.

9. Si :math:`X_{1},\dots ,X_{n}` son variables normales estándar independientes, entonces la media muestral :math:`\bar{X}}=(X_{1}+\cdots +X_{n})/n}` y la varianza muestral :math:`S^{2}=((X_{1}-{\bar {X}})^{2}+\cdots +(X_{n}-{\bar {X}})^{2})/(n-1)}` son independientes. Esta propiedad caracteriza a las distribuciones normales y contribuye a explicar por qué el test-F no es robusto respecto a la no-normalidad).

**Estandarización de variables aleatorias normales**

Como consecuencia de la Propiedad 1; es posible relacionar todas las variables aleatorias normales con la distribución normal estándar.

Si :math:`X\,\sim {\mathcal {N}}(\mu ,\sigma )\`, entonces

.. math::

   Z={\frac {X-\mu }{\sigma }}\!}

es una variable aleatoria normal estándar: :math:`ZX \sim \mathcal {N}}(0,1)`. 

**El Teorema del Límite Central**

El Teorema del límite central establece que bajo ciertas condiciones (como pueden ser independientes e idénticamente distribuidas con varianza finita), la suma de un gran número de variables aleatorias se distribuye aproximadamente como una normal.

La importancia práctica del Teorema del límite central es que la función de distribución de la normal puede usarse como aproximación de algunas otras funciones de distribución. Por ejemplo: 

* Una distribución binomial de parámetros n y p es aproximadamente normal para grandes valores de n, y p no demasiado cercano a 0 o a 1 (algunos libros recomiendan usar esta aproximación solo si np y n(1 − p) son ambos, al menos, 5; en este caso se debería aplicar una corrección de continuidad).
    La normal aproximada tiene parámetros μ = np, σ2 = np(1 − p).
* Una distribución de Poisson con parámetro λ es aproximadamente normal para grandes valores de λ.
    La distribución normal aproximada tiene parámetros μ = σ2 = λ.





