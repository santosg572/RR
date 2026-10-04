library(animation)

plot_frame <- function(frame_number) {
  plot(rnorm(100), rnorm(100),
       xlim = c(-3, 3), ylim = c(-3, 3),
       pch = 20, col = "blue",
       main = paste0("Frame ", frame_number))
}

# Create the animation
saveGIF({
  for (i in 1:10) {
    plot_frame(i)
    ani.pause(0.5)
  }
}, movie.name = "random_points.gif",
        ani.width = 480,
        ani.height = 320)


