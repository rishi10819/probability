# number of times we want the simulation to run. 
# Let's run the Monte Carlo simulation 10,000 times.
B <- 10000

# Make sure your answer matches the expected result after random sampling.
set.seed(1)

# Create an object called results that replicates for `B` iterations a simulated series and 
# determines whether that series contains at least four wins for the Cavs.

results <- replicate(B, {
  cavs_wins <- sample(c(0,1), 6, replace = TRUE)
  sum(cavs_wins)>=4 
})

# Calculate the frequency out of B iterations that 
# the Cavs won at least four games in the remainder of the series.
mean(results)