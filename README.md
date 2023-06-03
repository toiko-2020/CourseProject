# CourseProject

  ## loadfile2
  
    loadfile2 is a function to load needed files.
    It has an argument which is the folderpath to be searched.
    Search every files which has "txt" as extention in the folder and preserve these names in list.
    And pick needed files up by index (therefore it doesn't work if index was changed).
    Then, load these in R's workspace and create one dataset that has appropreate column names.
    
  ## mean_sd
    
    mean_sd is a function to subset columns which show mean or sd of values.
    It's argument is dataframe created by loadfile2.
    Search column names that include "mean" and don't include "Freq", or include "sd".
    And subset these as new dataframe.
    
  ## group_average
  
    group_average is a function to create dataset that has the average of each variable for each activity and subject.
    It's argument is the dataframe created by mean_sd.
    
