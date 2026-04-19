# Day 3 Task 2 

# Load necessary libraries
library(tidyverse)

# Create side-by-side boxplots to visualize distirbution of AGEP_A across levels of SEX_A
boxplot(AGEP_A ~ factor(SEX_A,
                        levels = c(1,2),
                        labels = c("Male", "Female")),
        data = nhis_final,
        main = "Age by Sex",
        xlab = "Sex",
        ylab = "Age",
        col = "lightblue")

# Create side-by-side boxplots using ggplot2 to visualize distirbution of AGEP_A across levels of SEX_A
ggplot(nhis_final,
       aes(x = factor(SEX_A,
                      levels = c(1,2),
                      labels = c("Male", "Female")),
                      y = AGEP_A))+
         geom_boxplot(fill = 'lightblue') +
         labs(title = "Age by Sex",
              x = "Sex",
              y = "Age")

# Create side-by-side boxplots to visualize distirbution of AGEP_A across levels of EDUCP_A
boxplot(AGEP_A ~ EDUCP_A,
        data = nhis_final,
        main = "Age by Education Level",
        xlab = "Education Level",
        ylab = "Age",
        col = "lightblue")

# Create side-by-side boxplots using ggplot2 to visualize distirbution of AGEP_A across levels of EDUCP_A
ggplot(nhis_final,aes(x = EDUCP_A,y = AGEP_A)) +
  geom_boxplot(fill = 'lightblue') +
  labs(title = "Age by Education Level",
       x = "Education Level",
       y = "Age")

# Create clustered bar chart using ggplot2 to show relationship between PHSTAT_A and LSATIS4R_A
ggplot(nhis_final,
       aes(x = factor(PHSTAT_A,
                      levels = c(1,2,3,4,5),
                      labels = c("Excellent",
                                 "Very good",
                                 "Good",
                                 "Fair",
                                 "Poor")),
           fill = factor(LSATIS4R_A,
                         levels = c(1,2,3,4),
                         labels = c("Very satisfied",
                                    "Satisfied",
                                    "Dissatisfied",
                                    "Very Dissatisfied")))) +
  geom_bar(position = "dodge") +
  labs(title = "General Health vs Life Satisfaction",
       x = "General Health",
       y = "Count",
       fill = "Life Satisfaction")

# Create scatter plot using plot() of HEIGHTTC_A vs WEIGHTLBTC_A
plot(nhis_final$HEIGHTTC_A,
     nhis_final$WEIGHTLBTC_A,
     main = "Scatter Plot of Height vs Weight",
     xlab = "Height",
     ylab = "Weight",
     col = "lightblue")

# Create scatter plot using ggplot of HEIGHTTC_A vs WEIGHTLBTC_A
ggplot(nhis_final, aes(x = HEIGHTTC_A, y = WEIGHTLBTC_A)) +
  geom_point(color = "lightblue") +
  labs(title = "Scatter Plot of Height vs Weight",
       x = "Height",
       y = "Weight")

# Report correlation coefficient
cor(nhis_final$WEIGHTLBTC_A, nhis_final$HEIGHTTC_A)
# The correlation coefficient between height and weight is 0.50






