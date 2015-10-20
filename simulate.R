monte <- data.frame(stringsAsFactors = F)
names(monte) <- seq(4,40,1)

names(monte) <-
#time to simulate all our distributions

for(i in 1:20000){
  storage <- vector(mode="numeric")
  print(paste("Simulation", i, "of 20000"))
  for(q in 4:40){
   storage <- c(storage, step(q))
  }
  monte <- rbind(monte,storage)
}