# Unit Project 01
# BIOL 101
# January 23 2026
# Helennah Tran

#### Lecture 01

# install.packages("swirl")
# library("swirl")

#Q1
x <- (5+3)^2/4

#Q2
gen_time <- 3 
years <- gen_time * 1000

#Q3
sqrt(years)
# The answer is 54.77226

#Q4
log10(abs(-25))
# The answer is 1.39794

#Q5
sites <- 1:100

#Q6
temps <- seq(0, 40, by = 2)
temps

#Q7
n_temps <- length(temps)
n_temps
# There are 21 values in temps

#Q8
treatments <- rep(c("control", "treated"), each = 5)

#Q9
# The most confusing part is doing a function inside
# of a function and the syntax
# It can show up in positions along DNA sequence

#### Lecture 02
# Q1:What is the length (number of values) in pop_size? Answer: The length is 5
pop_size <- c(120, 135, 150, 160, 175)
length(pop_size)

# Q2 Answer: Species is character popsize is numeric 
species <- c("stickleback", "guppy", "zebra_fish")
class(species)
class(pop_size)


# Q3
double_pop <- pop_size * 2
length(double_pop)
double_pop

# Q4: What happens if you subtract a single number from a vector? 
# Answer: When you subtract a single number from a vector, R subtracts it
# from every value in the vector.
pop_size - 100


# Q5: What happens if you try to combine numbers and characters in the same vector using c()?
# Answer: When numbers and characters are combined in the same vector,
# R turns everything into characters.
veccy <- c(10, 5, "stickleback", 2)
veccy 
class(veccy)


# Q6: What is the length of depth? Answer: the length is 6
depth <- c(1, 2, 7, NA, 8, NA)
length(depth)

# Q7: What class of vector is depth_miss? Answer: The class is logical
depth_miss <- is.na(depth)
class(depth_miss)

# Q8: How many missing values are in depth? Answer: The missing values in depth is 2
sum(depth_miss)

# Q9
fitness <- c(0.95, 0.87, NA, 0.92, 0.78, 0.99)
fitness[1:3]

# Q10
fitness[fitness > 0.9]

# Q11
fitness[!is.na(fitness)]

# Q12
# The most interesting thing I learned was how vectors can be
# multiplied or changed all at once instead of one value at a time.
# The most confusing part was understanding how NA values work
# and how they affect calculations.

#### Lecture 03
# Q1
m <- matrix(1:12, nrow = 4, ncol = 3)
m

# Q2: What do these functions do? Answer: 
# nrow() tells you how many rows there are which is 4 for m.
# ncol() tells you how many columns there are which is 3 for m.
dim(m)
nrow(m)
ncol(m)

# Q3
# fourth row second column is 8 
# third column is 9 10 11 12
m[4, 2]
m[, 3]

# Q4
m * 2
# 2 10 18
# 4 12 20
# 6 14 22
# 8 16 24

# Part 2: Data frames

# Q5
id <- c("F1", "F2", "F3", "F4", "F5")
length_mm <- c(55, 61, 58, 72, 60)
lake <- c("Bear", "Bear", "Arrowhead", "Bear", "Arrowhead")
parasite <- c(TRUE, FALSE, TRUE, FALSE, FALSE)

fish <- data.frame(id, length_mm, lake, parasite)
fish

# Q6
# Answer: fish$id is character, fish$length_mm is numeric
# fish$lake is chatacter, fish$parasite is logical
names(fish)

class(fish$id)
class(fish$length_mm)
class(fish$lake)
class(fish$parasite)

# Q7: What does this function do? Answer: The str() function shows the data frame,
# including the column names, data types, and values.
str(fish)

# Q8
fertility <- data.frame(eggs = c(10, 20, 5, 50, 2))
fish <- cbind(fish, fertility)
fish

# Q9 Answer: FALSE FALSE  TRUE FALSE FALSE  TRUE
eggs <- c(0, 0, 1, 3, 0, 2)
eggs >= 1 & eggs < 3

# Q10 Answer: TRUE  TRUE FALSE FALSE  TRUE  TRUE
hatched_offspring <- c(0, 0, 0, 2, 0, 2)
eggs == hatched_offspring

# Q11 Answer: 1 3 2
eggs[eggs != 0]

# Q12 Answer: 0 0 0 2
eggs[eggs == 0 | eggs == 2]

# Q13
0 %in% eggs
1 %in% eggs
2 %in% eggs
4 %in% eggs
50 %in% eggs
# The %in% operator checks if a value exists inside a vector.
# When running the code it prints true when 0 in eggs so I know 
# it's checking if 0 is in the vector.

#### Lecture 04
# Q1 Answer: When length_mm is 52 it's true. So it prints tag this fish
# But when its 49 it's false so it prints too small to tag
length_mm <- 52

if (length_mm >= 50) {
  print("Tag this fish")
} else {
  print("Too small to tag")
}

length_mm <- 49

if (length_mm >= 50) {
  print("Tag this fish")
} else {
  print("Too small to tag")
}

# Q2 Answer: When expression is 4 it prints abnormal but changing
# it to 1 it prints baseline. Because all if statements are false
expression <- 4

if (expression >= 6) {
  print("Extreme")
} else if (expression >= 4) {
  print("Abnormal")
} else if (expression >= 2) {
  print("Elevated")
} else {
  print("Baseline")
}

expression <- 1

if (expression >= 6) {
  print("Extreme")
} else if (expression >= 4) {
  print("Abnormal")
} else if (expression >= 2) {
  print("Elevated")
} else {
  print("Baseline")
}

# Q3
double <- function(n) {
  return(n * 2)
}

# Q4 Answer: add_tax(100, 0.15)
# 115
# add_tax(82, 0.10)
# 90.2
# add_tax(tax = 0.10, price = 82)
# 90.2
add_tax <- function(price, tax) {
  return(price + price * tax)
}

add_tax(100, 0.15)
add_tax(82, 0.10)
add_tax(tax = 0.10, price = 82)

# Q5 Answer: 6 = extreme 4 = abnormal 2 = elevated
classify_expression <- function(expression) {
  if (expression >= 6) {
    return("Extreme")
  } else if (expression >= 4) {
    return("Abnormal")
  } else if (expression >= 2) {
    return("Elevated")
  } else {
    return("Baseline")
  }
}

classify_expression(6)
classify_expression(4)
classify_expression(2)

# Q6 
for (i in 1:10) {
  print(i)
}

# Q7 Answer: cumulative_reads = 700
reads <- c(120, 80, 150, 60, 200, 90)
cumulative_reads <- 0

for (i in reads) {
  cumulative_reads <- cumulative_reads + i
}

print(cumulative_reads)

# Q8 Answer: "NO TAG" "TAG"    "NO TAG" "TAG"    "NO TAG"
length_mm <- c(35, 52, 47, 61, 49)
tag_status <- character(length(length_mm))

for (i in 1:length(length_mm)) {
  if (length_mm[i] >= 50) {
    tag_status[i] <- "TAG"
  } else {
    tag_status[i] <- "NO TAG"
  }
}

tag_status

#### Lecture 05
# install.packages("tidyverse")
# install.packages("palmerpenguins")
library("dplyr")
library("palmerpenguins")

str(penguins)

# Q1
# Answer: I created a subset that only shows species, sex, and body_mass_g.
penguins_sub <- penguins %>%
  select(species, sex, body_mass_g)

penguins_sub

# Q2
# Answer: This shows only the first 6 rows for the measurement variables
# in the question. 
penguins %>%
  select(bill_length_mm, bill_depth_mm, flipper_length_mm, body_mass_g) %>%
  head()

# Q3 How many rows does your new data frame have?
# Answer: It has 124 rows.
gentoo_penguins <- penguins %>%
  filter(species == "Gentoo")
nrow(gentoo_penguins)

# Q4 Do you see any NA values in body_mass_g still?
# Answer: There are no NA values in body_mass_g. 
heavy_penguins <- penguins %>%
  filter(body_mass_g > 5000)

heavy_penguins

# Q5 Why might missing values matter for later calculations?
# Answer: Missing values matter for later calculations because
# it could cause an error and leading to incorrect calculations.
penguins_sex <- penguins %>%
  filter(!is.na(sex))

penguins_sex

# Q6
# Answer: I divide by 1000 to turn grams into kilograms.
penguins %>%
  mutate(body_mass_kg = body_mass_g / 1000)

# Q7 Does this “bill_area” have units? What would the units be?
# Answer: Yes, bill_area should have units since we multiply mm with mm
# it should be mm^2. 
adelie_penguins <- penguins %>%
  filter(species == "Adelie") %>%
  mutate(bill_area = bill_length_mm * bill_depth_mm)

adelie_penguins
# there are two question 7
# Q7 Which species has the most observations?
# Answer: Adelie has the most observations.
penguins %>%
  group_by(species) %>%
  summarize(count = n())

# Q8 Which island has the largest average flipper length? 
# Answer: Biscoe has the largest average flipper length which is 210.
penguins %>%
  group_by(island) %>%
  summarize(mean_flipper_length = mean(flipper_length_mm, na.rm = TRUE))
#Q8 Why might male vs female body mass differ?
# Answer: In the data, I see that male body mass is higher than female body mass
# this is probably due to the fact that males are larger than females in penguins.
penguins %>%
  filter(!is.na(sex), !is.na(species)) %>%
  group_by(species, sex) %>%
  summarize(mean_body_mass = mean(body_mass_g, na.rm = TRUE))

#Q9
# Answer: In this code, NA is removed and we grouped by species, island, and sex
# and also got standard deviations, mean, and count of observations for the
# body mass variable.
penguins %>%
  filter(!is.na(sex), !is.na(species)) %>%
  group_by(species, island, sex) %>%
  summarize(
    mean_body_mass = mean(body_mass_g, na.rm = TRUE),
    sd_body_mass = sd(body_mass_g, na.rm = TRUE),
    count = n()
  )

# Reflection
# What’s the difference between select() and filter()?
# Answer: The difference between select() and filter () is that select() chooses 
# columns and filter() chooses rows
# When should you use mutate()?
# Answer: mutate() changes an existing column or makes a new one.
# Why do group_by() and summarize() almost always go together?
# Answer: group_by() and summarize() go together because group_by() sets categories
# summarize() calculates values for each group. 
# What does na.rm = TRUE do, and why is it useful?
# Answer: The na.rm = TRUE removes the missing values which is na 
# so the calculations can run with no errors.