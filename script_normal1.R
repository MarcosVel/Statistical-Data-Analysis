
x <- seq(-10,10, by = 0.1)
y <- dnorm(x, mean = 5, sd = 1)
png(file = "normal.png")
plot (x,y)

dev.off()
