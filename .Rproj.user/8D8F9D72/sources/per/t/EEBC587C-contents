# Logistic Regression - Student Admission Prediction

# Install packages if required
# install.packages("foreign")
# install.packages("MASS")

library(foreign)
library(MASS)

# Read dataset
data <- read.csv("binary.csv")

# Display dataset
print(head(data))
print(dim(data))

# Convert rank into categorical variable
data$rank <- as.factor(data$rank)

# Split data into training and testing sets
set.seed(123)

index <- sample(
  1:nrow(data),
  size = 0.80 * nrow(data)
)

train <- data[index, ]
test <- data[-index, ]

# Build Logistic Regression model
model <- glm(
  admit ~ gre + gpa + rank,
  data = train,
  family = binomial
)

# Display model summary
summary(model)

# Predict probabilities
prob <- predict(model, test, type = "response")

# Convert probabilities into class labels
pred <- ifelse(prob >= 0.5, 1, 0)

# Confusion matrix
actual <- test$admit
cm <- table(Predicted = pred, Actual = actual)

print(cm)

# Calculate evaluation metrics
TP <- cm["1", "1"]
TN <- cm["0", "0"]
FP <- cm["1", "0"]
FN <- cm["0", "1"]

accuracy <- (TP + TN) / sum(cm)
precision <- TP / (TP + FP)
recall <- TP / (TP + FN)

f1 <- 2 * precision * recall / (precision + recall)

cat("Accuracy:", accuracy, "\n")
cat("Precision:", precision, "\n")
cat("Recall:", recall, "\n")
cat("F1-score:", f1, "\n")

# Admission classification bar graph
barplot(table(factor(pred, levels=0:1)),
        names.arg=c("No","Yes"),
        col=c("orange","lightgreen"),
        main="Admission Prediction",
        xlab="Admission Status",
        ylab="Number of Students")