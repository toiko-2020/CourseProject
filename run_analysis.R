install.packages("devtools")
library(devtools)
function_list <- list.files("./Script", full.names = TRUE)
lapply(function_list, source)
library(tidyverse)
mydf <- loadfile2(getwd()) %>% 
  mean_sd() %>% 
  group_average()
write.table(mydf, file = "./result_analysis.txt", sep = "\t")