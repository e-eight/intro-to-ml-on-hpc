install.packages("palmerpenguins")
library(palmerpenguins)

summary(penguins)
df <- data.frame(penguins$bill_length_mm, penguins$bill_depth_mm)
plot(df)

df <- na.omit(df)
cl <- kmeans(df, 3, nstart=10)
plot(df, col=cl$cluster)
points(cl$centers, col=1:3, pch=19, lwd=10)
