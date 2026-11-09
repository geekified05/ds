# Naive Bayes Classification

library(e1071)
library(caret)

# Load dataset
data <- read.csv("PlayTennis.csv")

# Convert categorical variables
data[] <- lapply(data, as.factor)

# Split dataset (80:20)
set.seed(123)
i <- sample(1:nrow(data), 0.8*nrow(data))
train <- data[i,]
test <- data[-i,]

# Build Naive Bayes model
model <- naiveBayes(Play ~ ., data=train)

# Display prior probabilities
print(model$apriori)

# Predict classes
pred <- predict(model, test)

# Confusion matrix
cm <- confusionMatrix(pred, test$Play)
print(cm)

# Evaluate accuracy
cat("Accuracy:", cm$overall["Accuracy"], "\n")

# Plot classification distribution
barplot(table(pred),
        col=c("lightblue","orange"),
        main="Naive Bayes Classification",
        xlab="Predicted Class",
        ylab="Frequency")