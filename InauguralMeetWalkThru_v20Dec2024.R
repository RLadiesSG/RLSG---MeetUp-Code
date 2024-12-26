library(dplyr)

#=============================================
#Tasks: Inaugural Meet R-Ladies SG, 21Dec2024
#=============================================
####Task 1: Choosing the width columns in the data frame####
IRIS_WidthCols_DF <- iris %>%
  select(Sepal.Width, Petal.Width)

####Task 2: Filter for sepal width > 4####
IRIS_SepalWidthFilt_DF <- iris %>%
  dplyr::filter(Sepal.Width > 4)

####Task 3: Get width to length ratio in a new column####
IRIS_WLRatio_DF <- iris %>%
  mutate(WLRatio = Sepal.Width/Sepal.Length)

####Task 4: Sort data by sepal width and petal width####
IRIS_PetalSorted_DF <- iris %>%
  arrange(Petal.Length)

####Task 5: Get mean and median for the widths columns####
IRIS_MeanMedianWidth_DF <- iris %>%
  summarise(Mean_PetalWid   = mean(Petal.Width,   na.rm = TRUE), 
            Median_PetalWid = median(Petal.Width, na.rm = TRUE), 
         
            Mean_SepalWid   = mean(Sepal.Width,   na.rm = TRUE), 
            Median_SepalWid = median(Sepal.Width, na.rm = TRUE))

####Task 6: Plot distributions of sepal and petal width####
hist(iris$Sepal.Width)
hist(iris$Petal.Width)
