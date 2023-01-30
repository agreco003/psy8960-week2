#Import and Labeling
rt_df <- read.csv("week2.csv", header = TRUE)
rt_df$factor_condition <- factor(rt_df$condition, labels = c("Control", "Experimental"))
rt_df$factor_gender <- factor(rt_df$gender, labels = c("Female", "Male", "Nonbinary"))
  
