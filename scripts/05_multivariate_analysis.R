# Day 4 Task 1

# Load necessary libraries
library(tidyverse)

# Enhance scatter plot by using ggplot to color points by SEX_A and facet plot by EDUCP_A
ggplot(nhis_final,
       aes(x = HEIGHTTC_A,
           y = WEIGHTLBTC_A,
           color = factor(SEX_A,
                          levels = c(1,2),
                          label = c("Male", "Female")))) +
  geom_point(alpha = 0.5) +
  labs(title = "Height vs Weight by Sex and Education Level",
       x = "Height",
       y = "Weight",
       color = "Sex") +
  facet_wrap(~EDUCP_A)

# Load psych library
library(psych)

# Create correlation scatter plot using pairs.panels() to visualize AGEP_A, WEIGHTLBTC_A, and HEIGHTTC_A
pairs.panels(nhis_final[, c("AGEP_A", "WEIGHTLBTC_A", "HEIGHTTC_A")])



