female_avg <- 64
female_sd <- 3

###########################################################

# probability that a randomly selected female is SHORTER than 5 feet.
pnorm(5*12, female_avg, female_sd)  # 0.09121122

# probability that a randomly selected female is 6 feet or TALLER 
1 - pnorm(6*12, female_avg, female_sd) # 0.003830381

# probability that a randomly selected female is between 61 and 67 inches.
pnorm(67, female_avg, female_sd) - pnorm(61, female_avg, female_sd) # 0.6826895

###########################################################

# value of a height that is one SD taller than average.
taller <- female_avg+female_sd

# value of a height that is one SD shorter than average.
shorter <- female_avg-female_sd

# probability that the height of a randomly chosen female is within 1 SD from the average height.
pnorm(taller, female_avg, female_sd) - pnorm(shorter, female_avg, female_sd) # 0.6826895

###########################################################
