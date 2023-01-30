#Import and Labeling
rt_df <- read.csv(file ="data/week2.csv", header = TRUE)
rt_df$condition_vector <- factor(rt_df$condition, levels = c("A", "B"), labels = c("Control", "Experimental"))
rt_df$gender_vector <- factor(rt_df$gender, levels = c("F", "M", "N"), labels = c("Female", "Male", "Nonbinary"))

#Analysis
mean(rt_df$rt)
rt_f_df <- subset(rt_df, subset = gender_vector == "Female") # Alternate approach -> rt_f_df <- rt_df[rt_df$gender_vector == "Female",]
hist(rt_f_df$rt)
datasets <- list(rt_df, rt_f_df)
datasets[[1]]$rt