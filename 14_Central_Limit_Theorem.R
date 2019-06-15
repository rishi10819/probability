# The variables 'green', 'black', and 'red' contain the number of pockets for each color
green <- 2
black <- 18
red <- 18

# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- green / (green+black+red)

# Assign a variable `p_not_green` as the probability of the ball not landing in a green pocket
p_not_green <- 1 - p_green

# number of bets
n <- 100

# expected outcome of 100 spins 
# if you win $17 when the ball lands on green and you lose $1 when the ball doesn't land on green
avg <- n * (17*p_green + -1*p_not_green)

# standard error of the sum of 100 outcomes
se <- sqrt(n) * (17 - -1)*sqrt(p_green*p_not_green)

# probability that you win money betting on green 100 times.

pnorm (0, avg, se)     # loosing money probability # 0.5520909

1 - pnorm (0, avg, se) # winning money probability # 0.4479091

##############################

# number of times we want the Monte Carlo simulation to run
B <- 10000

# make sure your answer matches the expected result after random sampling.
set.seed(1)

# Create an object called `S` that replicates the sample code for `B` iterations and 
# sums the outcomes.
S <- replicate (B, {
  X <- sample  (c(17, -1), n, replace = TRUE, prob = c(p_green, p_not_green))
  sum (X)
})

# Compute the average value for 'S'
mean (S) # -5.9086

# Calculate the standard deviation of 'S'
sd (S) # 40.30608

##############################

# make sure your answer matches the expected result after random sampling.
set.seed(1)

# number of bets
n2 <- 10000

# Create a vector called `X` that contains the outcomes of `n` bets
X <- sample(c(17,-1), size = n2, replace = TRUE, prob = c(p_green, p_not_green))

# Define a variable `Y` that contains the mean outcome per bet.
Y <- mean(X)
Y # 0.008

##############################

# Calculate the expected outcome of `Y`, the mean outcome per bet in 10,000 bets
17*p_green + -1*p_not_green # -0.05263158

##############################

# Compute the standard error of 'Y', the mean outcome per bet from 10,000 bets.
abs((17 - -1))*sqrt(p_green*p_not_green) / sqrt(n) # 0.4019344

##############################

# define average
avg <- 17*p_green + -1*p_not_green

# define standard error
se <- 1/sqrt(n) * (17 - -1)*sqrt(p_green*p_not_green)

# probability of winning more than $0
1 - pnorm (0, avg, se) # 0.4479091

##############################

# number of independent bets on green
n3 <- 10000

# make sure your answer matches the expected result after random number generation
set.seed(1)

# Generate a vector `S` that contains the 
# average outcomes of 10,000 bets modeled 10,000 times
S <- replicate(B,{  
  X <- sample(c(17,-1), size = n3, replace = TRUE, prob = c(p_green, p_not_green))
  mean(X)
})

# Compute the average of `S`.
mean(S)  # -0.059086

# Compute the standard deviation of `S`. 
sd(S)  # 0.4030608

##############################
