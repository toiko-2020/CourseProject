loadfile2 <- function(myfolder) {
  filelist <- list.files(path = myfolder, pattern = "\\.txt$",
                         recursive = TRUE, full.names = TRUE)
  filelist <- filelist[c(1, 3, 14, 15, 16, 26, 27, 28)]
  filelist
  for (file_path in filelist) {
    file_name <- basename(file_path)
    df_name <- gsub("\\.\\w+$", "", file_name)
    df <- read.table(file_path, header = FALSE)
    assign(df_name, df)
  }
  X_merged <- rbind(X_test, X_train)
  y_merged <- rbind(y_test, y_train)
  subject_merged <- rbind(subject_test, subject_train)
  colnames(X_merged) <- features[, 2]
  colnames(y_merged) <- "activity_label"
  colnames(activity_labels) <- c("activity_label", "activity_name")
  colnames(subject_merged) <- "sample_id"
  y_merged2 <- merge(y_merged, activity_labels, by = "activity_label")
  mydf <- cbind(subject_merged, y_merged2, X_merged)
  return(mydf)
}
mydf <- loadfile2("UCI HAR Dataset")
rm(list = ls())