library(av)

# Definir la función que dibuja cada fotograma (frame)
plot_frame <- function(i) {
  # Configurar el lienzo gráfico
  par(mar = c(4, 4, 2, 2))
  x <- seq(0, 10, length.out = 100)
  y <- sin(x + (i / 10))
  
  # Dibujar el gráfico en cada iteración
  plot(x, y, type = "l", col = "blue", lwd = 4,
       ylim = c(-1.5, 1.5), 
       main = paste("Fotograma:", i),
       xlab = "X", ylab = "Seno(X)")
}

# Crear el archivo MP4 renderizando 50 fotogramas a 10 cuadros por segundo (fps)
av_capture_graphics(
  expr = {
    for (i in 1:50) {
      plot_frame(i)
    }
  }, 
  output = "animacion.mp4", 
  width = 640, 
  height = 480, 
  framerate = 10
)

