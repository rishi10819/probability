cyan <- 3
magenta <- 5
yellow <- 7

# The variable `p_1` is the probability of choosing a cyan ball from the box on the first draw.
p_1 <- cyan / (cyan + magenta + yellow)

# Assign a variable `p_2` as the 
# probability of not choosing a cyan ball on the second draw without replacement.
p_2 <- (magenta + yellow) / (cyan + magenta + yellow)

# Calculate the probability that the 
# first draw is cyan and the second draw is not cyan
p_1*p_2 # 0.16

############################################################

# Assign the variable 'p_yellow' as the probability that a yellow ball is drawn from the box.
p_yellow <- yellow / (cyan + magenta + yellow)

# Using the variable 'p_yellow', 
# calculate the probability of drawing a yellow ball on the sixth draw.
p_yellow # 0.4666667
