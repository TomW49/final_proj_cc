# Libraries
library(tidyverse)
library(lubridate)

# -----------------------------------------------------------------------------#

#Reading in data
loans <- read_csv("data/lending_club_loans.csv")
grades <- read_csv("data/grade_info.csv")
states_info <- read_csv("data/state_names_info.csv")

# -----------------------------------------------------------------------------#

# joining df's
loans <- loans %>% 
  rename(state_abb = addr_state) %>% 
  left_join(states_info, by = "state_abb") %>% 
  left_join(grades, by = "sub_grade") %>% 
  clean_names() 

rm(states_info, grades)

# -----------------------------------------------------------------------------#

# Cleaning #

# creating default categories
default_catagory <- c("Charged Off",
                      "Does not meet the credit policy. Status:Charged Off",
                      "Late (31-120 days)",
                      "Late (16-30 days)",
                      "Default")

# removing / coalesce na's / tidy up
# remove na's from tax_liens - 148 na's - this also removes 29 consistent NA's
# remove na's from revol_util - 93 na's
# new col, classing loan defaulted if late, charged off or defaulted
# change na's to -1 mths_since_last_delinq + mths_since_last_record as cust have never had both
# change na's to -1 as customers appear to never have had a number of defaults, UNDONE AS NOT MAKING MODEL
# changing date var from chr to date
# discovered North Dakota was the NA' value, so changed 
# changed chr cols to factor for model
loans_cleaned <- loans %>%
  filter(if_all(c(id, tax_liens, revol_util), ~ !is.na(.))) %>%
  mutate(defaulted = if_else(  
    loan_status %in% default_catagory, "Yes", "No"), 
    .after = loan_status) %>% 
  #mutate(mths_since_last_delinq = coalesce(mths_since_last_delinq, -1),
  #       mths_since_last_record = coalesce(mths_since_last_record, -1),
  #       pub_rec_bankruptcies = coalesce(pub_rec_bankruptcies, -1)) %>% 
  mutate(issue_d = my(issue_d),       
         earliest_cr_line = my(earliest_cr_line)) %>% 
  mutate(state_name = coalesce(state_name, "North Dakota")) %>% 
  mutate(int_rate = as.numeric(str_remove_all(int_rate, "[%]")),
         term = as.numeric(str_remove_all(term, "[a-z]")),
         zip_code = as.numeric(str_remove_all(zip_code, "[a-z]"))) %>% 
  mutate_if(is_character, as_factor) %>% 
  select_if(~ !all(is.na(.)))




# remove chargeoff_within_12_mths as 42390 - 0, 149 - NA
# na's remain in emp_title, desc, title, next_pymnt_d, last_pymnt_d, 
# collections_12_mths_ex_med, mths_since_last_major_derog, 
# chargeoff_within_12_mths - more however they are full of NA's (will remove later)

write_csv(loans_cleaned, "data/loans_cleaned.csv")

# -----------------------------------------------------------------------------#

