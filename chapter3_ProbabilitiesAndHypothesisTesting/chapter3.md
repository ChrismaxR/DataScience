# Chapter 3 - Introduction to Probabilities and Hypothesis Testing

LEARNING OBJECTIVES
After reading this chapter, you will be able to
• Calculate the probabilities of various kinds of events by making box models and sampling from them.
• Determine the degree of statistical significance of an observed result as compared to theoretical expectations.
• State clearly five reasons why “Null Hypothesis Significance Testing” is problematic.
• Explain the difference between “Type I” and “Type II” errors in hypothesis testing.

---
# §3.1 Modelling and simulating probabilities: key learning points

**1. Two kinds of probability estimates**
- Some probabilities are hard to estimate and open to debate, like the chance of peace in the Middle East or your team winning.
- Others are easy because the number of equally likely outcomes is known and you can count them. For example, P(ace) = 4/52 ≈ 8%.

**2. The frequentist interpretation**
- Probability is how often an outcome occurs among all possible outcomes.
- It works best when a problem can be put in a standard form, like drawing from a box with known contents or flipping a coin.

**3. The multiplication rule**
- P(X and Y) = P(X) × P(Y) when X and Y are independent.
- For two aces in a row: 4/52 × 3/51 ≈ 0.005, which is 0.5%.

**4. Formulas run out quickly**
- Harder events, like being dealt a straight or having 4 or more girls among 5 children, need complicated formulas or long brute-force counting.
- You may not know the right formula, or remember it.

**5. Simulation is the alternative**
- Instead of calculating, you repeat the random process many times and count how often the outcome happens.
- You could do this by hand with cards, but a computer's random number generator can run a million trials easily.

**6. The box model is the core tool**
- Define the box: the list of basic objects you draw from, such as {girl, boy} or 52 cards.
- Define the drawing rule: how many draws per trial, and with or without replacement.
- Define the outcome you're counting, such as "4 or more girls" or "is a straight".
- Repeat many times (for example 100,000), then divide the number of hits by the number of trials. That ratio is your probability estimate.

**7. Worked examples**
- **4 or more girls in 5 children:** draw 5 times from {G, B}, with replacement. The simulation gave about 18.79%, against an exact answer of 18.75%.
- **A straight in poker:** draw 5 cards from a box holding the ranks 1–13, four copies of each, without replacement. Then check whether the hand is a straight.

**8. Why simulate when there's a formula?**
- It protects against the jokingly named "Type III error": using the wrong formula.
- Most importantly, it still works when no formula is available.

**9. Monte Carlo methods**
- Simulation by random sampling is called a Monte Carlo method, after the Monte Carlo casino.
- A roulette wheel is itself a box model with the numbers 0–36.

**The rule of thumb:** if you can describe a problem as random draws from a box, you can estimate its probability by simulation.

---
