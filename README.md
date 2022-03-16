# predicting\_loan_defaults

 
## Background

This is the final solo project at CodeClan which brings together all the skills and knowledge taught over the 14 week teaching period with the aim of finding actionable insights and presenting them back to a non-technical audience.

As titled, I chose my topic regarding loan defaults. Below is the task brief.

>"You’ve been hired by LendingClub, an online loan provider to help with some problems their business has been facing.<br>They are concerned about the default rate on their loans. They want to understand who is likely to default and who they should lend to in the future."

I have been provided with data sets as mentioned further below. 

My action was to explore the business question and from that derive how to translate that into a data question. There was no requirement for data extraction as have been provided with the data sets. Cleaning and joining was fairly simple. 

I then began the EDA phase, using rudimentary plots to understand any relationships behind defaulted loans. I have the intent on creating a model for predictions, which will then allow me to answer both questions - who is likely to default on their loan and who should they lend to in the future.

From this I have my the insights that are naturally actionable and provide value to my _employer_, LendingClub.

Further reports are found in the documentation folder.


## Languages/Technology 

This project will use R with R Studios, along with Git/Git Hub for version control.

## License

## Contents

**predicting\_loan_defaults.Rproj**  - RStudio project that houses work environment for the project.

**documentation** - files regarding planning, PowerPoint presentation and insights are found here.

**data** - raw and cleaned data is stored here. The five data sets are:

* grade_info.csv - contains additional information on LendingClubs grading system used grade their customers

* LCDataDictionary.csv - supplementary information explaining variables in the data set 

* lending\_club_loans.csv - main data set containing all customer information, 42,538 observations

* state\_names_info.csv - expands on state abbreviations that are found in the main data set

* loans\_cleaned.csv - cleaned version of lending\_club_loans.csv

**scripts** - these are any cleaning scripts used on the data for awareness of the user. Also houses my analysis script that contains all of the EDA and plots.

## Features/packages

`library(tidyverse)`
`library(janitor)`
`library(lubridate)`
`library(GGally)`
`library(broom)`
`library(pROC)`
`library(modelr)`
`library(caret)`
`library(gghighlight)`
`