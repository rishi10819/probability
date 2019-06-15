n <- 10000  # number of loans

loss_per_foreclosure <- -200000  # loss per foreclosure 

p_default <- 0.03  # probability of default

# make sure your answer matches the expected result after random sampling
set.seed(1)

# Generate a vector called `defaults` that contains the default outcomes of `n` loans
defaults <- sample(c(0,1), n, prob = c(1-p_default, p_default), replace = TRUE)

# total amount of money lost across all foreclosures.
S <- sum (defaults * loss_per_foreclosure)
S

##################################

# make sure your answer matches the expected result after random sampling
set.seed(1)

# number of times we want the simulation to run
B <- 10000

# Generate a list of summed losses 'S'. 

S <- replicate(B, {
  defaults <- sample( c(0,1), n, prob=c(1-p_default, p_default), replace = TRUE) 
  sum(defaults * loss_per_foreclosure)
})

# Plot a histogram of 'S'. Ignore any warnings for now.
hist(S)

##################################

# expected loss due to default out of 10,000 loans
S <- sum (n * loss_per_foreclosure * p_default)
S  # -6e+07

##################################

# standard error of the sum of 10,000 loans
std_error <- sqrt (n) * abs (loss_per_foreclosure) * sqrt (p_default * (1-p_default))
std_error  # 3411744

##################################

single_loan_amount <- 180000

# total amount necessary to have an expected outcome of $0 
x <- -(loss_per_foreclosure*p_default) / (1 - p_default)
x # 6185.567

# Convert `x` to an interest rate
(x / single_loan_amount)*100 # 3.436426

##################################

# Generate a variable z, which is equivalent to 5% (1 in 20)
z <- qnorm (0.05)

# total amount necessary to have an expected outcome of $0 
x <- -loss_per_foreclosure * (n*p_default - z*sqrt(n*p_default*(1-p_default))) / 
                      (n*(1-p_default) + z * sqrt (n*p_default*(1-p_default)))
x # 6783.728

# Convert `x` to an interest rate.
(x/single_loan_amount)*100 # 3.768738

##################################