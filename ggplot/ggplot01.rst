La gramática
============

https://ggplot2-book.org/mastery.html


Estás leyendo la tercera edición (en desarrollo) del libro ggplot2. Este capítulo es un vertedero de ideas, por lo que no recomendamos leerlo.

Para aprovechar al máximo el potencial de ggplot2, necesitarás dominar la gramática subyacente. Al comprender la gramática y cómo se integran sus componentes, podrás crear una gama más amplia de visualizaciones, combinar múltiples fuentes de datos y personalizarlas a tu gusto.

Este capítulo describe la base teórica de ggplot2: la gramática de capas para gráficos. Esta gramática se basa en la gramática de Wilkinson para gráficos ( Wilkinson, 2005 ) , pero incorpora varias mejoras que la hacen más expresiva y se integra a la perfección en el entorno R. Las diferencias entre la gramática de capas y la de Wilkinson se describen detalladamente en Wickham ( 2008 ) . En este capítulo, aprenderá un poco sobre cada componente de la gramática y cómo se integran entre sí. Los siguientes capítulos analizan los componentes con más detalle y ofrecen más ejemplos de su uso práctico.

La gramática facilita la actualización iterativa de un gráfico, modificando una sola característica a la vez. Además, es útil porque sugiere los aspectos generales del gráfico que se pueden modificar, lo que proporciona un marco para pensar en gráficos y, con suerte, acorta la distancia entre la mente y el papel. Además, fomenta el uso de gráficos personalizados para un problema específico, en lugar de depender de tipos de gráficos específicos.

Este capítulo comienza describiendo en detalle el proceso de dibujar un gráfico simple. La construcción de un diagrama de dispersión comienza con un diagrama simple, y luego, al añadir complejidad, se lo hace más complejo añadiendo una línea suave y facetas. Al trabajar con estos ejemplos, se le presentarán los seis componentes de la gramática, que se definen con mayor precisión en " Componentes de la gramática en capas" .

Construyendo un diagrama de dispersión
¿Cómo se relacionan la cilindrada y el consumo de combustible? Podríamos crear un diagrama de dispersión de la cilindrada y el consumo de combustible en carretera, con puntos coloreados según el número de cilindros:

ggplot(mpg, aes(displ, hwy, colour = factor(cyl))) +
  geom_point()



Puedes crear gráficos como este fácilmente, pero ¿qué ocurre bajo la superficie? ¿Cómo dibuja ggplot2 este gráfico?

Mapeo de la estética a los datos
¿Qué es exactamente un diagrama de dispersión? Ya has visto muchos antes y probablemente incluso hayas dibujado algunos a mano. Un diagrama de dispersión representa cada observación como un punto, posicionado según el valor de dos variables. Además de una posición horizontal y vertical, cada punto también tiene un tamaño, un color y una forma. Estos atributos se denominan estética y son las propiedades que se pueden percibir en el gráfico. Cada estética puede asignarse a una variable o establecerse en un valor constante. En el gráfico anterior, displse asigna a la posición horizontal, hwya la vertical y cylal color. El tamaño y la forma no se asignan, sino que se mantienen en sus valores predeterminados (constantes).

Una vez que tengamos estos mapeos, podemos crear un nuevo conjunto de datos que registre esta información:

incógnita	y	color
1.8	29	4
1.8	29	4
2.0	31	4
2.0	30	4
2.8	26	6
2.8	26	6
3.1	27	6
1.8	26	4
Este nuevo conjunto de datos es el resultado de aplicar las asignaciones estéticas a los datos originales. Podemos crear diversos tipos de gráficos con estos datos. El diagrama de dispersión usa puntos, pero si dibujáramos líneas, obtendríamos un gráfico de líneas. Si usáramos barras, obtendríamos un gráfico de barras. Ninguno de estos ejemplos tiene sentido para estos datos, pero aun así podríamos dibujarlos (hemos omitido las leyendas para ahorrar espacio).

ggplot(mpg, aes(displ, hwy, colour = factor(cyl))) +
  geom_line() + 
  theme(legend.position = "none")

ggplot(mpg, aes(displ, hwy, colour = factor(cyl))) +
  geom_bar(stat = "identity", position = "identity", fill = NA) + 
  theme(legend.position = "none")





En ggplot, podemos crear muchos gráficos sin sentido, pero gramaticalmente válidos. Esto no difiere del inglés, donde podemos crear oraciones sin sentido pero gramaticalmente correctas, como "la roca enojada ladró como una coma".

Los puntos, las líneas y las barras son ejemplos de objetos geométricos, o geoms . Los geoms determinan el tipo de gráfico. Los gráficos que utilizan un solo geom suelen recibir un nombre especial:

Parcela con nombre	Geom	Otras características
diagrama de dispersión	punto	
gráfico de burbujas	punto	tamaño asignado a una variable
gráfico de barras	bar	
diagrama de caja y bigotes	diagrama de caja	
gráfico de líneas	línea	
Los gráficos más complejos con combinaciones de múltiples geoms no tienen un nombre específico, por lo que debemos describirlos manualmente. Por ejemplo, este gráfico superpone una línea de regresión por grupo sobre un diagrama de dispersión:

ggplot(mpg, aes(displ, hwy, colour = factor(cyl))) + 
  geom_point() + 
  geom_smooth(method = "lm")
#> `geom_smooth()` using formula = 'y ~ x'



¿Cómo llamarías a esta trama? Una vez que domines la gramática, descubrirás que muchas de las tramas que crees se adaptan específicamente a tus problemas y ya no tendrán nombres especiales.

Escalada
Los valores de la tabla anterior no tienen significado para la computadora. Necesitamos convertirlos de unidades de datos (p. ej., litros, millas por galón y número de cilindros) a unidades gráficas (p. ej., píxeles y colores) que la computadora pueda mostrar. Este proceso de conversión se denomina escalado y se realiza mediante escalas. Si bien estos valores son significativos para la computadora, pueden no serlo para nosotros: los colores se representan mediante una cadena hexadecimal de seis letras, los tamaños mediante un número y las formas mediante un entero. Estas especificaciones estéticas, significativas para R, se describen en vignette("ggplot2-specs").

En este ejemplo, tenemos tres estéticas que deben escalarse: posición horizontal ( x), posición vertical ( y) y colour. Escalar la posición es fácil en este ejemplo porque usamos las escalas lineales predeterminadas. Solo necesitamos una asignación lineal del rango de datos a
Nosotros usamos
En lugar de píxeles exactos, ya que el sistema de dibujo que usa ggplot2, grid , se encarga de la conversión final. Un paso final determina cómo se combinan las dos posiciones (x e y) para formar la ubicación final en el gráfico. Esto se realiza mediante el sistema de coordenadas, o coord . En la mayoría de los casos, se trata de coordenadas cartesianas, pero también pueden ser coordenadas polares o una proyección esférica utilizada en un mapa.

El proceso para mapear el color es un poco más complicado, ya que obtenemos un resultado no numérico: los colores. Sin embargo, los colores pueden considerarse como tres componentes, correspondientes a los tres tipos de células que detectan el color en el ojo humano. Estos tres tipos de células dan lugar a un espacio de color tridimensional. El escalado implica mapear los valores de los datos a puntos en este espacio. Hay muchas maneras de hacerlo, pero en este caso, dado que cyles una variable categórica, mapeamos los valores a tonos uniformemente espaciados en el círculo cromático, como se muestra en la figura siguiente. Se utiliza una asignación diferente cuando la variable es continua.



Una rueda de color que ilustra la elección de cinco colores equidistantes. Esta es la escala predeterminada para variables discretas.
El resultado de estas conversiones se muestra a continuación. Además de las estéticas asignadas a variables, también incluimos estéticas constantes. Estas son necesarias para que la estética de cada punto esté completamente especificada y R pueda dibujar la gráfica. Los puntos serán círculos rellenos (forma 19 en R) con un diámetro de 1 mm.

incógnita	y	color	tamaño	forma
0.037	0.531	#F8766D	1	19
0.037	0.531	#F8766D	1	19
0.074	0.594	#F8766D	1	19
0.074	0.562	#F8766D	1	19
0.222	0.438	#00BFC4	1	19
0.222	0.438	#00BFC4	1	19
0.278	0.469	#00BFC4	1	19
0.037	0.438	#F8766D	1	19
Finalmente, necesitamos renderizar estos datos para crear los objetos gráficos que se muestran en pantalla. Para crear un gráfico completo, necesitamos combinar objetos gráficos de tres fuentes: los datos , representados por el punto geom; las escalas y el sistema de coordenadas , que generan ejes y leyendas para leer los valores del gráfico; y las anotaciones del gráfico , como el fondo y el título.

Añadiendo complejidad
Con un ejemplo sencillo en mente, veamos ahora este ejemplo un poco más complicado:

ggplot(mpg, aes(displ, hwy)) + 
  geom_point() +
  geom_smooth() + 
  facet_wrap(~year)



Este gráfico añade tres nuevos componentes: facetas, capas múltiples y estadísticas. Las facetas y las capas amplían la estructura de datos descrita anteriormente: cada panel de facetas de cada capa tiene su propio conjunto de datos. Puede considerarse como una matriz tridimensional: los paneles de las facetas forman una cuadrícula bidimensional y las capas se extienden hacia arriba en la tercera dimensión. En este caso, los datos de las capas son los mismos, pero, en general, podemos representar gráficamente diferentes conjuntos de datos en distintas capas.

La capa suavizada se diferencia de la capa de puntos porque no muestra los datos sin procesar, sino una transformación estadística de los mismos. En concreto, la capa suavizada ajusta una línea suave por el centro de los datos. Esto requiere un paso adicional en el proceso descrito anteriormente: tras asignar los datos a la estética, estos se transfieren a una transformación estadística, o stat , que los manipula de forma útil. En este ejemplo, stat ajusta los datos a un suavizador de loess y, a continuación, devuelve predicciones a partir de puntos uniformemente espaciados dentro del rango de los datos. Otras estadísticas útiles incluyen la agrupación unidimensional y bidimensional, las medias de grupo, la regresión cuantílica y el trazado de contornos.

Además de añadir un paso adicional para resumir los datos, también necesitamos pasos adicionales al llegar a las escalas. Esto se debe a que ahora tenemos múltiples conjuntos de datos (para las diferentes facetas y capas) y debemos asegurarnos de que las escalas sean las mismas en todos ellos. El escalado se realiza en tres partes: transformación, entrenamiento y mapeo. No hemos mencionado la transformación antes, pero probablemente ya la haya visto en gráficos logarítmicos. En un gráfico logarítmico, los valores de los datos no se mapean linealmente a su posición en el gráfico, sino que primero se transforman logarítmicamente.

La transformación de escala ocurre antes de la transformación estadística, de modo que las estadísticas se calculan sobre los datos transformados de escala. Esto garantiza que una gráfica de
vs. 
en escalas lineales se ve igual que
vs. 
En escalas logarítmicas. Existen numerosas transformaciones, como la extracción de raíces cuadradas, logaritmos y recíprocos. Véase el apartado 10 "Escalas y ejes de posición" para más detalles.

Tras calcular las estadísticas, cada escala se entrena en cada conjunto de datos de todas las capas y facetas. El entrenamiento combina los rangos de los conjuntos de datos individuales para obtener el rango de los datos completos. Sin este paso, las escalas solo tendrían sentido localmente y no sería posible superponer diferentes capas porque sus posiciones no coincidirían. En ocasiones, es necesario variar las escalas de posición entre facetas (pero nunca entre capas), lo cual se describe con más detalle en Control de escalas .

Finalmente, las escalas asignan los valores de los datos a valores estéticos. Esta es una operación local: las variables de cada conjunto de datos se asignan a sus valores estéticos, generando un nuevo conjunto de datos que los geoms pueden renderizar.

La siguiente figura ilustra esquemáticamente el proceso completo.



Descripción esquemática del proceso de generación de gráficos. Cada cuadrado representa una capa, y este esquema representa un gráfico con tres capas y tres paneles. Todos los pasos funcionan transformando marcos de datos individuales, excepto las escalas de entrenamiento, que no afectan al marco de datos y operan simultáneamente en todos los conjuntos de datos.
Componentes de la gramática en capas
En los ejemplos anteriores, hemos visto algunos de los componentes que conforman un gráfico: datos y asignaciones estéticas, objetos geométricos (geoms), transformaciones estadísticas (stats), escalas y facetado. También hemos abordado el sistema de coordenadas. Algo que no mencionamos es el ajuste de posición, que se encarga de la superposición de objetos gráficos. Juntos, los datos, las asignaciones, las estadísticas, la geom y el ajuste de posición forman una capa . Un gráfico puede tener varias capas, como en el ejemplo donde superpusimos una línea suavizada en un diagrama de dispersión. En conjunto, la gramática de capas define un gráfico como la combinación de:

Un conjunto de datos predeterminado y un conjunto de asignaciones de variables a la estética.

Una o más capas, cada una compuesta de un objeto geométrico, una transformación estadística, un ajuste de posición y, opcionalmente, un conjunto de datos y mapeos estéticos.

Una escala para cada mapeo estético.

Un sistema de coordenadas.

La especificación de facetado.

Las siguientes secciones describen cada uno de los componentes de nivel superior con mayor precisión y le indican las partes del libro donde están documentados.

Capas
Las capas son responsables de crear los objetos que percibimos en la trama. Una capa se compone de cinco partes:

Datos
Mapeos estéticos.
Una transformación estadística (stat).
Un objeto geométrico (geom).
Un ajuste de posición.
Las propiedades de una capa se describen en 13 Construya un gráfico capa por capa y sus usos para la visualización de datos se describen en 3 Geoms individuales a 8 Anotaciones .

Balanza
Una escala controla la correlación entre los datos y los atributos estéticos, y necesitamos una escala para cada estético utilizado en un gráfico. Cada escala opera sobre todos los datos del gráfico, garantizando una correlación consistente entre los datos y los estéticos. A continuación se muestran algunos ejemplos.



Ejemplos de leyendas de cuatro escalas diferentes. De izquierda a derecha: variable continua asignada a tamaño y color, variable discreta asignada a forma y color. El orden de las escalas parece estar invertido, pero coincide con el etiquetado de las...
-eje: los valores pequeños aparecen en la parte inferior.
Una escala es una función y su inversa, junto con un conjunto de parámetros. Por ejemplo, la escala de gradiente de color asigna un segmento de la línea real a una trayectoria a través de un espacio de color. Los parámetros de la función definen si la trayectoria es lineal o curva, qué espacio de color utilizar (p. ej., LUV o RGB) y los colores al inicio y al final.

La función inversa se utiliza para dibujar una guía que permita leer los valores del gráfico. Las guías son ejes (para las escalas de posición) o leyendas (para todo lo demás). La mayoría de las asignaciones tienen una función inversa única (es decir, la función de asignación es biunívoca), pero muchas no. Una función inversa única permite recuperar los datos originales, pero esto no siempre es conveniente si queremos centrar la atención en un solo aspecto.

Para más detalles, véase 11 Escalas de colores y leyendas .

Sistema de coordenadas
Un sistema de coordenadas, o coord para abreviar, representa la posición de los objetos en el plano de la gráfica. La posición suele especificarse mediante dos coordenadas.
, pero potencialmente podrían ser tres o más (aunque esto no está implementado en ggplot2). El sistema de coordenadas cartesianas es el más común para dos dimensiones, mientras que las coordenadas polares y diversas proyecciones cartográficas se usan con menos frecuencia.

Los sistemas de coordenadas afectan simultáneamente a todas las variables de posición y se diferencian de las escalas en que también modifican la apariencia de los objetos geométricos. Por ejemplo, en coordenadas polares, las geometrías de barras se asemejan a segmentos de un círculo. Además, el escalado se realiza antes de la transformación estadística, mientras que las transformaciones de coordenadas se realizan después. Las consecuencias de esto se muestran en Sistemas de coordenadas no lineales .

Los sistemas de coordenadas controlan cómo se dibujan los ejes y las líneas de la cuadrícula. La figura a continuación ilustra tres tipos diferentes de sistemas de coordenadas: cartesianos, semilogarítmicos y polares. Hay muy poca información disponible sobre cómo dibujarlos en sistemas de coordenadas no cartesianos, por lo que se requiere mucho trabajo para obtener un resultado preciso. Consulte la sección 15 Sistemas de coordenadas para obtener más detalles.







El sistema de coordenadas polares ilustra las dificultades asociadas con las coordenadas no cartesianas: es difícil dibujar bien los ejes.

Facetado
También existe otra herramienta lo suficientemente útil como para incluirla en nuestro marco general: el facetado, un caso general de gráficos condicionados o enrejados. Esto facilita la creación de pequeños múltiplos, cada uno mostrando un subconjunto diferente del conjunto de datos. Esta herramienta es muy útil para investigar si los patrones se mantienen en todas las condiciones. La especificación del facetado describe qué variables deben utilizarse para dividir los datos y si las escalas de posición deben ser libres o restringidas. El facetado se describe en Ajustes de posición .

Ceremonias
Una de las mejores maneras de comprender el funcionamiento de la gramática es aplicarla al análisis de gráficos existentes. Para cada uno de los gráficos listados a continuación, anota sus componentes. No te preocupes si no sabes cómo se llaman las funciones correspondientes en ggplot2 (¡o si siquiera existen!). En lugar de eso, concéntrate en registrar los elementos clave de un gráfico para poder comunicárselo a alguien más.

“La marcha de Napoleón” de Charles John Minard: http://www.datavis.ca/gallery/re-minard.php

“Donde el calor y el trueno disparan”, por Jeremy White, Joe Ward y Matthew Ericson en The New York Times. http://nyti.ms/1duzTvY

“Viajes en bicicleta de alquiler por Londres”, de James Cheshire. http://bit.ly/1S2cyRy

Las visualizaciones de datos favoritas del Pew Research Center de 2014: http://pewrsr.ch/1KZSSN6

“Los Tony nunca han estado tan dominados por mujeres”, por Joanna Kao en FiveThirtyEight: http://53eig.ht/1cJRCyG .

“Al ascender en la escala de ingresos, la ubicación importa”, por Mike Bostock, Shan Carter, Amanda Cox, Matthew Ericson, Josh Keller, Alicia Parlapiano, Kevin Quealy y Josh Williams en el New York Times: http://nyti.ms/1S2dJQT

“Diseccionar un tráiler: Las partes de la película que logran el corte”, por Shan Carter, Amanda Cox y Mike Bostock en el New York Times: http://nyti.ms/1KTJQOE

Wickham, Hadley. 2008. “Herramientas prácticas para explorar datos y modelos”. Tesis doctoral, Universidad Estatal de Iowa. http://had.co.nz/thesis .
Wilkinson, Leland. 2005. La gramática de los gráficos . 2.ª ed. Estadística y computación. Springer.
12   Otra estética


