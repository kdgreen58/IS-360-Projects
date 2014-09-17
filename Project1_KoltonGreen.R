#======================================================================================
#Name: Kolton D. Green
#Date: 9/16/2014
#Course: IS 360 02
#Project 1
#Summary: Provide coding for basic statistics. Devlopment was aided by code posted by
#     professor. Uploaded to Github.       
#===================================================================================
minimum = function(vector){
  startmin = Inf
  for (i in 1:length(vector)){
    if (!is.na(vector[i]) & vector[i] < startmin){
      startmin = vector[i]
    }
  }
  return(startmin)
}
maximum = function(vector){
  startmax = -Inf
  for (i in 1:length(vector)){
    if (!is.na(vector[i]) & vector[i] > startmax){
      startmax = vector[i]
    }
  }
  return(startmax)
}
mean = function(vector){
  count = 0
  num = 0
  for (i in 1:length(vector)){
    if (!is.na(vector[i])){
      count = count + vector[i]
      num = num +1
    }
    average = count / num
  }
  return(average)
}
median = function(vector){
  vector = sort(vector)
  if (length(vector) == 1){
    middle = vector[1]
  }
  else if (length(vector) %% 2 == 1){
    middle = vector[ceiling(length(vector)/2)]
  }
  else {
    even = ceiling(length(vector)/2)
    middle = (vector[even] + vector[even+1])/2
  }   
  return(middle)
}
quartile = function(vector,quarter){
  vector = sort(vector)
  middle = median(vector)
  
  if(quarter ==1){
    begin = vector[vector < middle]
    quar = median(begin)
  }
  else if (quarter == 2){
    quar = middle
  }
  else if (quarter == 3){
    begin = vector[vector > middle]
    quar = median(begin)
  }
  return(quar)
}
missing = function(vector){
  startmis = 0
  for (i in 1:length(vector)){
    if (is.na(vector[i])){
      startmis = startmis + 1
    }
  }
  return(startmis)
}
sd = function(vector){
  diff = 0
  average = mean(vector)
  diffn = length(vector) - missing(vector)
  for (i in 1:length(vector)){
    if (!is.na(vector[i])){
      diff = diff + (vector[i] - average)^2
    }
    var = diff / (diffn - 1)
    deviation = sqrt(var)
    return(deviation)
  }
  return(average)
}

statistics = function(vector){
  list =  NULL
  list['Minimum'] = minimum(vector)
  list['Maximum'] = maximum(vector)
  list['Mean'] = mean(vector)
  list['Median'] = median(vector)  
  list['1st Quartile'] = quartile(vector,1)
  list['3rd Quartile'] = quartile(vector,3)
  list['Missing Value'] = missing(vector)
  list['Standard Deviation'] = sd(vector)

  return(list)
}