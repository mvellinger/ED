roll <- function(n){

  result <- 0
  repeat{
    roll <- sample(1:n, 1)
    result <- result + roll
    if(roll<n){
      break
    }
  }
  return(result)
}

rollstep <- function(q){
  output <- 0
  for(i in 1:length(q)) {
    die <- roll(q[i])
    output <- (output + die)
  }
  return(output)
}

step <- function(n=4){

  dice <- vector(mode="list", length=40)
  dice[[1]] <- 6
  dice[[2]] <- 8
  dice[[3]] <- 10
  dice[[4]] <- 12
  dice[[5]] <- c(6,6)
  dice[[6]] <- c(6,8)
  dice[[7]] <- c(8,8)
  dice[[8]] <- c(10,8)
  dice[[9]] <- c(10,10)
  dice[[10]] <- c(12,10)
  dice[[11]] <- c(12,12)
  dice[[12]] <- c(12,6,6)
  dice[[13]] <- c(12,8,6)
  dice[[14]] <- c(12,8,8)
  dice[[15]] <- c(12,10,8)
  dice[[16]] <- c(12,10,10)
  dice[[17]] <- c(12,12,10)
  dice[[18]] <- c(12,12,12)
  dice[[19]] <- c(12,12,6,6)
  dice[[20]] <- c(12,12,8,6)
  dice[[21]] <- c(12,12,8,8)
  dice[[22]] <- c(12,12,10,8)
  dice[[23]] <- c(12,12,10,10)
  dice[[24]] <- c(12,12,12,10)
  dice[[25]] <- c(12,12,12,12)
  dice[[26]] <- c(12,12,12,6,6)
  dice[[27]] <- c(12,12,12,8,6)
  dice[[28]] <- c(12,12,12,8,8)
  dice[[29]] <- c(12,12,12,10,8)
  dice[[30]] <- c(12,12,12,10,10)
  dice[[31]] <- c(12,12,12,12,10)
  dice[[32]] <- c(12,12,12,12,12)
  dice[[33]] <- c(12,12,12,12,6,6)
  dice[[34]] <- c(12,12,12,12,8,6)
  dice[[35]] <- c(12,12,12,12,8,8)
  dice[[36]] <- c(12,12,12,12,10,8)
  dice[[37]] <- c(12,12,12,12,10,10)

  q <- dice[[n-3]]
  result <- rollstep(q)
  return(result)
}
