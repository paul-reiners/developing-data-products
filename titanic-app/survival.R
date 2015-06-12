getSurvivalTable <- function(data.file) {
  data = read.csv(data.file)
  data$SurvivedStr <- ifelse(data$Survived == 0, "perished", "survived")
  data$ChildOrAdult <- ifelse(data$Age < 18, "child", "adult")
  sex.age.table <- table(data$Sex, data$ChildOrAdult, data$SurvivedStr)
  survival.table <- 
    sex.age.table[,,2] / (sex.age.table[,, 1] + sex.age.table[,,2])
  
  return(survival.table)
}