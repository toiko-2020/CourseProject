install.packages("devtools")
install.packages("tidyverse")
library(devtools)
library(tidyverse)
function_list <- list.files("./Script", full.names = TRUE)
lapply(function_list, source)
mydf <- loadfile2(getwd()) %>% 
  mean_sd() %>% 
  group_average()
write.table(mydf, file = "./result_analysis.txt", sep = "\t")