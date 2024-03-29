# vector of probabilities that team A will win.
p <- seq(0.5, 0.95, 0.025)

# Given a value 'p', the probability of winning the series for the underdog team B can be computed 
# based on a Monte Carlo simulation

prob_win <- function(p){
  B <- 10000
  result <- replicate(B, {
    b_win <- sample(c(1,0), 7, replace = TRUE, prob = c(1-p, p))
    sum(b_win) >= 4
  })
  mean(result)
}

# Apply the 'prob_win' function across the vector of probabilities that team A will win 
# to determine the probability that team B will win.

Pr <- sapply (p, prob_win)

# Plot the probability 'p' on the x-axis and 'Pr' on the y-axis.
plot (p, Pr)
