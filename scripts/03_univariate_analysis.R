# Day 3 Task 1

# Load necessary libraries
library(tidyverse)

# Load cleaned dataset
nhis_final <- read_csv("data/nhis_clean.csv")

# Calculate summary statistics for quantitative variable AGEP_A
summary(nhis_final$AGEP_A)
sd(nhis_final$AGEP_A)

# Calculate summary statistics for quantitative variable WEIGHTLBTC_A
summary(nhis_final$WEIGHTLBTC_A)
sd(nhis_final$WEIGHTLBTC_A)

# Calculate summary statistics for quantitative variable HEIGHTTC_A
summary(nhis_final$HEIGHTTC_A)
sd(nhis_final$HEIGHTTC_A)

# Create base R histogram for AGEP_A
hist(nhis_final$AGEP_A,
     main ="Histogram of Age",
     xlab = "AGE",
     col = "lightblue")

# Create histogram using ggplot2 for AGEP_A
ggplot(nhis_final, aes(x = AGEP_A)) +
  geom_histogram(fill = "lightblue", color = "black") +
  labs(title = "Histogram of Age",
       x = "Age",
       y = "Frequency")

# Create base R boxplot for AGEP_A
boxplot(nhis_final$AGEP_A,
        main = "Boxplot of Age",
        ylab = "Age",
        col = "orange")

# Create boxplot using ggplot2 for AGEP_A
ggplot(nhis_final, aes(y = AGEP_A)) +
  geom_boxplot(fill = "lightgreen", color = "black") +
  labs(title = "Boxplot of Age",
       y = "age")

# Create base R histogram for WEIGHTLBTC_A
hist(nhis_final$WEIGHTLBTC_A,
     main ="Histogram of Weight",
     xlab = "Weight",
     col = "lightblue")

# Create histogram using ggplot2 for WEIGHTLBTC_A
ggplot(nhis_final, aes(x = WEIGHTLBTC_A)) +
  geom_histogram(fill = "lightblue", color = "black") +
  labs(title = "Histogram of Weight",
       x = "Weight",
       y = "Frequency")

# Create base R boxplot for WEIGHTLBTC_A
boxplot(nhis_final$WEIGHTLBTC_A,
        main = "Boxplot of Weight",
        ylab = "Weight",
        col = "orange")

# Create boxplot using ggplot2 for WEIGHTLBTC_A
ggplot(nhis_final, aes(y = WEIGHTLBTC_A)) +
  geom_boxplot(fill = "lightgreen", color = "black") +
  labs(title = "Boxplot of Weight",
       y = "Weight")

# Create base R histogram for HEIGHTTC_A
hist(nhis_final$HEIGHTTC_A,
     main ="Histogram of Height",
     xlab = "Height",
     col = "lightblue")

# Create histogram using ggplot2 for HEIGHTTC_A
ggplot(nhis_final, aes(x = HEIGHTTC_A)) +
  geom_histogram(binwidth = 1,fill = "lightblue", color = "black") +
  labs(title = "Histogram of Height",
       x = "Height",
       y = "Frequency")

# Create base R boxplot for HEIGHTTC_A
boxplot(nhis_final$HEIGHTTC_A,
        main = "Boxplot of Height",
        ylab = "Height",
        col = "orange")

# Create boxplot using ggplot2 for HEIGHTTC_A
ggplot(nhis_final, aes(y = HEIGHTTC_A)) +
  geom_boxplot(fill = "lightgreen", color = "black") +
  labs(title = "Boxplot of Height",
       y = "Height")

# Generate frequncy tables for qualitiative variable SEX_A
table(nhis_final$SEX_A)

# Generate frequncy tables for qualitiative variable HISPALLP_A
table(nhis_final$HISPALLP_A)

# Generate frequncy tables for qualitiative variable EDUCP_A
table(nhis_final$EDUCP_A)

# Generate frequncy tables for qualitiative variable PHSTAT_A
table(nhis_final$PHSTAT_A)

# Generate frequncy tables for qualitiative variable LSATIS4R_A
table(nhis_final$LSATIS4R_A)

# Create base R bar plot for SEX_A
barplot(table(factor(nhis_final$SEX_A,
              levels = c(1,2),
              labels = c("Male", "Female"))),
        main = "Barplot of Sex",
        xlab = "Sex",
        ylab = "Frequency",
        col = "lightblue")

# Create bar plot using ggplot2 for SEX_A
ggplot(nhis_final,
       aes(x = factor(SEX_A,
                      levels = c(1,2),
                      labels = c("Male", "Female")))) +
  geom_bar(fill = "lightblue", color = "black") +
  labs(title = "Barplot of Sex",
       x = "Sex",
       y = "Frequency")

# Create base R bar plot for HISPALLP_A
barplot(table(factor(nhis_final$HISPALLP_A,
                     levels = c(1,2,3,4,5,6,7),
                     labels = c("Hispanic", "NH White Only", "NH Black/African American only", "NH Asian only", "NH AIAN", "NH AIAN and any other group", "Other single and multiple races"))),
        main = "Barplot of Race/Ethnicity",
        xlab = "Race/Ethnicity",
        ylab = "Frequency",
        col = "lightblue")

# Create bar plot using ggplot2 for HISPALLP_A
ggplot(nhis_final,
       aes(x = factor(HISPALLP_A,
                      levels = c(1,2,3,4,5,6,7),
                      labels = c("Hispanic", "NH White Only", "NH Black/African American only", "NH Asian only", "NH AIAN", "NH AIAN and any other group", "Other single and multiple races")))) +
  geom_bar(fill = "lightblue", color = "black") +
  labs(title = "Barplot of Race/Ethnicity",
       x = "Race/Ethnicity",
       y = "Frequency")

# Create base R bar plot for EDUCP_A
barplot(table(factor(nhis_final$EDUCP_A,
                     labels = c("Less than high school",
                                "High school graduate",
                                "Some college education",
                                "College graduate or better"))),
        main = "Barplot of Education Level",
        xlab = "Education Level",
        ylab = "Frequency",
        col = "lightblue")

# Create bar plot using ggplot2 for EDUCP_A
ggplot(nhis_final, aes(x = EDUCP_A)) +
  geom_bar(fill = "lightblue", color = "black") +
  labs(title = "Barplot of Education Level",
       x = "Education Level",
       y = "Frequency")

# Create base R bar plot for PHSTAT_A
barplot(table(factor(nhis_final$PHSTAT_A,
                     levels = c(1,2,3,4,5),
                     labels = c("Excellent",
                                "Very good",
                                "Good",
                                "Fair",
                                "Poor"))),
        main = "Barplot of General Health Status",
        xlab = "General Health Status",
        ylab = "Frequency",
        col = "lightblue")

# Create bar plot using ggplot2 for PHSTAT_A
ggplot(nhis_final,
       aes(x = factor(PHSTAT_A,
                       levels = c(1,2,3,4,5),
                       labels = c("Excellent",
                                  "Very good",
                                  "Good",
                                  "Fair",
                                  "Poor"))))+
  geom_bar(fill = "lightblue", color = "black") +
  labs(title = "Barplot of General Health Status",
       x = "General Health Status",
       y = "Frequency")

# Create base R bar plot for LSATIS4R_A
barplot(table(factor(nhis_final$LSATIS4R_A,
                     levels = c(1,2,3,4),
                     labels = c("Very satisfied",
                                "Satisfied",
                                "Dissatisfied",
                                "Very Dissatisfied"))),
        main = "Barplot of Life Satisfaction",
        xlab = "Life Satisfaction",
        ylab = "Frequency",
        col = "lightblue")

# Create bar plot using ggplot2 for LSATIS4R_A
ggplot(nhis_final,
       aes(x = factor(LSATIS4R_A,
                      levels = c(1,2,3,4),
                      labels = c("Very satisfied",
                                 "Satisfied",
                                 "Dissatisfied",
                                 "Very Dissatisfied")))) +
  geom_bar(fill = "lightblue", color = "black") +
  labs(title = "Barplot of Life Satisfaction",
       x = "Life Satisfaction",
       y = "Frequency")



