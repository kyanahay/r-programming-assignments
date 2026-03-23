# Assignment 9
# Comparing Base R, Lattice, and ggplot2 using iris dataset

# Load dataset
data("iris")
head(iris)
str(iris)

# -------------------------
# Base R Graphics
# -------------------------

# Scatter plot
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Base R: Sepal Length vs Petal Length",
     xlab = "Sepal Length",
     ylab = "Petal Length",
     col  = as.numeric(iris$Species),
     pch  = 19)

legend("topleft",
       legend = levels(iris$Species),
       col = 1:3,
       pch = 19)

# Histogram
hist(iris$Sepal.Width,
     main = "Base R: Distribution of Sepal Width",
     xlab = "Sepal Width",
     col  = "lightblue",
     border = "white")

# -------------------------
# Lattice Graphics
# -------------------------
library(lattice)

# Conditioned scatter plot
xyplot(Petal.Length ~ Sepal.Length | Species,
       data = iris,
       main = "Lattice: Petal Length vs Sepal Length by Species",
       xlab = "Sepal Length",
       ylab = "Petal Length",
       col = "blue",
       pch = 19)

# Box plot
bwplot(Sepal.Width ~ Species,
       data = iris,
       main = "Lattice: Sepal Width by Species",
       xlab = "Species",
       ylab = "Sepal Width",
       col = "darkgreen")

# -------------------------
# ggplot2 Graphics
# -------------------------
install.packages("ggplot2")
library(ggplot2)

# Scatter plot with smoothing
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "ggplot2: Petal Length vs Sepal Length by Species",
       x = "Sepal Length",
       y = "Petal Length")

# Faceted histogram
ggplot(iris, aes(x = Sepal.Width)) +
  geom_histogram(binwidth = 0.2, fill = "skyblue", color = "black") +
  facet_wrap(~ Species) +
  labs(title = "ggplot2: Sepal Width Distribution by Species",
       x = "Sepal Width",
       y = "Count")
