# K-Means Clustering

# Load dataset
data <- read.csv("Mall_Customers.csv",
                 check.names=FALSE)

# Select features
x <- data[,c("Annual Income (k$)",
             "Spending Score (1-100)")]

# Standardize data
scaled <- scale(x)

# Apply K-Means
set.seed(123)
model <- kmeans(scaled, centers=5, nstart=25)

# Display cluster sizes
print(model$size)

# Display cluster centers
print(model$centers)

# Visualize clusters
plot(scaled, col=model$cluster, pch=19,
     main="K-Means Customer Segmentation",
     xlab="Annual Income (Standardized)",
     ylab="Spending Score (Standardized)")

# Add centroids
points(model$centers, pch=8, cex=2, col="black")

# Display clustering performance
cat("Within-cluster SS:", model$tot.withinss, "\n")
cat("Between/Total SS:",
    model$betweenss/model$totss, "\n")