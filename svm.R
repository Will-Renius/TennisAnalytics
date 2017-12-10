library(MASS)
library(tidyverse)
library(lubridate)
data(cats)
model <- svm(Sex~., data = cats)
print(model)
summary(model)
plot(model, cats)

