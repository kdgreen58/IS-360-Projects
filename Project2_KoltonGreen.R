#======================================================================================
#Name: Kolton D. Green
#Date: 9/30/2014
#Course: IS 360 02
#Project 2
#Summary: Provide code for project 2 written in R Script and upload to Github.
#===================================================================================
##1. 1) How many responses from each city?
#   2) How many responses from each age group?
#   3) How many answered yes? How many answered no?
#
##2.Project2 <- read.csv("~/Documents/Project2.csv")
#  Project2 <- as.data.frame(Project2)
#       city   age    yes     no
#1 Edinburgh 16-24  80100  35900
#2 Edinburgh   25+ 143000 214800
#3   Glasgow 16-24  99400  43000
#4   Glasgow   25+ 150400 207000
#
##3.Project2 %>%
#   gather(answer, tally, yes:no) %>%
#   arrange(city, age, answer)
#       city   age answer  tally
#1 Edinburgh 16-24    yes  80100
#2 Edinburgh 16-24     no  35900
#3 Edinburgh   25+    yes 143000
#4 Edinburgh   25+     no 214800
#5   Glasgow 16-24    yes  99400
#6   Glasgow 16-24     no  43000
#7   Glasgow   25+    yes 150400
#8   Glasgow   25+     no 207000
#
##4. 1)ddply(Project2, c("city"), summarise, sum=sum(tally))
#       city    sum
#1 Edinburgh 473800
#2   Glasgow 499800
#   2)ddply(Project2, c("age"), summarise, sum=sum(tally))
#    age    sum
#1 16-24 258400
#2   25+ 715200
#   3)ddply(Project2, c("answer"), summarise, sum=sum(tally))
#  answer    sum
#1     No 500700
#2    Yes 472900
#
##5. I would change how the survey was conducted. Instead of if they prefer one over
#   another I would ask which one they prefer and have three columns, one for each then
#   a column for both. I think better results would come about in regards to preference.
#   Since I started my data frame as wide I probably would change it to long 
#   (which I used tidyr to do). 



