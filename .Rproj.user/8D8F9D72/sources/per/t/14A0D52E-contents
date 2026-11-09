# Simple Linear Regression

# Create dataset
data <- data.frame(
  Hours = c(1, 2, 3, 4, 5),
  Marks = c(35, 40, 50, 55, 65)
)

# Display dataset
print(data)

# Build Linear Regression model
model <- lm(Marks ~ Hours, data = data)

# Display model summary
summary(model)

# Display regression coefficients
coef(model)

# Predict marks for 6 study hours
new_data <- data.frame(Hours = 6)
prediction <- predict(model, new_data)

cat("Predicted Marks:", prediction, "\n")

# Plot regression line
plot(data$Hours, data$Marks,
     main = "Simple Linear Regression",
     xlab = "Study Hours",
     ylab = "Marks",
     pch = 19)

abline(model, col = "red", lwd = 2)

# Display R-squared
cat("R-squared:", summary(model)$r.squared, "\n")