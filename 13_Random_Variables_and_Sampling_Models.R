# The variables 'green', 'black', and 'red' contain the number of pockets for each color
green <- 2
black <- 18
red <- 18

# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- green / (green+black+red)

p_green # 0.05263158

##############################

# make sure your answer matches the expected result after random sampling.
set.seed(1)

# Assign a variable `p_not_green` as the probability of the ball not landing in a green pocket
p_not_green <- 1 - p_green

# Create a model to predict the random variable `X`, your winnings from betting on green. 
# Sample one time.
X <- sample (c(1, -1), 1, prob = c(p_green, p_not_green))

X # -1

##############################

# Calculate the expected outcome 
# you win $17 if the ball lands on green and 
# you lose $1 if the ball doesn't land on green

17*p_green + -1*p_not_green # -0.05263158

##############################

# Compute the standard error of the random variable
abs(17-(-1)) * sqrt (p_green*p_not_green) # 4.019344

##############################

# make sure your answer matches the expected result after random sampling
set.seed(1)

# number of bets
n <- 1000

# Create a vector called 'X' that contains the outcomes of 1000 samples
X <- sample(c(17,-1), size = n, replace = TRUE, prob = c(p_green, p_not_green))

# Assign the sum of all 1000 outcomes to the variable 'S'
S <- sum(X)

S # -10

##############################

# expected outcome of 1,000 spins 
# you win $17 when the ball lands on green and 
# you lose $1 when the ball doesn't land on green

n * (17*p_green + -1*p_not_green) # -52.63158

##############################

# standard error of the sum of 1,000 outcomes
sqrt(n) * abs(17-(-1)) * sqrt (p_green * p_not_green) # 127.1028

##############################