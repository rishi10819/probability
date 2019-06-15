# simulate four independent random games where the Celtics either lose or win. 
simulated_games <- sample(c("lose","win"), 4, replace = TRUE, prob = c(0.6, 0.4))

# The variable 'B' specifies the number of times we want the simulation to run for Monte Carlo.
B <- 10000

# make sure your answer matches the expected result after random sampling.
set.seed(1)

# Run B times.
celtic_wins <- replicate(B, {
  simulated_games <- sample(c("lose","win"), 4, replace = TRUE, prob = c(0.6, 0.4))
  any(simulated_games=="win")
})

# Calculate the frequency out of B iterations that the Celtics won at least one game. 
mean(celtic_wins)
