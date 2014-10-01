#======================================================================================
#Name: Kolton D. Green
#Date: 9/30/2014
#Course: IS 360 02
#Project 2
#Summary: Provide code for project 2 written in R Script and upload to Github.
#===================================================================================
#1. 1) How many responses from each city?
#   2) How many responses from each age group?
#   3) How many answered yes? How many answered no?
#2.city <- c("Edinburgh", "Edinburgh", "Glasgow", "Glasgow","Edinburgh", "Edinburgh", 
#      "Glasgow", "Glasgow")
#  answer <- c("Yes", "Yes", "Yes", "Yes", "No", "No", "No", "No")
#  age <- c("16-24", "25+")
#  tally <- c(80100, 143000, 99400, 150400, 35900, 214800, 43000, 207000)
#  df <- data.frame(city, answer, age, tally)
#3.df %>% spread(answer, tally)
#4. 1)ddply(df, c("city"), summarise, sum=sum(tally))
#       city    sum
#1 Edinburgh 473800
#2   Glasgow 499800
#   2)ddply(df, c("age"), summarise, sum=sum(tally))
#    age    sum
#1 16-24 258400
#2   25+ 715200
#   3)ddply(df, c("answer"), summarise, sum=sum(tally))
#  answer    sum
#1     No 500700
#2    Yes 472900
#5. I would change how the survey was conducted. Instead of if they prefer one over
#   another I would ask which one they prefer and have three columns, one for each then
#   a column for both. I think better results would come about in regards to preference.
#   Since I started my data frame as long I probably would change it to wide 
#   (which I used tidyr to do). 



