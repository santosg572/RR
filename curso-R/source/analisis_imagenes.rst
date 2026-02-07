Analisis de Imagenes
====================

1. Desplegar imágenes en formato "jpg".3
2. Mejorar o modificar imágenes a tonos de gris.
3. Segmentar regiones de interés

.. code:: R

   library(freesurferformats)

   datos = read.fs.mgh("T1.mgz")

   dd = dim(datos)

   for (i in 1:dd[1]){
      img = datos[,,i,1]
      image(img, col= gray.colors(255))
   }


