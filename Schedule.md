# Understanding Data — Study Plan

Sep 29, 2026 · @Chris

## Overview

The plan works through the seven core chapters of *Understanding Data* in 20 weeks, from 5 October 2026 to mid-February 2027. It takes about 3 hours a week, and each chapter ends with a small Python analysis on real Dutch open data.

- **Core chapters:** 1 The Problem with Statistics · 2 Describing and Presenting Data · 3 Probabilities and Hypothesis Testing · 4 Confidence Intervals · 6 Comparing Two Groups · 9 Correlation · 10 Regression. Chapter 5 (Normal Distributions) is skimmed alongside chapter 4.
- **Time budget:** 3 hours a week in two fixed sessions. That fits around a 32-hour work week and family evenings, without eating a whole weekend.
- **Buffer weeks:** four weeks have nothing scheduled (autumn holiday, Sinterklaas week, two weeks over Christmas). A missed week slides into a buffer instead of breaking the plan.
- **Language:** Python (pandas, numpy, matplotlib). R stays optional until the core is done.
- **Output:** one Jupyter notebook per chapter in a GitHub repository, plus a capstone analysis you can show at work.

## Weekly rhythm

Two fixed sessions a week, booked in your calendar like meetings, so the week never hinges on finding time.

| Session | When | Length | What you do |
| --- | --- | --- | --- |
| A — Read | One weekday evening, after the kids are in bed (or your non-working day, if you have one) | 60 min | Read the chapter section, make short notes, run the book's example if it has one |
| B — Build | Weekend morning or your free weekday | 90–120 min | Write the simulation in Python, apply it to the chapter's dataset, write 3–5 sentences on what you found |
| C — Optional | Commute, lunch break | 15 min | Re-read notes, tidy a plot, commit to GitHub |

Rules that keep it going:

- **20 minutes counts.** On a bad week, open the notebook and do one small thing. The streak matters more than the hours.
- **Never miss twice.** Missing one session is normal. Missing two in a row is the point where plans die, so session B is protected.
- **Stop mid-task.** End each session with a one-line "next step" at the top of the notebook, so the next session starts without warm-up.

## Schedule

The core runs 5 October 2026 to 21 February 2027: 16 study weeks and 4 buffer weeks, about 48 hours in total.

&#91;embedded content: study timeline · 7 chapters, 3 buffers, capstone\]

Regression gets three weeks because it is the densest chapter; every other chapter gets one or two.

## Chapter by chapter

Each block names the reading, the Python exercise, the data and the deliverable. Tick the boxes as you go. Most exercises use two sources: CBS municipal key figures (*Kerncijfers wijken en buurten*, loadable with the `cbsodata` package) and Kiesraad turnout per municipality for the most recent Tweede Kamer election.

### Chapter 1 — The Problem with Statistics (week 1, 5–11 Oct)

- [ ] Read chapter 1 (session A)
- [ ] Complete the setup checklist below (session B)
- [ ] Deliverable: a README in your repo with your goal and this schedule

### Chapter 2 — Describing and Presenting Data (weeks 2–3, 12–25 Oct)

- [ ] Read chapter 2
- [ ] Load CBS key figures per municipality into pandas and clean the column names
- [ ] Describe one variable (e.g. average household income): mean, median, spread; histogram and a boxplot by province
- [ ] Deliverable: notebook 02 with three charts and a paragraph on what the shape tells you

### Chapter 3 — Probabilities and Hypothesis Testing (weeks 5–6, 2–15 Nov)

- [ ] Read chapter 3
- [ ] Warm-up: simulate 10,000 rounds of coin flips and count how often you see 7+ heads out of 10
- [ ] Real question: is one province's share of large municipalities unusual, or could chance produce it? Simulate by drawing random municipalities
- [ ] Deliverable: notebook 03 with a p-value computed by counting, and one sentence explaining it to a colleague

### Chapter 4 — Confidence Intervals, with chapter 5 skimmed (weeks 7–8, 16–29 Nov)

- [ ] Read chapter 4; skim chapter 5
- [ ] Bootstrap: resample municipalities 10,000 times to get a 95% interval for median household income
- [ ] Compare it with the textbook normal-based interval from chapter 5
- [ ] Deliverable: notebook 04 with the bootstrap distribution plotted and both intervals marked

### Chapter 6 — Comparing Two Groups (weeks 10–11, 7–20 Dec)

- [ ] Read chapter 6
- [ ] Join Kiesraad turnout to the CBS data by municipality code
- [ ] Permutation test: is turnout different in municipalities above vs below 50,000 inhabitants? Shuffle the labels 10,000 times
- [ ] Check against `scipy.stats.ttest_ind`
- [ ] Deliverable: notebook 06 with the observed difference, the shuffled distribution and an interval for the difference

### Chapter 9 — Correlation (weeks 14–15, 4–17 Jan)

- [ ] Read chapter 9
- [ ] Scatter plot of population density against turnout; compute the correlation
- [ ] Bootstrap a 95% interval for the correlation, and a permutation test for "no relationship"
- [ ] Deliverable: notebook 09 with the scatter plot and one paragraph on why correlation is not the whole story

### Chapter 10 — Regression (weeks 16–18, 18 Jan–7 Feb)

- [ ] Read chapter 10 (three weeks, as it is the densest)
- [ ] Fit turnout on density, then add income and share of over-65s (`statsmodels`)
- [ ] Bootstrap the coefficients; plot the residuals and look for municipalities that don't fit
- [ ] Deliverable: notebook 10 with the model, its intervals and the outliers named

### Capstone (weeks 19–20, 8–21 Feb)

- [ ] Pick your own question on Dutch municipal data. A thesis-related one is ideal (e.g. how municipalities that adopted a policy differ from those that didn't)
- [ ] Use at least two methods from the book (e.g. a permutation test plus a regression)
- [ ] Deliverable: a two-page write-up and a 10-minute talk (see below)

## Week 1 setup

Setup fits in one session B, about 90 minutes, on your Mac.

- [x] Buy or borrow the book (check Leiden University Library first: Springer ebooks are often free through a university login)
- [X] Set up Positron project
- [ ] Create a GitHub repository for your project
- [X] Select a prospective Capstone project
- [x] Book sessions A and B as recurring calendar events through February 2027

## Keeping it going

Since external pressure is what's missing, the plan builds some in. It starts small and gets more public as you go.

- **Public repo from day one.** Each chapter ends with a commit anyone could see. An empty week is visible, to you at least.
- **Fortnightly check-in with Claude.** Every other Sunday, share your latest notebook in this project. You get feedback on the code and the reasoning, and a plain "on track / behind" verdict. This can be set up as a scheduled reminder.
- **Tell one person.** Name a colleague (a developer or architect on your team works well) and tell them the capstone date. Ask them to ask you about it in February.
- **A date to present.** Book a 10-minute lunch-and-learn with your team for late February 2027: "What simulation taught me about our data". A slot in the calendar is the strongest deadline in this plan.
- **Slip rule.** If you fall more than one chapter behind, use the next buffer week to catch up rather than squeezing it in. If there's no buffer left, drop chapter 9 into the regression weeks: chapter 10 builds on it anyway.

## After the core

From March 2027, choose one track depending on what the capstone shows you need.

- **Finish the book:** chapter 7 (three or more groups), 8 (proportions and relative risk), 11 (power) and 12 (Bayesian), at one chapter every two weeks. Power is the most useful of these for thesis design.
- **Analyst tooling:** SQL (joins, window functions) and data cleaning at work scale, e.g. with DuckDB on the same CBS data.
- **R for the thesis:** redo notebooks 06 and 10 in R with the tidyverse, if your MPA supervisor works in R.
