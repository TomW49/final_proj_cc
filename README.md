# predicting\_loan_defaults

 
## Background

This is the final solo project at CodeClan which brings together all the skills and knowledge taught over the 14 week teaching period with the aim of finding actionable insights and presenting them back to a non-technical audience.

As titled, I chose my topic regarding loan defaults. Below is the task brief.

>"You’ve been hired by LendingClub, an online loan provider to help with some problems their business has been facing.<br>They are concerned about the default rate on their loans. They want to understand who is likely to default and who they should lend to in the future."

I have been provided with data sets as metioned further below. 

My action was to explore the buisness quesiton and from that derive how to translate that into a data question. There was no requirement for data extraction as have been provided with the data sets. Cleaning and joining was fairly simple. 

I then began the EDA phase, using rudimentry plots to understand any relationships behind defaulted loans. I have the intent on creating a model for predictions, which will then allow me to answer both questions - who is likely to default on their loan and who should they lend to in the future.

From this I have my the insights that are naturally actionable and provide value to my _employer_, LendingClub.

Further reports are found in the documentation folder.


## Languages/Technology 

This project will use R with R Studios, along with Git/Git Hub for version control.

## License

## Contents

**predicting\_loan_defaults.Rproj**  - RStudio project that houses work environment for the project.

**documentation** - files regarding planning, powerpoint presentation and insights are found here.

**data** - raw and cleaned data is stored here. The four data sets are:

* grade_info.csv - contains additional information on LendingClubs grading system used grade their customers

* LCDataDictionary.csv - supplimentary information explaining variables in the data set 

* lending\_club_loans.csv - main data set containing all customer information, 42,538 observations

* state\_names_info.csv - expands on state abbreviations that are found in the main data set

**scripts** - these are any cleaning scripts used on the data for awareness of the user. Also houses my analysis script that contains all of the EDA and plots.

## Features/packages

* Tidyverse 1.3.1
    * ggplot2 3.3.5
    * purrr   0.3.4
    * tibble  3.1.6   
    * dplyr   1.0.7
    * tidyr   1.1.4     
    * stringr 1.4.0
    * readr   2.1.0     
    * forcats 0.5.1
