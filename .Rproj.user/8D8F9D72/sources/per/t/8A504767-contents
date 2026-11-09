# Multiple Linear Regression

# Create dataset
data <- data.frame(
  Hours = c(1,2,3,4,5,6,7,8),
  Attendance = c(60,65,70,72,78,80,85,90),
  Previous = c(40,45,50,52,60,62,70,75),
  Marks = c(42,46,53,56,64,67,75,82)
)

# Display dataset
print(data)

# Build Multiple Linear Regression model
model <- lm(Marks ~ Hours + Attendance + Previous,
            data = data)

# Display model summary
summary(model)

# Display coefficients
print(coef(model))

# Predict marks for a new student
new_data <- data.frame(
  Hours = 6,
  Attendance = 85,
  Previous = 70
)

prediction <- predict(model, new_data)

cat("Predicted Marks:", prediction, "\n")

# Evaluate model
result <- summary(model)

cat("R-squared:", result$r.squared, "\n")
cat("Adjusted R-squared:", result$adj.r.squared, "\n")

# Calculate RMSE on training data
predicted <- predict(model, data)
rmse <- sqrt(mean((data$Marks - predicted)^2))

cat("RMSE:", rmse, "\n")

# Visualize actual vs predicted marks
plot(data$Marks, predicted,
     main = "Actual vs Predicted Marks",
     xlab = "Actual Marks",
     ylab = "Predicted Marks",
     pch = 19)

abline(0, 1, col = "red", lwd = 2)
