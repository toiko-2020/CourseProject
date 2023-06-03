group_average <- function(mydf_subset) {
  mydf_average <- mydf_subset %>% 
    group_by(activity_name, sample_id) %>% 
    summarize(across(everything(), mean))
  return(mydf_average)
}
mydf_average <- group_average(mydf_subset)
mydf_average