library(RWeka)
library(caret)
set.seed(1958)  # set a seed to get replicable results
train <- createFolds(iris$Species, k=10)
C45Fit <- train(Species ~., method="J48", data=iris,
                tuneLength = 5,
                trControl = trainControl(
                  method="cv", indexOut=train))
print(C45Fit)

