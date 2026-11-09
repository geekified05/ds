# KNN Regression

data <- data.frame(
  Hours=c(1,2,2,3,4,4,5,6,7,8),
  Attendance=c(50,55,60,62,65,70,75,78,85,90),
  Marks=c(35,40,43,48,52,58,65,68,80,88)
)

# Standardize independent variables
x <- scale(data[,1:2])

# New observation
new <- scale(matrix(c(6,85), nrow=1),
             center=attr(x,"scaled:center"),
             scale=attr(x,"scaled:scale"))

# Calculate Euclidean distances
d <- sqrt(rowSums((x-matrix(new,
                            nrow=nrow(x), ncol=2,
                            byrow=TRUE))^2))

# Find 3 nearest neighbours
idx <- order(d)[1:3]

# Predict marks using mean
pred <- mean(data$Marks[idx])

print(data[idx,])
cat("Predicted Marks:", pred, "\n")