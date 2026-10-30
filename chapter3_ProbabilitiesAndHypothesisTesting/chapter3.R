# probability for 4 or more girls in a family with 5 children
# Simulating the probability with a Box model, see p.89-91

library(tidyverse)
library(patchwork)

# Create a tibble with a column that contains the number of girls in familiy of five children
# when randomly sampled 1000000 times
probGirls <- tibble(
  value = map_int(
    .x = c(1:100000),
    .f = ~ sum(sample(c("boy", "girl"), 5, replace = TRUE) == "girl")
  )
)

# visualise the box model as how I would do it:
chris <- probGirls |>
  count(value) |>
  mutate(
    p = n / sum(n)
  ) |>
  ggplot(aes(y = n, x = value, fill = value)) +
  geom_col() +
  geom_label(
    aes(label = scales::percent(p, accuracy = .1))
  ) +
  labs(
    title = "Mijn eigen probeersel",
    x = "Aantal meisjes",
    y = "Runs"
  )

# R also has a built-in function for doing this, it would look like this:
native <- tibble(
  value = rbinom(100000, size = 5, prob = 0.5)
) |>
  count(value) |>
  mutate(
    p = n / sum(n)
  ) |>
  ggplot(aes(y = n, x = value, fill = value)) +
  geom_col() +
  geom_label(
    aes(label = scales::percent(p, accuracy = .1))
  ) +
  labs(
    title = "R's ingebakken functie: rbinom",
    x = "Aantal meisjes",
    y = "Runs"
  )

# compare the visuals - very similar
chris + native

# Show how the box model operated during the running of the simulations
cumulative_simulated_probability <- probGirls |>
  transmute(
    simulation = row_number(),
    girls = value,
    cumulative_simulated_prob = cummean(girls >= 4)
  )

cumulative_simulated_probability |>
  ggplot(
    aes(
      x = simulation,
      y = cumulative_simulated_prob
    )
  ) +
  geom_line() +
  geom_label(
    data = cumulative_simulated_probability |>
      slice_max(n = 1, order_by = simulation),
    aes(label = cumulative_simulated_prob)
  ) +
  scale_y_continuous(labels = scales::percent_format()) +
  labs(
    title = "Cumulative Simulated Probability",
    y = "% of families with 4 or more girls",
    x = "number of simulations"
  )

# probability for drawing a straight with poker
# Simulating the probability with a Box model, see p.94-96

probStraight <- tibble(
  value = map_lgl(
    .x = c(1:100000),
    .f = ~ all(diff(sample(rep(1:13, each = 4), 5, replace = FALSE)) == 1)
  )
)

probStraight |>
  count(value) |>
  mutate(
    p = n / sum(n)
  )

# FURTHER EXERCISES 3.1, p 96

# 1. You flip 5 fair coins. What is the probability of observing 4 heads?

tibble(
  flipped = map_int(
    .x = c(1:100000),
    .f = ~ sum(sample(c("heads", "tails"), 5, replace = T) == "heads")
  )
) |>
  count(flipped) |>
  mutate(p = n / sum(n))

# Answer ~15.8%

# 2. Three cards are chosen at random from a poker deck with replacement. What is the
# probability of choosing a five, a four and a three, in order?

tibble(
  drawn = map_lgl(
    .x = c(1:100000),
    .f = ~ all(diff(sample(rep(1:13, each = 4), 3, replace = TRUE)) == 1)
  )
) |>
  count(drawn) |>
  mutate(
    p = n / sum(n)
  )

# Answer ~ 0.512%

# 3. A jar contains 4 blue, 3 red, 2 green and 5 yellow marbles. A marble is chosen at random from the jar. After replacing it, a second marble is chosen. What is the probability of choosing a blue and then a red marble?

marbles <- c(
  "blue",
  "blue",
  "blue",
  "blue",
  "red",
  "red",
  "red",
  "green",
  "green",
  "yellow",
  "yellow",
  "yellow",
  "yellow",
  "yellow"
)

puller <- function(marbles) {
  pull <- sample(marbles, 2, replace = T)
  pull[1] == "blue" && pull[2] == "red"
}

puller(marbles)

pulled <- tibble(
  pull = map_lgl(
    .x = c(1:100000),
    .f = ~ puller(marbles)
  )
)

pulled |>
  count(pull) |>
  mutate(
    p = n / sum(n)
  )

#Answer: ~6.1%

# 4. Fair ticket price. You are offered the opportunity to play the following game: your opponent rolls 2 regular 6-sided dice. If the difference between the two rolls is at least 4, you win $20. Otherwise, you get nothing. What is a fair price for a ticket to play this game once? In other words, what is the expected earnings of playing the game?

roll <- c(1:6)

dicer <- function(roll) {
  roll1 <- sample(roll, 1, replace = F)
  roll2 <- sample(roll, 1, replace = F)

  abs(roll1 - roll2) > 3
  #print(c(roll1, roll2, result))
}

dicer(roll)

diced <- tibble(
  roll = map_lgl(
    .x = c(1:100000),
    .f = ~ dicer(roll)
  )
)

diced |>
  count(roll) |>
  mutate(
    p = n / sum(n)
  )

# Expected earnings = 0.167*20 = 3.34

# 5. Four letter words. How many different 4-letter “words” can you make using the 26 letters of the alphabet? For example, two of them are aaaa, cbgb, etc.

# Claude: The real issue -> this is a counting question, not a probability question. Random sampling estimates how often something happens. It doesn't tell you how many distinct outcomes exist. With 100,000 draws you'll only see part of the possible words, and counting the unique ones in your sample will always come out too low.

# The answer comes from the multiplication rule: 26 choices for each of the 4 positions gives:
26^4

# 6. Free throws. A guard on the women’s basketball team made an amazing 92.2% of her free throws this season, including a record-breaking streak of 33 in a row. What is the likelihood of her making 33 free throws out of 33, given her record this season? Use simulation to find this value and create a histogram of your simulation results.

throw <- c("hit", "miss")
all(sample(throw, size = 33, replace = T, prob = c(.922, .078)) == "hit")

streaks <- tibble(
  streak = map_lgl(
    .x = c(1:100000),
    .f = ~ all(
      sample(throw, size = 33, replace = T, prob = c(.922, .078)) == "hit"
    )
  )
)

streaks |>
  count(streak) |>
  mutate(
    p = n / sum(n)
  )

# histogram of simulation results
streaks |>
  ggplot(aes(x = streak, fill = streak == 33)) +
  geom_histogram(binwidth = 1) +
  labs(
    title = "Aantal raak uit 33 vrije worpen (100.000 simulaties)",
    x = "Aantal raak",
    y = "Aantal simulaties",
    fill = "33 uit 33"
  )

# Check how probability changes through the consequtive simulations:
cumulative_simulated_probability_streaks <- streaks |>
  transmute(
    simulation = row_number(),
    streak,
    cumulative_simulated_prob = cummean(streak == T)
  )

cumulative_simulated_probability_streaks |>
  ggplot(
    aes(
      x = simulation,
      y = cumulative_simulated_prob
    )
  ) +
  geom_line() +
  geom_label(
    data = cumulative_simulated_probability_streaks |>
      slice_max(n = 1, order_by = simulation),
    aes(label = cumulative_simulated_prob)
  ) +
  scale_y_continuous(labels = scales::percent_format()) +
  labs(
    title = "Cumulative Simulated Probability for a streak",
    y = "% of obtaining a streak",
    x = "number of simulations"
  )
