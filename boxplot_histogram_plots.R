# Frequency of hospital visits
Frequency <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)

# Blood pressure
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)

# First assessment (bad = 1, good = 0)
First <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)

# Second assessment (low = 0, high = 1)
Second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)

# Final decision (low = 0, high = 1)
FinalDecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

par(mfrow = c(1, 2))

# Histogram of Blood Pressure
hist(BP,
     main = "Histogram of Blood Pressure",
     xlab = "Blood Pressure",
     col = "lightgray",
     breaks = 5)

# Boxplot of BP by Final MD Decision
boxplot(BP ~ FinalDecision,
        main = "Blood Pressure by Final MD Decision",
        xlab = "Final Decision (0 = Low, 1 = High)",
        ylab = "Blood Pressure",
        col = c("lightblue", "salmon"))

par(mfrow = c(1, 1))


