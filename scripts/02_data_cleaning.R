# Day 2 Task 1
# Load necessary libraries
library(tidyverse)

# Import data
nhis_data <- read_csv("data/NHIS _Data_2021.csv")

# Select variables from section 3 
nhis_select <- nhis_data %>%
  select(
    AGEP_A,
    WEIGHTLBTC_A,
    HEIGHTTC_A,
    SEX_A,
    HISPALLP_A,
    EDUCP_A,
    PHSTAT_A,
    LSATIS4R_A,
  ) 

# Identify all missing value codes from codebook
nhis_clean <- nhis_select %>%
mutate(
  AGEP_A = ifelse(AGEP_A %in% 97:99, NA, AGEP_A),
  WEIGHTLBTC_A = ifelse(WEIGHTLBTC_A %in% 996:999, NA, WEIGHTLBTC_A),
  HEIGHTTC_A = ifelse(HEIGHTTC_A %in% 96:99, NA, HEIGHTTC_A),
  SEX_A = ifelse(SEX_A %in% c(7,9), NA, SEX_A),
  HISPALLP_A = ifelse(HISPALLP_A %in% c(97,98,99), NA, HISPALLP_A),
  EDUCP_A = ifelse(EDUCP_A %in% c(97,98,99), NA, EDUCP_A),
  PHSTAT_A = ifelse(PHSTAT_A %in% c(7,8,9), NA, PHSTAT_A),
  LSATIS4R_A = ifelse(LSATIS4R_A %in% c(7,8,9), NA, LSATIS4R_A)
) 

# Remove all rows with missing values
nhis_final <- nhis_clean %>%
  drop_na()

# Print new number of rows
nrow(nhis_final)

# Day 2 Task 2
# Recoding EDUCP_A variable based on column in codebook
nhis_final <- nhis_final %>%
  mutate(
    EDUCP_A = case_when(
      EDUCP_A %in% 0:3 ~ "Less than high school",
      EDUCP_A == 4 ~ "High school graduate",
      EDUCP_A %in% 5:7 ~ "Some college education",
      EDUCP_A %in% 8:10 ~ "College graduate or better"
    ),
    EDUCP_A = factor(EDUCP_A,
                     levels = c(
                       "Less than high school",
                       "High school graduate",
                       "Some college education",
                       "College graduate or better"
                     ))
  )
# Save cleaned dataset in data folder
write_csv(nhis_final, "data/nhis_clean.csv")




