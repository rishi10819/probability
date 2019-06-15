# number of times we want the simulation to run.
B <- 1000

# make sure your answer matches the expected result after random number generation.
set.seed(1)

# jighestIQ contains the highest IQ score from each random distribution of 10,000 people.
highestIQ <- replicate(B, {
  simulated_data <- rnorm(10000, 100, 15)
  max(simulated_data)
})

# Make a histogram of the highest IQ scores.
hist(highestIQ)
