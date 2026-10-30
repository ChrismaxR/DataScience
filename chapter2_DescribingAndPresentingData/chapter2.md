Describing and Presenting Data
LEARNING OBJECTIVES
After reading this chapter, you will be able to
• choose what types of plots to make to show the distribution of the data, and to kno w
for what kinds of data each type of plot is appropriate.
• decide when a typical value (mean, median, etc.) can be used to summarize a data
set.
• measure the variability of data within a data set.
Let’s say we have made a measurement on every member of a sample population. If the
population is people, this could be their blood pressures, or their heights, or their survival times
on some drug; if the population is neurons, it could be their firing rates or their sizes or response
times. We then have a data set consisting of those measurements.
The first decision we have to make is: how to present our data? As we will see, the first
and most important question is: What is the distribution of the data? In order to decide which
methods are best for a given data set, we need to see the shape of the distribution.
There are several methods for showing the overall distribution of the data, depending on the
size of the data set, and the type of data that make it up.
After studying the distribution, we may then choose to summarize the data set by “typical
values” like the mean or median. We may also try to summa rize the variability of the data set
by a number. What we do depends completely on the shape of the data.
One of the founders of modern statistics, JW Tukey, said it best: “There is no excuse for
failing to plot and look” (Tukey et al., 1977).
For example, we often hear about “the average” value, or, to use the fancier term, “the mean”
value. We talk about the “average class size” or the “mean firing rate” of a collection of neurons.
As we will soon see, there are many cases where the mean is a poor measure of a data set.
If we report such a data set only b y its mean value, we are committing statistical malpractice,
and have drawn a conclusion that is, at best, highly misleading.
As a symptom of this problem, last year we gave a poll question to 272 students on the first
da y of a freshman statistics for biologists class. The students were shown a headline:
7
© The Author(s), under exclusive license to Springer Nature Switzerland AG 2026
A. Garfinkel and Y. Guo, Understanding Data,
https://doi.org/10.1007/978-3-032-18600-3_2
C
(131/272) 48%
D
(27/272) 10%
E
(60/272) 22%
B
(41/272) 15%
A
(13/272) 5%
8 CHAPTER 2 DESCRIBING AND PRESENTING DATA
The headline said “Average Tax refunds up $40 for 2019”, and the question asked y ou to say
what is likely to happen to you.
Based on the news headline, which of the following is true?
A. I can expect around $40 more this year.
B. I can expect to get a bigger refund, amount uncertain.
C. Many people will get approximately $40 more, but, as they say,
“Individual results may vary”.
D. A typical refund will be $40 more.
E. None of the above.
The class answers are sho wn below:
The only even remotely correct answer is E, “None of the above”, because given the infor-
mation in the headline, you can say absolutely nothing about your lik ely outcome. It could be
$40 more, or $40,000 more, or $40,000 less than your last year’s return.
Notice that 78% of the class, over three quarters, gave a completely incorrect answer to the
question.
How could this happen? How can 78% of the population get that wrong? The answer is
that we’ve been led to believe that a certain shape, the “bell curve”, holds almost automatically
for all distributions in nature. And if you were unconsciously assuming that tax returns follow
9
2.1 VISUALIZING DATA: DOT PLOTS AND BEESWARM PLOTS
a bell curve distribution, also known as a “Normal” distribution, then you would be excused for
assuming that the average (= mean) value is also the most likely value, because that happens
to be true for bell-shaped distributions.
But are all or most distributions in nature shaped like bell curves? No! As we will see later
in this chapter and in Chapter 5 (Normal Distribut ions), the assumption that most distributions
are bell-shaped is the source of a great deal of error in science.
And that’s the reason why we aren’t beginning with calculating numbers like the mean. We
have to first take a step back and ask whether the mean or any other numerical summary is
justified, at all, for this data. In this particular case, the average is a poor descriptor of the data!
So we are not going to just “Take the average” because we’re not ready to take the average!
And then there is a second point: even if the mean is appropriate for a given data set, if we
choose to simply summarize the data set by a single number, we are choosing to ignore a great
deal about that dat a. The most important fact we are missing is the variability of the data set.
Is the data set highly variable, so that a “typical number” is a poor representative?
So, before we start calculating any summary numbers for a data set, like means or anything
else, we first have to look at the data set. Step 1 is to visualize the data set in some way
that makes clear what its distribution is. Only then, as step 2, can we decide what numerical
summary measures to use.
2.1 Visualizing data: dot plots and beeswarm plots
What is data? It is any set of facts that describe a state of affairs. In this book, data will
usually be exp ressed in numbers. But data could also be a picture, or a fingerprint at the scene
of a crime.
The most typical situation is when we have a set of subjects 1, 2, ..., n and we measure a
quantity X for each subject. We will call these numbers x1, x2, .. ., xn . In this case we speak
of a data set {x1, x2, ..., xn } describing the group.
In statistics, the data set is often referred to as a sample, and n is then called the sample
size. In this book, we will always use this convention that n is the number of data points in
a sample.
For example, we might have a group of people, and we measure a systolic blood pressure
(SBP) for each of them. Blood p ressures are generally measured in units of millimeters of
mercury, mmHg, which is a standard of pressure.
In this case the data set might look like:
Subject No. Name Blood Pressure (mmHg)
1 Sally E x1 = 108
2 Trisha K x2 = 126
.
.
.
.
.
.
.
.
.
n Steve W xn =118
A sample data set, consisting of blood pressures from n participants.
Table 2.1
The first thing to do with any data set is: look at it! This may seem obvious, but it is
surprising how often this is not done, with serious consequences.
￼
10 CHAPTER 2 DESCRIBING AND PRESENTING DATA
How to look at data
Dot plot In the case where the data set is small to middling, the most important visualization
is the dot plot : we simply plot the data values as points on a single axis, horizontal or vertical
(Figure 2.1).
Figure 2.1 Two presentations for dot plots, horizontal and vertical.
In this chapter, we will use the horizontal presentation, but in later chapters, when we are
comparing several groups, we will use the vertical presentation.
When the data set gets larger than 20 or so, there is a real chance that data points might
overlap, giving us a misleading picture of the data. Consider the four different data sets in
Figure 2.2. If the data set is small (n = 10) (first row) there is no problem with the dot plot,
and it shows the data nicely. For n = 20 (second row) there is already some overlapping of
data points: only 17 dots can be seen; the other 3 are overlapped. By the time n = 50 (third
row) the degree of overlap is substantial, so the plot mis-represents the data, and when n = 100
(bottom row) the mis-representation is much worse.
￼
Figure 2.2 Dot plots for four different data sets of increasing size n. Note the overlap of data
points in the larger sets.
For these larger data sets, we need a method for preventing overlap of the data points.
11
2.1 VISUALIZING DATA: DOT PLOTS AND BEESWARM PLOTS
Beeswarm The best method for avoiding overlapping is the “beeswarm” plot. Since the data
is one-dimensional, we can use the second dimension of the page to spread the data out. We
create a fictitious second axis, and then add a small fixed quantity to each data point in this
(meaningless) axis. This stacks up data points that are equal or close so they don’t overlap
(Figure 2.3).
￼
Figure 2.3 Dot and beeswarm plots for the n = 50 data set in Figure 2.2.
Looking at the two forms of presentation, it is clear that the simple dot plot is fine for
small data sets, but that for larger ones, the beeswarm plot gives a better picture of the data
(Figures 2.3 and 2.4).
￼
Figure 2.4 Dot and beeswarm plots for the n =100 data set in Figure 2.2.
What to look for in a dot plot or beeswarm plot
The most important first step in looking at a data set is to look at the data set, that is,
to make a picture of its distribution.
The true picture of the data set is its distribution, and we must always begin by looking at
it and seeing what it is trying to tell us. Some important features to look for are:
Bunching up of data (symmetry vs. skew) Are the data fairly evenly distributed over their
range, or do they “bunch up”? If they do bunch up, are the more popular values in the middle,
making the distribution fairly symmetric? Or do they bunch up on the left, with a long tail to
the right, which is called “skewed to the right”, or bunch up on the right, with a long tail to
the left, which is called “skewed to the left”? (Think of the term “skewed to the...” as meaning
“sticking out asymmetrically to the....”) For example, the data in Figure 2.5 are skewed to the
right. Of course, this can only be seen in the beeswarm plot.
12 CHAPTER 2 DESCRIBING AND PRESENTING DATA
￼
Figure 2.5 Data skewed to the right.
Outliers Are all the data in the same general range, or are there some points that are “far
away” from the others? These extreme values are often called “outliers” (Figure 2.6).
How we deal with outliers is an important scientific question, for which there is no quick or
automatic answer.
￼
Figure 2.6 Data that has a few outlying values.
When we see outliers, our first duty is to figure out why that data point is showing such
extreme values. Outlying values could represent a mistaken measurement (for example, a blood
pressure of 1200 mmHg is a typo or a defective instrument), but they could also represent
important extreme cases.
Outliers can be excluded only if you are reasonably sure that there is a causal explanation for
this value that shows it to be produced by a defective mechanism, one other thanthemechanism
producing the rest of the data. Certainly data entry errors or defective instruments count as
defective mechanisms, but consider also the data in Example 1 on page 14. Here we are plotting
the month-by-month cancellation rates fo r commercial airlines from 2001 to 2003.
We note an outlier: there is one point whose monthly cancellation rate is 20%. When we
examine the data, we see that the outlying month is September 2001, when the attacks on the
World Trade Center in New York caused massive airline cancellations.
13
2.1 VISUALIZING DATA: DOT PLOTS AND BEESWARM PLOTS
In contrast to this policy, some sources suggest that there can be purely mathematical
criteria to exclude points that are, say, more than two standard deviations from the mean,
or that pass a certain “critical ratio test”. It is very important to understand that there is no
mathematicalcriterionthatjustifies“removing” outlyingvaluesjustbecausetheyareoutlying!
Removing outlying points simply because they are outlying is scientific fraud.
It is mandatory to exclude data that is from a defective Data Generating Process (like
a broken meter, a mis-assigned subject, etc.) whether the data is small or large or typical.
Thus, w e should investigate data that is unusual. It is never correct to exclude “outliers” on
some mathematical criterion (“two standard deviations” or “critical ratio test”).
Tails Note the left and right tails of the data distribution. Are the tails “thin”, with most of
the data bunched up somewhere in the middle and distributed sparsely in the tails? Or are the
tails “thick”, implying a more even distribution, with more extreme values well-represented?
Subgroups Are there noticeable gaps between bunches of data? In other words, does the data
set seem to group into distinct subgroups, like a “lo w group” and a “high group”? Or does it
seem to be varying continuously, with no noticeable gaps?
If a data set has distinct subgroups (as in Figure 2.7, for example), then the average would
not work well! Instead of mindlessly carrying out and applying statistics to the data set, we
should first be asking ourselves questions such as: what causes this? What’s driving it?
￼
Figure 2.7 Data displaying subg roups.
Notice that the language of this section has been very visual and qualitative. You are
being asked to form a visual impression of some qualitative features of the data set. This
absolutely critical step is often skipped over, partly out of a prejudice that these impressions are
“subjective”. In fact, they are the most important features of the data set, and our judgments
of the distribution of the data are critical in making decisions about how to analyze it.
Later on, we learn methods for turning all these visual impressions into precise mathematical
concepts. But it will always be true that the visual impression is the first step.
14 CHAPTER 2 DESCRIBING AND PRESENTING DATA
Example 1 US airline cancellation rates
The United States Department of Transportation monitors and reports to the general
public many types of information, including the monthly cancellation rates of airline flights.
Cancellation rates are calculated as the ratio of cancelled flights to originally scheduled fights.
Here are the monthly flight cancellation rates (in percent) from 2001 to 2003.
Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec
2001 3.8% 3.7 3.4 2.2 1.8 3.0 2.1 2.4 20.2 1.5 1.1 1.0
2002 1.7 1.1 1.3 1.0 1.0 1.7 1.3 1.1 0.9 1.0 0.9 1.7
2003 1.5 4.0 1.7 1.2 0.8 0.8 1.4 1.6 1.5 0.9 1.4 2.1
Question What is the distribution of the flight cancellation rates?
Answer To determine the distribution, the tabular form obviously doesn’t help much. There-
fore, we will make a beeswarm plot.
Flight cancellation rate
0% 5% 10% 15% 20%
?
We see an extreme value: one month had a 20% cancellation rate. Is that point an
excludable “outlier”? When we verify that that month was September 2001, the month of
the World Trade Center attacks, we a re justified in removing this data point. It does not
give us any insight into the typical behavior of airlines. Here is the beeswarm plot excluding
September 2001.
1% 1.5% 2% 2.5% 3% 3.5% 4%
0.5%
Flight cancellation rate
outlier
After removing the outlier, we see that the distribution is asymmetric. The data points
bunch up on the left, wit halongthintailtotheright,sothedistributionisskewedtotheright.
Question Are there subgroups?
Answer There are no obvious subgroups.
2.1 VISUALIZING DATA: DOT PLOTS AND BEESWARM PLOTS 15
Example 2 Housing prices in San Francisco
From real estate transaction records, there were 886 3-bedroom houses sold in San Fran-
cisco in 2018. Here’s a beeswarm plot of the sale prices.
Sales price (in million dollars)
0 4 6 8 10
2
Question Are there outliers?
Answer While there are some large or even extreme values, they cannot be excluded as
outliers because they aren’t the result of some sort of anomaly; they are just very expensive
homes! There is no mathematical criterion that permits the exclusion of these large values
just because they are outlying.
Question How would you describe the distribution?
Answer It is clearly asymmetric. The data points bunch up on the left, with a long tail to
the right, so the distribution is skewed to the right.
Question What do the tails of the distribution look like?
Answer There is a long thin tail on the right, and a short, thick tail on the left.
Question Are there subgroups?
Answer No subgroups are obvious.
US vaccination rate by state
40% 50% 60% 70% 80%
15 20 25
10
Value
16 CHAPTER 2 DESCRIBING AND PRESENTING DATA
Example 3 Vaccination rates in the US
As of late September 2021, 6 months after rollout of the COVID vaccine, the US state-
by-state vaccination rates vary widely. Here is a beeswarm plot of their values.
Question Are there outliers?
Answer No, there a re no outliers.
Question How would you describe the distribution?
Answer The distribution has a high variability. It does not have a prominent peak, and the
data points are scattered widely in a fairly uniform manner.
Question What do the tails of the distribution look like?
Answer The left and right “tails” are hardly tails at all, because the data is distributed fairly
uniformly.
Question Are there subgroups?
Answer There do appear to be two subgroups, a higher vaccination rate group and a lower
vaccination rate group.
FURTHER EXERCISES 2.1
1 Random number generator. A random number generator was set to produce whole numbers
from 10 to 25. The plot below shows the results from 52 trials. Which of the following
descriptions of this beeswarm plot is appropriate?
.
a Right-skew
.
b Left-skewe
.
c Symmetric with thick tails
.
d. Symmetric with thin tails
e Uniform.
ed
d
17
2.2 LOOKING AT THE DISTRIBUTION: HISTOGRAMS AND KERNEL DENSITY PLOTS
f. Bimodal
2 Daily screen time. Four people tracked their daily screen time for 5 weeks.
.
a Describe the distribution for each person. Comment on center, sp read, shape, and
any unusual days.
.
b Which person likely has a schedule requiring high, steady screen time?
.
c Identify which plot is right-skewed and explain what that could mean in a real-life
context.
.
d Who has the greatest day-to-day variabilit y in screen time?
.
e Which person likely has high screen use most days, with some days of even higher
usage? This pattern might desc ribeacontentcreator,competitivegamer,orsomeone
with many online meetings.
.
f Which person’s data shows the most outliers or extreme values compared to their
typical pattern?
.
g If someone wanted to reduce their screen time, which person would find it easiest to
identify specific patterns to change?
.
A
C
B
D
Daily screen time (hours)
Daily screen time (hours)
Daily screen time (hours)
6 7 8 9 10 11 12
5
6 7 8 9 10 11 12
5
6 7 8 9 10 11 12
5
6 7 8 9 10 11 12
5
Daily screen time (hours)
2.2 Looking at the distribution: histograms and kernel density plots
Histograms
As the data sets begin to get larger, another form of data visualization comes into play, the
histogram. In a histogram, we no longer show the individual data points. Rather, we divide the
data axis into evenly spaced intervals, called bins, and sort the data values into the bins. Then
we show the number of data points in each bin as a vertical bar erected over the interval that
defines that bin (Figure 2.8).
= 1.
18 CHAPTER 2 DESCRIBING AND PRESENTING DATA
￼
Figure 2.8 Histogram of the n = 100 data set in Figure 2.2, using a bin width
In order to make a histogram, we have to make two choices:
• a choice of cutoff points
• a choice of bin width
Choice of cutoff points The cutoff points are the left and right extremes of the histogram.
The most common rule is to use the minimum and maximum values of the data as the left and
right cutoff points, respectively.
An exception to this rule would be when we want to compare two histograms, which is
frequently done. In that case, we might want to insist that the two histograms have the same
cutoffpoints,sothedifferencesbetweenthetwodistributionsareobvious. InFigures2.8 to 2.12,
for example, we are using constant cutoff points of 80 and 160. The choice of cutoffs has a
large effect on the shape of the histogram.
Choice of bin width The bin width is the other critical choice. It has a radical effect on the
shape of the histogram. It is useful to experiment with a variety of bin widths; each choice of a
bin width brings out some features of the data and suppresses others. For example let’s begin
with a histogram with bin width = 1 (Figure 2.8). Notice that there is a lot of fine structure in
the histogram. There are gaps in the histogram at 102 and 131, as well as other places, a dip
at 119, and a tall peak at 123. But do these mean anything? Or are they just accidents, due
to the fact that any sample of 100 numbers between 80 and 160 will have some gaps, dips and
peaks? For this reason, it is not a good idea to have too many bins; here we have 100 data
points and 80 bins.
When we double the bin width to 2, there are still “too many” bin s, which produces a number
of random gaps and peaks (Figure 2.9). There is no reason to think that these gaps and peaks
have any meaning.
2.2 LOOKING AT THE DISTRIBUTION: HISTOGRAMS AND KERNEL DENSITY PLOTS 19
￼
Figure 2.9 Histogram of the n = 100 data set in Figure 2.2, using a bin width = 2.
It is only when we get to a bin size = 5 that these random fluctuations are suppressed, and
the resulting bins are large enough to give us a better picture of the data (Figure 2.10).
￼
Figure 2.10 Histogram of the n = 100 data set in Figure 2.2, using a bin width = 5.
We see that the distribution is unimodal (single-humped) and roughly symmetric. We also
see that the left and right tails are tapered and thin. (We should note that we are dismissing
the thin peaks and gaps as “random” as we smooth out the histogram. We could eventually
discover that there really was a peak at that point, but we would need a much larger data set
to argue that.)
= 10.
20 CHAPTER 2 DESCRIBING AND PRESENTING DATA
A bin size = 10 confirms these observations (Figure 2.11).
￼
Figure 2.11 Histogram of the n = 100 data set (Figure 2.2), using a b in width
But when we take our bin size = 20, we are beginning to lose key features of the distribution.
The gentle tapering from the center to the tails is now lost, and virtually all data are in the two
middle bins. We have lost information about the distribution (Figure 2.12).
￼
Figure 2.12 Histogram of the n = 100 data set (Figure 2.2), using a bin width = 20.
21
of the data.
2.2 LOOKING AT THE DISTRIBUTION: HISTOGRAMS AND KERNEL DENSITY PLOTS
The choice of bin width depends on the number of data points. There are some simple rules
of thumb for choosing bin width. Generally , instead of talking about bin width, we will talk about
the inverse, which is the number of bins. Obviously,
bin number =
datamax− datamin
bin width
The two most popular rules for choosing bin number are:
• square root rule: choose the smallest whole number bigger than or equal to n, where
n is the number of data points.
• Rice rule: choose the smallest whole number bigger than or equal to 2× (n1/3).
In this case, where n = 100, the square root rule gives a bin number of 100= 10, while the
Rice Ru le gives a bin number of 2× (1001/3) ≈ 9.3, also requiring 10 bins.
There are other more sophisticated rules, that tak e into account the variability
Example 4 Earthquakes in or around California
California sits on the San Andreas Fault, and earthquakes have long been a pr oblem. The
state monitors and records seismic activity.
Here is a histogram of earthquakes recorded in the 7 day period ending on September 30,
2021. There were 976 earthquakes recorded during this time, measured in Richter scale. We
chose the bin size to be 0.5 on the Richter scale for the histogram. The count of earthquakes
that fall into each bin is shown on top of each bin.
Magnitude (Ritcher scale)
11
350
‒1 0 1 2 3 4
Count
115
343
278
137
61
18 10 3
976 earthquakes on this map
Sep 30 2021
1
2
3
4
5
6
7
?
LAST HOUR
LAST DAY
LAST WEEK
100 km
100 miles
Question In this data set, what percentage of the earthquakes had magnitude between 0.5
and 2.0 in Richter scale?
Answer From the histogram, we see that there are 3 bins between 0.5 and 2.0:
bin [0.5, 1)
• bin [1, 1.5)
• bin [ 1.5, 2)
•
The count of earthquakes that fall into those 3 bins are 343, 278, and 137, respectively.
Adding them together, we get the total number of earthquakes between magnitude 0.5 and
22 CHAPTER 2 DESCRIBING AND PRESENTING DATA
2.0, which is 343 + 278 + 137 = 758, while the total number of earthquakes is 976. Therefore,
the percentage of the earthquakes had magnitude between 0.5 and 2.0 on the Richter scale
is 77.7%.
% of earthquakes between 0.5 and 2.0 =
343 + 278+ 137
976 = 77.7%
Magnitude (Ritcher scale)
350
‒1 0 1 2 3 4
Count
343
278
137
bin
0.5 - 1
bin
1 - 1.5
bin
1.5 - 2
Question From this histogram, can you tell the exact percentage of earthquakes that had
magnitudes between 1.8 and 3.0 on the Richter scale?
Answer No, you cannot tell the exact percentage of earthquakes that had magnitudes be-
tween 1.8 and 3.0. The reason is that the lower end of the range in question, 1.8, doesn’t
lie exactly on the edge of any bins. This is one of the shortcomings of histograms.
The most we can get out of this histogram is by rounding 1.8 up and down to 1.5 and
2.0, and calculate the percentages of earthquakes between range 1.5 – 3.0 and range 2.0 –
3.0 on the Richer scale.
% of earthquakes in bin [1.5, 3) =
137 + 61+ 18
976 = 22.1%
% of earthquakes in bin [2, 3) =
61+ 18
976 = 8.1%
We can state that the percentage of earthquakes that had magnitudes between 1.8 and
3.0 on the Richer scale is more than 8.1% and less than 22.1%.
Question Can you tell the min and max magnitude of ea rthquakes of this data set from the
histogram?
Answer No, you can’t. This is another shortcoming of histograms.
Question As you continue to update the histogram every time there is a new earthquake,
and the next has a magnitude of 2.3. Which bin would need to be updated?
Answer Based on the binning we chose for this histogram, an earthquake with a magnitude
of 2.3 falls into the bin [2, 2.5). Hence, bin [2, 2.5) needs to be updated by increasing the
count number by 1, from 61 to 62.
23
2.2 LOOKING AT THE DISTRIBUTION: HISTOGRAMS AND KERNEL DENSITY PLOTS
Exercise 2.2.1 You are given the following data set:
{100, 97, 114, 95, 100, 86, 104, 113, 102, 125, 109, 106, 105, 106, 99}
a Construct a histogram for the data set using the provided bins (thick lines are the bin
limits).
.
The data are length measurements in mm. Correctly label both axes.
b.
Y-label
X-label
0
1
2
3
4
5
6
7
85 90 10095 105 110 115 120 125
Exercise 2.2.2 The following four histograms are based on the recorded time intervals be-
tween eruptions of the Old Faithful geyser, with different bin widths.
a Which would you choose to represent the data and why? What does the bin rule say?
Do you agree?
.
b Based on your choice, describe the data set.
.
Count
Count
Count
Count
A B
C D
Time between eruptions (min) Time between eruptions (min)
Time between eruptions (min) Time between eruptions (min)
40 50 60 70 80 90 100 40 50 60 70 80 90 100
40 50 60 70 80 90 100
40 50 60 70 80 90 100
0
25
50
75
100
0
25
50
75
100
0
10
20
0
10
20
30
40
24 CHAPTER 2 DESCRIBING AND PRESENTING DATA
Exercise 2.2.3 Which histogram is right-skew ed? Which histogram is bimodal?
Count
10 12 14 16 18 20
x
0
5
10
Count
10 12 14 16 18 20
x
0
5
10
Count
10 12 14 16 18 20
x
0
5
10
Count
10 12 14 16 18 20
x
0
5
10
A B
C D
Exercise 2.2.4 Which histogram matches the beeswarm plot?
12 14 16 18 20 22 24
10
Value
12 14 16 18 20 22 24
10
Value
Count
Count
0
5
10
12 14 16 18 20 22 24
10
Value
Count
0
5
10
A B
12 14 16 18 20 22 24
10
Value
0
5
10
12 14 16 18 20 22 24
10
Value
Count
0
10
20
C D
Normalized histograms
So far, the histograms we’ve been making are of raw counts. The height of each bin represents
the number of observations or data points that fall into that bin, and the Y-axis is “counts”.
There is another variant of this standard histogram, that is also frequently used. It’s called a
PLOTS 25
2.2 LOOKING AT THE DISTRIBUTION: HISTOGRAMS AND KERNEL DENSITY
normalized histogram. In a normalized histogram, the height of each bin represents the fraction
of the total observations that fall into that bin. The Y-axis is therefo re “fraction of total counts”.
Note that the shape of the histogram doesn’t change, just the units on the Y-axis (Figure 2.13).
￼
Figure 2.13 Turning a standard histogram into a normalized histogram.
Since the bin heights represent fractions of the total observations, it follows that the sum
of all the heights must equal to 1.
Example 5 Distribution of generations: comparing the US and the UK
Here are two histograms showing the age distributions of the US and the UK in 2020,
with a bin size of 10 years. By looking at the histograms, we can see that the population
distributions by age of the two countries are very similar, even though there are almost five
times as many Americans as Britons. Standard histograms like those show the raw count of
people fall into each bin. For example, we can read out the number of 70 year olds in the US
(24.7 million), and the number of 70 year olds in the UK (5.8 million).
0
2
4
6
8
0
10
20
30
40
10 20 30 5040 60 70 80
0 90 100 100+
Count
(in millions)
Count
(in millions)
Age
10 20 30 5040 60 70 80
0 90 100 100+
Age
24.7M
5.8M
Question Which country has relatively more 70 year olds?
Answer This question is hard to answer from the histogram of counts. It is best answered by
constructing a normalized histogram, in which w e show not the numbers in each age group,
but the fractions of the total population that each age group claims.
From the normalized histogram, we easily read off that that people in their 70s constitute
7.5% of the US population and 8.6% of the population in the UK.
26 CHAPTER 2 DESCRIBING AND PRESENTING DATA
Fraction of
total (%)
0
2
4
6
8
10
12
14
10 20 30 5040 60 70 80
0 90 100 100+
Age
10 20 30 5040 60 70 80
0 90 100 100+
Age
7.5%
8.6%
Fraction of
total (%)
0
2
4
6
8
10
12
14
Example 6 Population pyr amid
The age and gender structure of a country’s population can be illustrated graphically by
a population pyramid. A population pyramid is essentially two vertical histograms, the male
and female age distributions, put side by side with a shared Y-axis. In a vertical histogram,
the horizontal and vertical axes are switched; the X-axis is the count o r fraction of total, and
the Y-axis is the age. The left side of the pyramid is usually the male age distribution and
the right side is the female. The shape of a country’s population pyramid tells a story about
the history of its population growth.
Here are three population pyramids A, B and C for three different societies.
10
0 2 4 6 8
10 24
68
0 2 4 6 8 10
10 24
68
0 2 4 6 8 10
10 24
68
Fraction of total (%)
Fraction of total (%) Fraction of total (%)
Age groups
A B C
male female
Question Comment on the shape of each distribution, and what does each one tell you
about its demographical trend?
Answer Judging from the shape of each population pyramid, we can see that:
Society A has roughly equal male and female populations. It is mostly composed of
middle-age people, with almost equal percentages across all ages. The bottom is getting
narrower and narrower, meaning there are fewer and fewer children born every year than
the year before, and therefore lower and lower fertility rate. It tapers off gently towards
the top, meaning people live to a long age, and the society’s mortality rate is very low
as well.
PLOTS 27
(lower).
2.2 LOOKING AT THE DISTRIBUTION: HISTOGRAMS AND KERNEL DENSITY
Society B also has roughly equal male and female populations. Its population pyramid
is wide at the bottom and narrow at the top. It is largely composed of young people,
teenagers, and babies. The fertility rate is high and the mortality rat e is high as well.
There are more and more children born every year than the year before. People die early
in this society.
Society C also has roughly equal male and female populations. Its age structure graph is
extremely wide at the bottom, showing that its population is mostly composed of young
people, teenagers, and babies. For example, by eyeballing, we can see that the under
5 year olds in Society C are about 9 percent of the total population. The population
pyramid gets wider and wider in each younger generation means that every year mo re
children have been born than the year before. The population pyramid tapers sharply
at the top, much faster than both A and B, implying that people die early and few can
make to middle age. In Society C, both the fertility and mortality rates are extremely
high.
Cumulative histograms
Since the histogram can be very sensitive to the choice of bin width, a more robust presentation
is sometimes used: the cumulative histogram, in which each bin is given a height which is not
the number of data points in that bin, but rather the number of data points in all bins less than
or equal to it.
Thus it is keeping a cumulative sum, and the height of the rightmost bin will be equal to the
total number of data points (Figure 2.14).
￼
Turning a standard histogram (upper) into a cumulative histogram
Figure 2.14
285
200
100
300
0
Number of calls
230
125
60 50 50
Wait time (minutes)
0 5 10 15 20 30
25
28 CHAPTER 2 DESCRIBING AND PRESENTING DATA
Cumulative normalized histograms
Just as we can make cumulative histograms of counts, we can also make cumulative histograms
of normalized fractions. In a cumulative normalized histogram, each bin is given a height which
corresponds to the fraction of the data values in all bins less than or equal to it. Thus it keeps
a cumulative sum of normalized fractions, and the height of the rightmost bin will be equal to
1 (or 100%).
Exercise 2.2.5 Here is a histogram of waiting times of 800 calls to a hospital in a week.
a Make a cumulative histogram using the left Y-axis as the cumulative total. Fill the axis
ticks as needed.
.
b Make a cumulative normalized histogram using the right Y-axis as the cumulative total.
Fill the axis ticks as needed.
.
X-label
Y-label 1 Y-label 2
Kernel density estimates
Another way to look at the distribution of the data is to make what is called a kernel density
plot (KDE). We want to estimate the shape of the distribution, and a good way to do that is
to use a set of simple (“kernel”) functions to represent each data point, and then let the kernel
functions widen so they “melt together” or blend to make a picture of a continuous distribution
that represents the data set.
Kernel density estimates are like sm oothed versions of histograms.
There are several different kernel functions we could choose: they could be little triangles,
little rectangles, or little smooth curves like the “bell curve” Y = e−X 2/σ. The key is that each
of these functions has a parameter that controls its width. In the case of little rectangles or
29
2.2 LOOKING AT THE DISTRIBUTION: HISTOGRAMS AND KERNEL DENSITY PLOTS
triangles, the parameter is the width of the base, and in the case of the bell curves, t heparameter
is σ: the bigger the σ, the wider the curve (Figure 2.15).
To form a kernel density estimate, we start with narrow kernel functions, so narrow that each
kernel surrounds one data value. Then we let the width get slowly bigger and bigger until the
many little curves have merged intoasinglesmoothcurve. As σ getsbigger,thenarrowerkernels
‘melt’ into a smoother function. This is called a kernel density estimate of the distribution.
Here we will use bell curves as our kernel functions (Figure 2.15).
￼
Figure 2.15 Two kernel density estimates of a data set (red dots, n = 6). Left: a smaller σ
gives a narrow kernel function. Right: a larger σ gives a wider kernel function. Upper row: kernel
function shape. Middle row: separate kernel functions. Lower row: sum of kernel functions gives
the kernel density estimate (black line).
If we carry out kernel density estimates for the n = 100 data set, we see that the shape of
the overall estimate depends strongly on the choice of kernel width (Figure 2.16).
For σ = 0.4, the kernel functions are so narrow that even when added together, they hardly
overlap, and so produce a sum that has many jagged peaks that carry little information. A
similar statement can be made about σ = 1. Even σ = 2 has a waviness to it whose information
value is problematic: is it truly a property of the distribution, or is this because any sample of
100 points and σ = 2 will have some waviness to it? Only for σ = 3 do we begin to see a
smoother distribution.
30 CHAPTER 2 DESCRIBING AND PRESENTING DATA
Figure 2.16 Kernel density estimates (black lines) for the same data set (blue dots), using
four different widths for the kernel function.
PLOTS 31
2.2 LOOKING AT THE DISTRIBUTION: HISTOGRAMS AND KERNEL DENSITY
Exercise 2.2.6 Consider the follo wing data set
The left column shows four kernel functions with four different choices of σ. The right column
shows kernel density estimates for the same data set (red dots on the horizontal axis). All 8
plots have the same scale.
a Rank σA, σB, σC and σD.
.
b Match the kernel function with the corresponding kernel density estimate.
.
3
4
1
2
A
σA
B
σB
C
σC
D
σD
Obviously, the choice of kernel width is crucial to the appearance of a KDE; a very narrow
kernel width will just give us many little bumps, one around each data point. Not very helpful! A t
the other extreme, choosing too large a kernel width will just give us a big bell curve, regardless
of the original distribution. This is also misleading.
So how to choose a kernel width? There are many technical research papers debating
different strategies for choosing kernel width. We will use the strategy that is built into the
Python library scipy, called gaussian_kde. But please note that, according to scipy.org:
“gaussian_kde ... includes automatic kernel width determination. The estimation
works best for a unimodal distribution; bimodal or multi-modal distributions tend to
be oversmoothed.”
As a glimpse into the problem of KDE oversmoothing, consider the interesting example in
Jones et al. (1996) “A brief survey of bandwidth selection for density estimation”.
32 CHAPTER 2 DESCRIBING AND PRESENTING DATA
￼
Figure 2.17 Gaussian Kernel Density Estimates showing the distribution of n = 202 measure-
ments of Lean Body Mass (LBM) from the Australian Institute of Sport Data, using various
data-driven bandwidth s: hROT, hLSCV, hBCV and hSJPI. The strongest suggestion of bimodality
is given by hSJPI. See Jones et al. (1996).
In their study, a single data set of 202 measurements of lean body mass is rendered into
four different KDEs, based on different ways of calculating the kernel width (also called the
bandwidth) (Figure 2.17). See their paper for the details of how the methods differ. The two
on the left are heavily smoothed, and the one at the top right is very spiky, indicating what
could be spurious peaks in the distribution. But consider the KDE on the bottom right. There
is a strong suggestion of some kind of bimodality, with a secondary peak on the right. As it
turns out, the authors tell us, this is the best presentation of the data, because the actual data
is not a single distribution, but rather, is two distributions, one for females and one for males,
superimposed on each other (Figure 2.18).
Since the scipy KDE function tends to oversmooth, we should definitely experiment with
some hand-set values of the kernel width.
As we experiment, we have to be very careful about not getting too excited by bumps in
the KDE until we have satisfied ourselves that they are meaningful, and not just artifacts of the
smoothing procedure.
33
LBM (kg)
25 50 75 100 125
Probability density
0
0.01
0.02
0.03
0.04
Female Male
2.2 LOOKING AT THE DISTRIBUTION: HISTOGRAMS AND KERNEL DENSITY PLOTS
Figure 2.18 Kernel Density Estimates using hSJPI (for full population), based on subpopula-
tions of n = 102 females (red line) and n = 100 Males (blue line). The black line represents
the combined data set. This verifies that the bimodal structure in Figure 2.17 was an important
feature of the data worth deeper investigation.
Example 7 Vaccination rates in the US
In Example 3 on page 16, we looked at a dot plot of US state-by-state vaccination rates.
There was an impression that they fell into two subgroups. This impression is now confirmed
by a KDE, which is clearly bimodal.
0
0.02
0.04
US vaccination rates by state
40% 50% 60% 70% 80%
US vaccination rates by state
40% 50% 60% 70% 80%
Probability
density
beeswarm plot
KDE
Violin plot Finally, another version of the kernel density plot that is widely used is the violin
plot. To make a violin plot, take a kernel density estimate, form its mirror image, and then glue
the two together along the flat sides to make a symmetric figure (Figure 2.19). Violin plots
help to visualize the distribution of the data.
34 CHAPTER 2 DESCRIBING AND PRESENTING DATA
￼
Figure 2.19 Violin plots for the same data set (top blue dots), using four different widths for
the kernel function.
35
0
Value
A B C
5
10
15
20
yi
y1
y2
y3
⋮
subject i xi
1
2
3
⋮
x1
x2
x3
⋮
yn
n xn
2.2 LOOKING AT THE DISTRIBUTION: HISTOGRAMS AND KERNEL DENSITY PLOTS
Violin plots are especially useful when we need to compare two or more groups, repres ented
by different distributions, a subject that will be discussed in Chapter 6 Comparing Two Groups
and Chapter 7 Comparing Three or More Groups.
As a sneak peek into group comparisons, consider three groups, which we will call A, B and
C. They all have the same mean value, namely, 10. But they are very different. The differences
become clear when we present them as three violin plots side-by-side (Figure 2.20).
Figure 2.20 Violin plot presentation of t hree groups side by side.
KDE surfaces in 3D So far, we have been thinking about a single data set {x1, x2, ...,
xn }. If we visualize these data as points in X -space, we can then put kernel functions around
those points on the X -axis and build up our KDE curve. But what if we have not just one
measurement X of the subjects 1, 2, ..., n, but another one Y , so that we now have a data
set which is n pairs of (X -value, Y -value) (Figure 2.21).
Figure 2.21 Bivariate data set presented in a tabular format.
Data sets with two values for each subject are called bivariate data sets. We will study some
measures of them in Chapter 9 .
For now, we will try to visualize the distributions of these data sets with KDE functions.
First of all, we have to realize that in 1D (univariate) data, our kernel functions were bell-shaped
curves, now in 2D bivariate data sets, our kernel functions have to be bell-shaped surfaces.
These KDE surfaces can give us very insightful pictures of bivariate data sets. Let’s take
the data set shown in Figure 2.22.
36 CHAPTER 2 DESCRIBING AND PRESENTING DATA
Figure 2.22 An artificial example of an (X , Y ) data set that has three clusters.
Then applying scipy’s gaussian_kde to the bivariate data set gives us the KDE in 3D
(Figure 2.23). The Z -axis is the probability density; the height of the KDE graph shows the
probability density at any given (X , Y ) pair. (Because this a probability density function, the
total volume under the surface is 1.)
Figure 2.23 KDE plot of the data in Figure 2.22.
PLOTS 37
2.2 LOOKING AT THE DISTRIBUTION: HISTOGRAMS AND KERNEL DENSITY
2D KDE using color instead of height Our first real world example is one in which the X-
and Y -axes are measurements done on plants: the “Iris Dataset”1
, a collection of data originally
presented in The use ofmultiplemeasurementsintaxonomicproblems (Fisher, 1936). It actually
has four different measured values for each of 50 plants of three different species. Here we show
a KDE estimate of just two of the measurements, for just two of the three species, shown in
red and blue (Figure 2.24).
￼
Figure 2.24 2D KDE of sepal width and sepal length from the Iris Dataset. Red and blue are
two different species. Darker colors denote higher values.
Notice how we can distinguish the two species clearly using the bivariate descriptor, a task
that would be much harder using only one measurement alone.
Another important example of 2D KDE plots is in the rapidly growing subject called Geospa-
tial Analysis. The use of Geographic Information Systems (GIS) gives us many high-qualit y data
sets, where the X and Y measurements are the longitude and latitude of particular points of
interest.
We can then make a KDE of that data to show the density of whatever feature we can
map, using color or height or both to show the density of the objects of interest. A nice
example can be found in “A web-based geospatial toolkit for the monitoring of dengue fever”
(Applied Geography, 2014). The authors created first a point map of locations of dengue cases
(Figure 2.25 left), and then a KDE of the density of dengue cases, using color to show the third
dimension. Notice an important fact: the KDE, on the right, very clearly shows the existence
and location of “hotspots” of dengue, which can be important clues to the epidemiology of the
disease.
A note to students: Two-dimensional KDE estimates are a highly advanced topic, some-
thing you might expect to see in a second or even third course in data science. We are
introducing this very early because it’s an important method of data visualization for bivariate
data. You will now be in a position, when you go interview for that lab research position, to
1 https://archive.ics.uci.edu/ml/datasets/Iris
mpressive.
38 CHAPTER 2 DESCRIBING AND PRESENTING DATA
say “Oh yes, I can do bivariate kernel densit y estimates in Python”. This is i
￼
Figure 2.25 A point map of locations of dengue cases on the left and the KDE on the right.
How to look at distributions
When we were looking at dot plots and beeswarm plots, which are directly plotting all the data,
we noted a number features to look for in those pictures:
• Skewness vs. symmetry
• Thick tails vs thin tails
• Outliers
• Subgroups
Now that we are looking at pictures of the distribution, whether histograms or kernel densit y
estimates, the same features are important in these distribution plots:
• Skewness vs. symmetry: can still be seen in the distribution plots.
• Thick tails vs. thin tails: can also still be seen in the distribution plots.
• Outliers: Outliers make problems for distribution plots. If the distribution estimate includes
the outlying data points, it may distort the shape of the plot. On the other hand, it is not
correct to just reject the outlier point or points because they complicate the plot.
• Subgroups: We talked about the importance of recognizing subgroups when we looked
at a dot plot. Similarly, when we look at a distribution plot like a histogram or Kernel
Density Estimate, w e should look for subgroups, now in the form of somewhat distinct and
separate peaks. For example, in the middle data set in Figure 2.20, the violin plot shows
two distinct peaks. These peaks are also called modes, and so this distribution would be
called bimodal. Other distributions may have multiple peaks; these distributions are called
multi-modal distributions.
39
2.2 LOOKING AT THE DISTRIBUTION: HISTOGRAMS AND KERNEL DENSITY PLOTS
Defining bell-shaped Please note that in this entire section, we have been speaking only in
descriptive terms, based on our visual impressions of the data distribution. No numbers have
been invoked or used. All talk has been in terms of shapes: symmetry, size of tails, peaks, etc.
Now we are ready to go on, and talk about putting summary numbers on distributions.
However, there is one, all-important definition we need to make. We have already, in several
places, referred to certain curves as “bell-shaped”, without further definition. We will now make
a semi-rigorous definition of bell-shaped: we will say that a distribution is bell-shaped if it is
• Symmetric
• Thin tailed
• Unimodal
As we will see, the choice of descriptive statistics is relatively easy when the data distribution
is bell-shaped. However, we should never assume that a distribution is bell-shaped just because
that would make it easy to analyze! We must always look at the data.
Spatial mapping: John Snow and the invention of epidemiology
The example of the dengue map is an excellent modern-technology throwback to the most
famous spatial analysis map in medical history , which is the map made by John Snow of the
spatial pattern of cholera in London (Snow, 1855). In 1854, the city of London was struck by
an epidemic of cholera, an often fatal disease that is still around today. The prevailing theory
about the cause of cholera was that it was caused by foul air (“miasma”). Snow was a doctor
with good mathematical skills, and he was convinced that the “miasmatists” were wrong. So he
went out and actually gathered data on people who had contracted cholera.
He had the idea of plotting where the cases were on a local map (Figure 2.26), and imme-
diately realized that a lot of cases clustered near a public water source called the Broad Street
pump. The Broad Street pump, as was the practice back then, took its water directly from
the Thames River. In that period, the Thames was also used as a public sewage dump. Raw
sewage, including untreated human excrement, was dumped directly into the Thames upriver of
the pump.
Snow concluded that cholera was being transmitted by something in the foul water of the
Thames downstream from the sewage plant. This was the first great victory of epidemiology,
made possible by spatial analysis.
￼
￼
Figure 2.26 Left: section of John Snow’s original 1855 map. Black squares ■ are cholera
cases. Right: a modern day GIS rendering of the same data.
40 CHAPTER 2 DESCRIBING AND PRESENTING DATA
The introduction of data visualization: the sto ry of Florence Nightingale
Most school children are taught about Florence Nightingale as a caring nurse. Very few people
are aware that she played a pioneering role in the introduction of data visualization methods, as
told in a recent Scientific American article (Figure
Figure 2.27
While leading a medical expedition to the Crimean war in 1855 (Figure 2.28), Nightingale
became concerned about the number of soldiers who were dying due to non-combatant deaths,
especially preventable diseases due to poor sanitation.
￼
Figure 2.28 Nightingale, on horseback, surveying a battlefield in Crimea.
41
2.2 LOOKING AT THE DISTRIBUTION: HISTOGRAMS AND KERNEL DENSITY PLOTS
She gathered extensive data, but immediately realized that her audience, which was army
generals, politicians, and ultimately Queen Victoria, were not able to follow the data presenta-
tions that were standard at the time, namely, tedious tables (Figure 2.29 left). The politicians
and senior officers accepted high death rates for soldiers as something inherent in soldiering.
But Nightingale showed through an impressive visualization, that the overwhelming majority of
soldier deaths were from preventable diseases, far outnumbering deaths due to battle wounds
(Figure 2.29 right).
￼
Figure 2.29 Left: tables of mortality data, typical at the time. Right: Nightingale’s presen-
tation of the data distribution by month. In each wedge, the pink area in the center represents
battlefield-related deaths, the blue area represents deaths due to preventable diseases, and the
gray area represents deaths due to other causes.
As a result of her efforts in using data visualization to facilitate storytelling, the article
tells us that “mortality from preventable disease among soldiers declined to less than that in
the comparable civilian population”. Moreover, “the reforms Nightingale fought for were finally
codified in the British Public Health Act of 1875”.
1 2 4
3 5 6 7 8 9 11 13 15
10 12 14
0
0
1
2
3
4
5
6
7
Y-label
X-label
CHAPTER 2 DESCRIBING AND PRESENTING DATA
42
FURTHER EXERCISES 2.2
1 Given a data set with 15 data points. They are height measurements in feet.
.
{2.5, 8.9, 4.7, 11.1, 1.7, 6.3, 10.5, 0.3, 14.8, 13.2, 1.5, 2.9, 1.2, 7.4, 5.9}
a Draw a histogram representing the data set. Here we choose bin width to be 3 and
the bin limits are solid lines.
.
b Label both axes on the histogram.
.
2 The age and gender structure of a country’s population can be illustrated graphically by
a population pyramid. Here are three population pyramids of three different societies A,
B and C. For each population pyramid, the left histogram is the male population and the
right is the female population. Comment on the shape of each distribution, and what you
can learn about each society’s demographical trends.
.
10
0 2 4 6 8
10 2468
0 2 4 6 8
2468
0 2 4 6 8
2468
Fraction of total (%)
Fraction of total (%) Fraction of total (%)
Age groups
A B C
3. Figures in the left column show the daily new cases of Covid-19 in countries A, B, C, D
and E from the beginning of the pandemic till August 2021. Figures in the right column
show the total confirmed cases of those five countries during the same time period. Match
each daily new cases graph on the left with the corresponding cumulative total cases graph
2.2 LOOKING AT THE DISTRIBUTION: HISTOGRAMS AND KERNEL DENSITY PLOTS 43
on the right. (The countries A, B, C, D, E a re China, New Zealand, South Africa, India,
Poland.)
t (days)
N
(new cases per day)
t (days)
P
(total cases)
A
B
C
D
E
1
2
3
4
5
4 Water supply and cholera epidemic. During the London cholera epidemic in 1854, John
Snow’s investigation identified the following data between water supply companies and
cholera occurrence.
.
a Based on the data, which company is more likely to be transmitting “morbid matter”
and causing cholera?
.
b Choose a data visualization to present your finding.
.
Water Supply Company Number of Houses Cholera Deaths Cholera Deaths per
10,000 H ouses
Southwark and Vauxhall 40,046 1,263 315
Lambeth 26,107 98 38
Rest of London 256,423 1,422 55
5 Lead exposure in early childhood. Lead is a developmental neurotoxin. A study was carried
out to understand the extent of the US population exposed in early life to high levels of lead,
and the true social costs and benefits of lead regulation (see article “Half of US population
exposed to adverse lead levels in early childhood”, PNAS, 2021).
.
44 CHAPTER 2 DESCRIBING AND PRESENTING DATA
The study presented the following result. Describe the types of data presentation in each
graph and their pros and cons. What’s your conclusion from reading their results?
0
1M
2M
3M
4M
Age
Population
Age Distribution: 2015
0%
25%
50%
75%
100%
% of Population
Relative Distribution by Age: 2015
30+
25–29.9
20–24.9
15–19.9
10–14.9
5–9.9
0–4.9
Early Life
Blood−Lead Levels
(µg/dL)
0 20 40 60 75
Age
0 20 40 60 75
2.3 SUMMARIZING A DATA SET: “MEASURES OF CENTRAL TENDENCY” 45
2.3 Summarizing a data set: “measures of central tendency”
Suppose we want to describe the whole data set, that is, the whole set of numbers, by one
summary (or representative) number. There are a variety of reasons why we might want to
do this. A single number helps us to characterize the group, and makes it easier to compare
groups. But we have to be very careful about using a single “typical” number to characterize a
group. There are many cases where it’s a bad idea to describe the group with a particular single
number, and other cases where it’s a bad idea to use any single number at all!
The decision to describe the data set by a single number, and which number to use, is a
scientific choice that must be justified by the shape of the data distribution and the purposes
for which the number is needed.
The mean or average value
The most common choice of a typical number to describe a data set is the average or mean
value of the data. Suppose X is a data set that has n data points x1, x2, ..., xn , then
X = mean{x1, x2, ..., xn }=
1
n
(x1+ x2+ ··· + xn )=
1
n
n
i=1
xi
The mean is often written as µ or µX or xi, or X . All four symbols mean the same thing.2
Exercise 2.3.1 What number would you divide by to calculate the mean of 3, 2, 4, and 5?
Exercise 2.3.2 The mean of four numbers is 15. If three of the numbers a re 10, 15, and
15, what is the value of the fourth number?
Exercise 2.3.3 What is the mean of the following data sets?
data set A: 40, 40, 40, 40, 40
data set B: 0, 20, 40, 60, 80
data set C: 0, 0, 0, 0, 200
data set D:−10000,−10000,−10000,−10000, 40200
Exercise 2.3.4 Invent a data set (n = 5) whose average is 40.
The use of the average value is so widespread that it is done almost as a reflex. But it
is important to realize that there are many kinds of data distribution for which the average or
mean is a poor choice for a “typical value”.
Recall the example of the tax refunds, from the beginning of this chapter. We saw the word
‘average’, and got conned into believing that the “average” must be “typical”. But this is only
true for bell-shaped distributions, which the distribution of tax refunds is most definitely not.
(Why not?)
2 The mean of the data and the “population mean”. We are using the terms µX and X to mean the same thing,
namely, the average value of the sample X = (x1, x2, ..., xn ). In some statistics texts, these mean different things;
X is the sample average, and µX is the “true” mean of the underlying distribution from which X was drawn. We
do not make this distinction because, typically, we have no idea what “true” distribution the data are drawn from.
We have only our data.
46 CHAPTER 2 DESCRIBING AND PRESENTING DATA
Most distributions are not Normal
Far from the standard belief that “most distributions are bell-shaped”, the fact is that
most distributions of biological and social quantities are not bell-shaped. In a review paper by
(Bono et al., 2017), called “Non-normal Distributions Commonly Used in Health, Education,
and Social Sciences: A Systematic Review”, the authors began: “The data obtained in many
fields of health, education, and the social sciences ...clearly deviate from those of the normal
distribution.” They described one study that looked at 693 distributions from real data and
found that “most distributions were non-normal”, indeed, “only 5.5% of the distributions were
close to expected values under normality”.
We frequently encounter distribution shapes for which the mean is a poor descriptor. Here are
some warning signs. If you see them, carefully consider whether to use a mean as a descriptor.
Danger: bimodal data When data are clearly separated into two subgroups, the choice of
the mean value to represent them is a poor choice, since the mean value will be typical of no
one, and therefore mis-represents the data. Suppose, for example, we are making a graph of the
distribution of political opinions in some group. It turns out that this particular group is heavily
polarized, so there are lots of people on the Left and lots of people on the Right. Does it make
scientific sense to describe this group by saying “the average opinion is Centrist”?
There are many cases where the data are bimodal (two peaks), and it is generally a bad
idea to use the average to describe those groups. Fo r example, the disease Hodgkin’s lymphoma
tendstostriketwodifferentagegroups: peopleintheir20sandpeopleintheir70s(Figure2.30).
It would be a poor idea to say “the average age of lymphoma onset is about 45”.
￼
Figure 2.30 Age-specific rates of Hodgkin’s lymphoma. Data obtained from the Surve illance,
Epidemiology, and End Results Program Research Data (1973-2014).
For another example, freeway use depends on time of day: there are many users in the
morning and evening rush hours, making two peaks in the graph of “number of cars” vs. “time
of day” (Figure 2.31).
Would it make sense to say “The average time of freeway use is 1 pm”? This would be very
misleading. Indeed, any summary number would be un-helpful; we would do better to note the
number and magnitude and location of peaks, or lack thereof.
0
2000
4000
6000
8000
Hour of day
8am 5pm Midnight
0
Number of vehicles
47
2.3 SUMMARIZING A DATA SET: “MEASURES OF CENTRAL TENDENCY”
Figure 2.31 Histogram of number of vehicles at any given time of day.
For another example, consider a histogram of traffic speeds of vehicles driven on a major
highway in a day (Figure 2.32). The speed limit at this location is 60 miles/h.
However, note the significant number of vehicles traveling at a speed below 30 miles/h,
indicating congestion!
￼
Figure 2.32 Histogram of traffic speed of vehicles driven on a major highway in a day. The
speed limit at the location is 60 miles/h.
The histogram gives us a valuable information about the data. We should not rush
to summarize histograms b y single numbers! Stare at the histograms, they are telling you
important things.
Danger: skewed data When the data are skewed to the left or right, it is also a bad idea to
use the average value to summarize it. This is because, in the process of averaging, the more
extreme data values, out in the tail, will tend to pull the average out. Therefore, in a skewed
distribution, the mean tends to lie not in the main body of the data, but is pulled out toward
the tail.
This can be seen in the distribution of US household incomes (Figure 2.33). It is strongly
skewed to the right. As a consequence, the mean household income, $88,439, is well into the
top 50% of the distribution, that is, well above the median. Clearly, it would be misleading to
48 CHAPTER 2 DESCRIBING AND PRESENTING DATA
present the mean income to describe this data set. To say “the average US household income
is around $90,000” presents a very different picture of the US economy than to say “Half of US
households earn less than $67,000”.
￼
Figure 2.33 Distribution of US Household incomes in 2015.
Danger: outliers This is especially true of the extreme form of skew that is seen when there
are outliers. If a billionaire happens to be sitting in a classroom of 100 typical students, then
can we really say that the average personal wealth in that classroom is $10 million? This is not
a useful or representative number.
For example, consider the distribution of life expectancies across the 44 countries in the
Organisation for Economic Co-operation and Development (OECD). It is obviously sk ewed to
the left, and, in addition there is an outlier on the low end, namely South Africa (Figure 2.34).
￼
Figure 2.34
Clearly, it would be a poor idea to construct an “average life expectancy” of all the OECD
countries, since the South Africa data point will strongly influence that average, and pull it down.
But it is also important that the simple use of a single number also does not do justice to the
case of South Africa or India (the second most extreme outlier).
49
2.3 SUMMARIZING A DATA SET: “MEASURES OF CENTRAL TENDENCY”
When we dive deeper and look at life expectancy in South Africa, we are immediately struck
by another fact: the very idea of “life expectancy” is itself questionable! That’s because life
expectancy is defined as an average: the average life span. But the actual distribution oflifespans
inSouthAfrica ismarkedly bimodal, withalargepeakat0-1year, representingsubstantialinfant
mortality. This has pulled down the average life span, hence the life expectancy (Figure 2.35).
￼
Figure 2.35 Histogram of reported age at death in South Africa, 2014. The bin width is 5
years. Within the first bin, we have shown a further breakdo wn of the data, with a bin width of
1 year. (Data from World Health Organization Mortality Database.)
Another striking feature of the histogram for South Africa is that there is a large increase in
deaths beginning at age 30, due to the HIV/AIDS epidemic.
Exercise 2.3.5 Download other countries’ demographics data from the WHO Database
Website and compare them to each other and South Africa.
Danger: uniform data When the data is distributed fairly uniformly over its range, the average
value is also not typical in any sense. Suppose we look at the age distribution of the US
(Figure 2.36). We see that every decade of age (0–10, 10–20, etc.) has about the same
number of people, up to the age of 60. Would it make sense to sa y “the average age of this
group is 40?” That statement is true, of course, but is it good science to describe the group in
this way?
￼
Figure 2.36 Histogram of the ages of the US population in 2016.
Does your data distribution look like this?
If not, proceed with extreme caution!
50 DESCRIBING AND PRESENTING DATA
CHAPTER 2
When is it OK to use the mean?
When is it OK to use the mean to describe a data set? We can set out a rule of thumb.
Let’s say that a distribution is “bell-shaped” if it is
• symmetric
• single humped
• thin tailed
then our rule of thumb is that when a distribution is bell-shaped, the use of the mean value
to describe the data is OK, keeping in mind all the problems of describing a data set by any
single number.
The “Flaw of Averages”
We have just discussed for which types of distributions it is “not OK” to use the mean value,
and we’ve so rt of implied that for the others, such as bell-shaped distributions, it is “OK” to use
the mean.
Why a single number at all? But that presupposes a deeper question: why are we using a
single number at all to represent a whole population? Why a re we suppressing the variability of
the data and insisting that it be represented by a single number?
This is a deep philosophical question, that has an interesting history. Why do we need to
summarize the data in this way? Why a single number?
One factor that has contributed to the growing use of single number summaries is that
the use of single number summaries, and the mean in particular, grows out of the social and
corporate need to process large populations mechanically (Ziliak and McClosk ey, 2008). With
the rise of industrial science and medicine after WW2, the need for summary measures was
created by the need for evaluation of large programs and populations. Managers say “Give me
a single number”, for reasons of expedient processing:
1 we need a single number because our Medical School receives ∼15,000 applications, out
of which only∼200 will be accepted
.
2 we need a single number because we have to decide which 15% of professors should get
their grants funded
.
3 we need a single number because we have to evaluate hundreds of programs
.
It is important to note that these are not scientific considerations. They are industrial or
programmatic or manager ial or social, but they are not scientific requirements.
The obsession with the average These non-scientific pressures created a national obsession,
peaking in the 1950s, about the “average” value of populations. The story of the obsession was
remarkably documented in Todd Rose’s article “When US Air Force discovered the flaw of
averages” (Rose, 2016).
The Flaw of Averages
In addition to displaying the sculpture, the Cleveland Health Museum began selling miniature
reproductions of Norma, promoting her as the “Ideal Girl,” launching a Norma craze. A notable
physical anthropologist argued that Norma’s physique was “a kind of perfection of bodily form,”
artists proclaimed her beauty an “excellent standard” and physical education instructors used
her as a model for how young women should look, suggesting exercise based on a student’s
deviation from the ideal. A preacher even gave a sermon on her presumably normal religious
beliefs.
Todd Rose
51
2.3 SUMMARIZING A DATA SET: “MEASURES OF CENTRAL TENDENCY”
He tells the story of cockpit design in US Air Force planes. In the early 1950s, the USAF was
suffering an appallingly high rate of pilot deaths, all attributed to “pilot error”. “After multiple
inquiries ended with no answers, officials turned their attention to the design of the cockpit
itself.” They took multiple measurements of 4,063 pilots, took their averages, and found that
no single pilot had the average measurements!
One pilot would have a longer-than-average arm length, while another had a shorter-than-
average upper body length, the distance from seat to shoulder. The variability was impressive.
Researchers concluded that the “average size fits all” approach could not work. When they
suggested the idea of adjustable controls for pedals, levers, etc., it was dismissed as absurdly
impractical by the manufacturers. But when the Air Force insisted on it, the airplane manufac-
turers developed adjustable seats and control surfaces, which of course we have in every car on
the road today.
“Norma”: the perfect woman? In Rose’s account, the obsession with the average became
a kind of national psychosis. “A doctor in Cleveland took the averages of dozens of body
measurements on thousands of women, and proclaimed that the averages represented the ideal
woman. They even had a sculptor make a statue, called “Norma”, based on these average
measurements. ...Norma was featured in Time magazine, in newspaper cartoons, and on an
episode of a CBS documentary series, This American Look, where her dimensions were read
aloud so the audience could find out if they, too, had a normal body.” (Figure 2.37).
￼
Figure 2.37 Norma, based on average measurements of size data collected from 15,000 young
adult women.
Of course, we find this laughably stupid today, but maybe not so laughable when you realize
that the doctor in question was Dr. RobertL.Dickinson,presidentoftheAmericanGynecological
Society and chairman of obstetrics at the American Medical Association.
B
A
C
A+
52 DESCRIBING AND PRESENTING DATA
CHAPTER 2
The story of Norma should be read and studied as a warning against the use of the “average”
to describe a population.
The psychosis of “the average” lent itself to what is probably the worst statistical idea of the
20th century: the idea that population variability is a kind of “noise” or “error”, and that we can
use the average value as representative of the distribution.
In traditional statistics courses, you will even see the formula
data = mean + error
which embodies two major fallacies (1) the idea that the mean is representative of the data set,
which of course is often false and (2) the idea that population can be represented by a single
number, with variability being “error”.
21st century statistics, by contrast, sees population variability as an important factor. Bio-
logical variability is not “noise” and it is not “error”. It is not a bug in the program, it’s a design
feature. Population variability and diversity play many important causal roles in evolution, for
example, as well as in the susceptibility to diseases. We have to resist the temptation to look
only at average values, and instead, we must focus on distributions. We’ll discuss measures of
the variability of a data set in section 2.4 Summarizing a data set: measures of variability.
Situations where averages shouldn’t be used
• Batting averages. In baseball and softball, a player’s batting average is the average
value of the player’s performance in their at-bats, with 1 meaning “got a hit” and 0
meaning “made an out”. So if a player had 120 at-bats and got 30 hits, their batting
average is 30/120 = .250.
Are batting averages a good measure of a hitter? Although this statistic was used
for many years to evaluate players, when data analytics became popular around the
year 2000, it wa s realized that it was a poor measure of the player, because it doesn’t
distinguish between critical situations and uncritical situations.
• Probably the worst average we can think of is the grade point average. First of all,
the distribution of one person’s grades is far from a Normal distribution: all values lie
between F and A+, with a “ha rd wall” at both ends. This makes the distribution highly
non-Normal: if you get a C in one class, you can’t get a grade beyond A+ to balance
the C.
Treating the average patient The flaw of averages, the idea that a population can be char-
acterized by an average value plus “error”, has disastrous consequences for clinical treatment.
A telling demonstration of this fact was shown by Kent and Hayw ard (2007), in their article
“When Averages Hide Individual Differences in Clinical Trials”. They showed the work of artist
Chris Dorley-Brown, who took 2,000 photographs of people living in a small town in England,
Figure 1. In the year 2000 artist Chris Dorley-Brown took 2,000 digital photos of people living in the small town of
Haverhill in Suffolk, England, and then used software to merge these photographs, step by step, until all 2,000
had been blended into one image. This illustration shows 12 double portraits (two photographs morphed togeth-
er) and a blend made up of all of the double portraits. (Dorley-Brown has left out the original portraits in order to
protect the privacy of the participants.) In the modern clinical trial, the responses to treatment of thousands of
individuals are typically summarized in a single number in the same way the center photograph represents all
the other individuals. As the data are averaged, important individual differences are lost. The authors propose
ways to better examine clinical-trials results to guide medical practice.
2.3 SUMMARIZING A DATA SET: “MEASURES OF CENTRAL TENDENCY” 53
and created a digital “average face” (center photograph in Figure 2.38). The average person is
neither male nor female, neither young nor old, and neither sick nor healthy. Medical therapy
tailored to the average person will miss many important clinical dimensions.
Figure 2.38 Reprint of Figure 1 from the article “When Averages Hide Ind ividual Differences
in Clinical Trials” by Kent and Hayw ard (2007).
Exercise 2.3.6 The R0 of an infectious disease is the mean number of new people infected
by a patient with the disease.
a Suppose two diseases have the same R0. What might this fact hide?
.
47.8%
classes with less than 20 students 20-49 50 or more
29.3% 22.8%
mean 11.6 10.5
Speculate on the possible significance of this for disease control.
54 CHAPTER 2 DESCRIBING AND PRESENTING DATA
b.
c During the COVID epidemic, U.S. states closely monitored their calculated R0, in order
to decide when and how to re-open non-essential businesses. Given your answer to (a),
what might be a problem with this approach for a larger state like California (pop. 40
million) versus a smaller state like Rhode Island (pop. 1 million).
.
Exercise 2.3.7 Universities often emphasize that they have a really small average class size.
Is that consistent with your experience or impression? If not, why do you think that’s so?
Here is a histogram of the class sizes at a typical university. The average class size is 18
people.
The median value
Another important descriptor of a data distribution, which is unfortunately sometimes confused
with the mean, is the median value. The median value is the midpoint of the data, the “middle
number”: 50% of the data lie below the median, and 50% of the data lie above it.
To calculate the median X of a set of n data points, rank the data from the lowest to the
highest value. If n is odd, then the median value is the middle value on the list. If n is even,
there is no “middle value” in the data set, so we use the standard convention and report the
median as the average of the middle two data values (Table 2.2).
n is odd n is ev en
data set {15, 8, 21, 4, 10} {15, 8, 21, 5, 4, 10}
15 + 8 + 21 + 4 + 10 15 + 8 + 21 + 5 + 4 + 10
5=
6=
ranked data set {4, 8, 10
↑ , 15, 21} {4, 5, 8
↑ , 10
↑ , 15, 21}
8 + 10
median 10 2
= 9
Table 2.2 How to calculate the median value of a data set.
Exercise 2.3.8 What is the median of the following data sets?
data set A: {76, 38, 4, 42, 41, 25, 39, 72}
data set B: {3, 7, 3, 2, 3, 4}
data set C: {3, 7, 3, 2, 3, 4, 1000}
Exercise 2.3.9 The front row in a movie theater has 19 seats. If you were directed to sit in
the seat that occupied the median position, which seat would you have to sit in?
Note that there is a big difference between the mean and median in terms of how they are
defined. There is a formula for the mean (see page 45). But there is no formula for the median;
55
2.3 SUMMARIZING A DATA SET: “MEASURES OF CENTRAL TENDENCY”
rather, there is a procedure for calculating it. This may seem like a minor difference, but it is
important: it means that it is relatively easy for mathematicians to prove theorems about the
mean, by operating on the formula, but it is much harder to prove theorems about the median.
Nevertheless, and despite the difficulty of proving theorems about it, the median has a
number of very helpful properties. One big difference between the mean and the median is
that the median is resistant to influence by outliers. If you put a billionaire into a room of 100
students, the average income changes dramatically, but the median income changes very little;
from the median’s pointofview, youarejustaddingonemorelargevalue, anditwouldn’tmatter
to the median if it was $10 more than the previously highest value, or $10 million more. Thus
it is often essential to use the median in the presence of data with outliers.
Indeed, whenever a distribution is skewed, the median may be a more informative measure
than the mean.
It follows from the definition of median that if the distribution is skewed to the right, then
the mean will lie to the right of the media n. And if the data are skewed to the left, the mean will
lie to the left of the median (Figure 2.39). How far away they are is a measure of how skewed
the data are. And if the data are symmetric (one of the requirements for bell-shaped), then the
mean and median are close.
￼
Figure 2.39
For example, consider the histogram of US household incomes, which is skewed to the right
(Figure 2.33). The mean household income is $88,439. The median income is much less, at
$66,615, meaning that half of US households earn less than that.
Reading out the median from a cumulative histogram We can directly read ou tthemedian
from the cumulative histogram, just as with Figure 2.40: we find the 50% point on the “count”
(vertical) axis, and draw a line across to see where it intersects the cumulative curve, in this
case that is the point $66,615.
The large difference between mean and median indicates t hat the distribution is heavily
skewed.
Percentiles
The median value is the midpoint of the data; 50% of the data lie below it and 50% of
the data lie above it. It is also called the 50th percentile. The kth percentile is the value in
the data set that has k% of the data values at or below it and (100− k)% of the data values
at or above it.
From the cumulative histogram, we can conveniently obtain any percentiles. For example,
to read out the 25th percentile, we follow the same procedure, and need only to find the 25%
point on the “count” (vertical) axis, so we draw a line across to see where it intersects the
cumulative curve and read out the corresponding X-value (as illustrated in Figure 2.40).
56 CHAPTER 2 DESCRIBING AND PRESENTING DATA
￼
Figure 2.40 Upper: Histogram of US household annual incomes. Lower: cumulative histogram
of the same data. Note markings for mean and median, as well as the cutoffs for the 25th and
75th percentiles.
Exercise 2.3.10 In Ex 2.3.7 on page 54, we were given the distribution for a Universit y’s
class sizes and the average class size.
a What can you say about the median class size? How doe s it compare to the average
class size?
.
b What can you say about the skewness of the distribution?
.
57
2.3 SUMMARIZING A DATA SET: “MEASURES OF CENTRAL TENDENCY”
The meaning of the mean and the meaning of the median
Whether to use the mean or the median as a descriptor is a choice that depends partly, but only
partly, on the shape of the distribution. It also depends on the purpose of our inquiry, and on
the very meaning of the terms “mean” and “median”.
It is certainly true that, for most purposes, if a distribution is sk ewed, then the mean is a
poor “typical value”.
There are many cases in which the median of a skewed distribution is a more informative
measure than the mean, because the median is directly interpretable as the “50% chance” point:
a data point has a 50% chance of falling below (or above) it.
Perhaps the best example would be survival data. A presentation that is frequently seen is
called a survival curve, which shows the number of people still alive after time t. It’s the inverse
of a normalized cumulative histogram showing death before time t. In a normalized cumulative
histogram, as we go from the left to the right along the X-axis, we start from 0% and add up
each bin and the rightmost bin has a value of 100%. Whereas in a survival curve, as the survival
time increases, the fraction of survivors decreases from 100% to 0.
For example, think about the distribution of survival times for cancer patients given a par-
ticular drug. As is frequently the case with survival data, the data a re skewed to the right, with
a few patients surviving a long time. The long-surviving patients pull up the average survival
time.
The biologist Stephen J. Gould was diagnosed with cancer, and asked his doctor what was
his likely survival. The doctor said “well, the average survival with this type of cancer is x years.”
Gould went home and thought about it, and he realized that the mean survival time told him
nothing of value, no fact he could use (just like the case where you learned that the average tax
refund will be $40 more). If, for example, most patients die within months but a handful live 10
or more years, what you want to know is the median survival time, which is directly interpretable:
it tells you that you have a 50% chance of living this long.
Consider the survival curves for Hodgkin’s lymphoma, broken down into distinct age groups
(Figure 2.41). The median survival time decreases dramatically with increasing age: for the
20–40 age group (red), the median survival time is 13 years, whereas for the 60–80 age group
(green), it is less than 5 years. Note how much the means are pulled towards the right due to
the right skewed distributions.
The choice of mean or median can also reflect your interest in this particular data set. For
example, if you are applying to work for a company, what you want to know is not the mean
salary. One reason for this is that salaries are notoriously skewed to the right, so if the CEO
makes hundreds of millions and everyone else makes minimum wage, the average salary would
be pulled very high. But there’s another reason for wanting the median, which has to do with
your purpose in looking at this salary data. If you are thinking about w orking for the company,
the median salary would be much more informative to you: it’s some guide to what you’re likely
to be paid. But from the point of view of the company’s financial officer, what is of interest is
the average salary, because that’s what the company has to pay out. If the payroll is thought
to be too high, then what must be reduced is the mean salary, not the median.
Exercise 2.3.11 Suppose we have daily rainfall data for 365 days in a certain area. What
would the mean of that data tell you? What would the median tell you?
Exercise 2.3.12 For each scenario below, state whether mean or median would be more
appropriate and why. 1) Describing typical family size in a country. 2) Reporting typical
recovery time after a medical procedure.
58 CHAPTER 2 DESCRIBING AND PRESENTING DATA
￼
Figure 2.41 Upper: survival curves (survival rate as a function of survival time) for Hodgkin’s
lymphoma, broken into distinct age groups. Middle: histogram of survival times for the [20, 40)
age group. Lower: histogram of survival times for the [60, 80) age group.
2.3 SUMMARIZING A DATA SET: “MEASURES OF CENTRAL TENDENCY” 59
Mode
The mode of a data set is its most popular value, the highest point in the histogram, the “peak”.
Its value in characterizing data is limited. It’s the “most popular” value for the data, but how
popular are other far-away values? Is it a good idea to neglect substantial peaks, that may be
far away, because they are ever-so-slightly lower than the mode? For the same reason, the mode
is very unstable: when the data are changed slightly, the mode can change significantly. And
importantly, the notion of “the highest point in the histogram” depends strongly on our choice
of bin width and choice of cut-offs for the histogram. The mode is not much used, and is
mentioned here only for completeness, and because it lent its name to some useful words. We
say that a distribution is unimodal if it has a single prominent peak, bimodal if it has two peaks,
and multi-modal if it has more than two peaks.(Figure 2.42).
￼
Figure 2.42
Look at the distribution, not the summary number
When we view a data set, it is critical to realize that we need to see the distribution of
the data before calculating summary numbers. Consider the figure below. Suppose we are
looking at the effects of a drug or an environmental condition (here, hot weather). To look
only at the average or median effect is to miss the fact that the condition had a drastic effect
on one participant.
200
0
50
100
150
0 50 100 150 200
Longevity (years)
Count
60 CHAPTER 2 DESCRIBING AND PRESENTING DATA
FURTHER EXERCISES 2.3
1 Calculate the mean and median of the data set: {10, 15, 19, 13}.
.
2 What number would you divide by to calculate the mean of 3, 4, 19, 5 and 6?
.
3 What measure of central tendency is calculated by adding all the values and dividing the
sum by the number of values?
.
4 You measure the weights of 10 randomly chosen shells at the beach. The average weight
from the shells you collected is 200 grams. Does this imply that at least 4 of the shells
weigh less than 200 grams? If so, explain why. If not, using statistics terminology, explain
why and provide a counter example.
.
5 Sketch a distribution for which a mean is appropriate and two distributions for which a
mean is not appropriate (each in a different way). For each, explain why a mean is or is
not appropriate.
.
6 General shape of a distribution. Each of the following KDEs represents a data set. Choose
the best descriptor for each distribution:
.
left skewed, right skewed, symmetrical, uniform and multi-modal.
Value
Probability
A B C D E
7 What term is used to describe the distribution of a data set that has a single prominent
peak?
.
a) Multimodal Unimodalb) Nonmodal
c) Bimodald)
8 Consider the histogram below, which shows how many mammalian species have a given
longevity (life span). For mammals, how does average longevit y compare to median
longevity? How do you interpret the mean and the median?
.
9 Briefly describe three situations in which it would be inappropriate to describe the central
tendency of a set of data with a mean. For at least one of them, sketch it using the
appropriate visualization.
.
61
2.4 SUMMARIZING A DATA SET: MEASURES OF VARIABILITY
2.4 Summarizing a data set: measures of variability
Measures like the mean and median are often called “measures of central tendency”: they report
a single number that “represents” the data. By using a summary measure of central tendency,
like the mean or median, we are losing a lot of information about the data set.
The most important thing we are losing is any sense of the variability of the data. Look at
the two distributions in Figure 2.43. They have the same mean value, but one has a lot wider
variation than the other.
This is a useful thing to know about a distribution or a data set, and so we would lik e to find
a measure that reflects the variability of a data set.
￼
Figure 2.43 Two different distributions have the same mean, but differing variabilities, a fact
that would be lost by simply presenting the means.
Variance
The best-known measure of variability is the variance. The idea behind variance is basically to
add up the distances from each point to the mean value of the data. If there is a lot of variability
in the data set, then there will be a lot of large distances to the mean, and they will add up to
a large variance.
There are a few technical issues that have to be faced. The most important is that we used
the concept of “distance”. Distances, as we normally think of them, are always positive. The
distance from Chicago to LA is the same as the distance from LA to Chicago, around 2000
miles. We don’t think of one distance as “+2000” and the other as “−2000”.
So how are we to define the “distance” between two data points x1 and x2, which we visualize
as two points on the X –axis? If we use
“
x1− x2” then we have the problem that the distance
from x1 to x2 is not the same as the distance from x2 to x1. Also, because one is the negative
of the other, if one point lies 100 units to the left of the mean µ, (so x1−µ= −100 is negative)
and another point x2 lies 100 units to the right of µ, (so x2− µ= 100 is positive), then, if we
add the two “distances”, we would get zero.
So how can we prevent “positive distances” and “negative distances” from canceling each
other out? The answer that is standard in the statistics literature is that we square all the
positive and negative distances. Since squares are always positive (or 0), we can add them
62 DESCRIBING AND PRESENTING DATA
CHAPTER 2
up without some canceling others. The variance is then defined as the average value of these
squared distances from the mean:
variance of data set {x1, x2, ..., xn }=
1
n
n
i=1
(xi− X )2
= σ2
where X is the mean of data set X : {x1, x2, ..., xn }. The variance is often written as σ2 which
is read “sigma squared”.
Statistical theorists and mathematicians like the concept of variance because it is relatively
easy to prove theorems about squared quantities, especially when the distributions are bell-
shaped. But we are less interested in mathematical formalisms here, and more interested in the
question: how good an estimator of variation is the variance?
One problem with the concept of variance is that the variance of a set has units that
are difficult to interpret: if the data set is incomes in dollars, then the variance is in “dollars
squared”. This creates a problem for interpretation: whatever can the notion of “dollars
squared’ (or “years squared”) possibly mean? How can we report the variability of a data set
in a unit that we can’t make sense of?
Another drawback that the variance suffers from comes from the very nature of squaring:
squaring a large quantity makes it gigantic, and squaring a small quantity makes it negligible.
Thus, the variance will be dominated by a few outlying or skewed values. This makes the
variance a less desirable estimator in situations where there is substantial skew.
Standard deviation
Statistical theorists have tried to “undo” the distortions due to squaring the differences by then
taking the square root of their sum. That leads to the concept of standard deviation (s.d.),
which is the square root of the variance:
standard deviation of data set {x1, x2, ..., xn }=
1
n
n
i =1
(xi− X )2 = σ
The standard deviation is often written as σ.
The standard deviation has the right units, which are the same as the original data units.
However, it still suffers from the same domination by extreme values.
And yet another drawback of the notion of variance or standard deviation is that their
definitions contain the concept of the “mean” twice: we take the mean distance (or the mean
squared distance) from the mean of the data set, Therefore, the concepts of variance and
standard deviation are dependent on the mean, and if the mean is not a good measure of the
data set (for example, skewed distributions) then the variance and standard deviation will be
poor descriptors of the variability.
Exercise 2.4.1 Consider the following three lists of numbers:
• List X contains 80 random numbers generated (with uniform p robability) from the in-
terval [15.3, 25.3]
• List Y contains the number 99 repeated 80 times
• List Z contains 80 random numbers generated (with uniform probability) from the in-
terval [101, 105]
• List W contains 80 random numbers generated (with uniform probability) from the
interval [20.5, 21]
2.4 SUMMARIZING A DATA SET: MEASURES OF VARIABILITY 63
Answer the follo wing questions:
a What is the standard deviation of List Y?
.
b Is it true that the standard deviation of List Z is more likely to belargerthanthestandard
deviation of List X?
.
c Rank the standard deviations: σX, σY, σ Z, σW.
.
Standard error of the mean
Finally, just for completeness, we have to mention one more measure of variability. The standard
error of the mean (s.e.m.) is defined as the standard deviation of the data divided by n, where
n is the size of the data set. The concept of the s.e.m. is supposed to cast light on the variability
of the mean value of the data, as opposed to just the variability of the data, which is measured,
for better or worse, by σ. The standard error of the mean purports to tell us how variable the
estimate of the mean might be. Think of a single chemistry class. The grades within that
class will be highly variable, with some A+s and some Ds. But the average grade in the class
is probably going to be around B+, and if we looked at many chemistry classes, the variability
in the average grade across the classes is going to be much less than the variability of grades
within a single class.
There are theorems that tell us that if the data are perfectly bell-shaped, then the variability
of the mean values of a lot of samples will be given by the standard error, but that is, as always,
a big “if”.
Absolute deviation
Statistical theorists and mathematicians like the concepts of variance and standard deviation,
which involve squared distances.
But there is nothing wrong with our original concept of distance, as in “the distance from
Chicago to LA”. The distance we are talking about here w ould be expressed as the absolute
value: |x1− x2| = |x2− x1|.
To apply this concept to data, we begin with the median of the data, which we will call m.
Then we will take all the absolute values of the distances from every point to m, and then take
the median of those distances. The result is called the Median Absolute Deviation (MAD). We
define the MAD as
MAD of data set {x1, x2, ..., xn } = median |x1− m|, |x2− m|, . .., |xn− m|
where m is the median of the set {x1, x 2, ..., xn }.
It gives us another measure of variability, one that does not suffer from the distortions of
squaring and un-squaring.
MAD
Notice that in the definition, the term “MAD” uses the median t wice. It’s the median of
the distances from the median.
There are more definitions of “MAD”: in the literature, you will sometimes see the term
64 CHAPTER 2 DESCRIBING AND PRESENTING DATA
“MAD” used to refer to the median absolute deviation around the mean, or the mean of the
absolute deviations around the median, or the mean of the absolute deviations around the
mean. This can be very confusing, and it’s important to be clear about which version is being
used.
• Whether to use the mean or the median as the group measure depends on whether the
data distribution meets the strict requirements for the use of the mean.
• Whether to use the mean or the median as the “M” in “MAD” dependsonthedistribution
of the absolute differences.
As usual, if the distribution of the absolute differences meet the requirements for the use
of the mean, then we could be justified in using the mean of the differences, but if it isn’t,
the mean might be misleading, and we might do better by using the median. Each method
has strengths and weaknesses, for example, using the median of the absolute distances would
become unstable and highly variable when the sample size is small.
Interquartile Range
Another measure of the “spread” or variability of a data set is the Interquartile Range (IQR),
the difference between the cutoff for the 25th percentile and the cutoff fo r the 75th percentile.
When the Interquartile range is large, that means that there is a lot of variability in the data.
More specifically, a large IQR means that there is a lot of variability in the centra l part of
the data. Consider the house price data in Figure 2.44.
Figure 2.44 Interquartile range for all the 3-bedroom houses sold in San Francisco in 2018.
D
C
20 30 40 50 60
Value
B
A
65
2.4 SUMMARIZING A DATA SET: MEASURES OF VARIABILITY
Note that there are many high-end outlying values, but they are not being captured by the
IQR. The IQR is looking at the central portion of the data, and note that it is not very large.
There is not a great deal of variability in the middle part of the housing market, however much
variability there is in the high-end.
Range
Finally, another measure of the variability of a data set is its range, which is simply the maximum
value of the data minus the minimum value.
range = max − min
It can give us a useful insight into the overall variability of the data set. However, note that
it depends on only two data points out of the w hole set, so it is a highly unstable measure of
the set. It can change drastically if one of those two data points is changed.
So, to summarize, the definition of variability as variance, standard deviation or standard
error of the mean all suffer from the urge to square everything in sight, and all of them depend
on the mean being a representative number. Thus they are questionable when the data is not
bell-shaped, and the mean is a poor descriptor.
We can calculate all 6 definitions of variability for a given data set. Which definition we
should use in a given case depends strongly in the shape of the data distribution.
If the data lies in a bell-shaped distribution (symmetric, unimodal and thin-tailed), then
we can consider using the mean-based concepts of variance and standard deviation. We can
also consider using the standard error of the mean, while keeping in mind that the s.e.m. is
not a measure of the variability of the data, it’s a measure of the variability of the average
value of the data.
But if the data distribution is not bell-shaped, for example if the data are skewed, then
we can’t use the mean-based measures, and it is better to use a median-based measure like
MAD.
Range and IQR do not depend on the shape of the data, b ut keep in mind that they give
very limited information.
Exercise 2.4.2 By looking at the distribution of the following data sets, which measure of
variability should you use?
Arsenic level (ppb)
75 100 125 150 175 200
66 CHAPTER 2 DESCRIBING AND PRESENTING DATA
Example 8 Arsenic in rice
In 2013, the US Food and Drug Administration (FDA) released a report on rice products
available in the United States. Among those many rice types, here are the arsenic levels (ppb
or parts per billion) in a total of 12 samples of Brown Basmati rice that were included in the
report: {86, 84, 178, 161, 82, 118, 124, 127, 134, 146, 199, 200}.
Question How would you describe the distr ibution of this data set?
Answer The first step is always to plot the data. The beeswarm plot shows that the
data points a re spread out with no prominent peaks (modes). The data is almost uniformly
distributed.
Question What is the appropriate measure of central tendency?
Answer Since the data does not fit the criteria for a “bell-shaped” curve, namely, symmetric,
single humped and thin tailed, we can only opt for the median as the measure for central
tendency.
In order to find the median value, sort the 12 numbers from smallest to largest. Since
the sample size 12 is an even number, the median value is the average of the middle two
numbers.
↓ ↓
82, 84, 86, 118, 124, 127, 134, 146, 161, 178, 199, 200
median: m =
127+ 134
2 = 130.5 ppb
Question What is the appropriate measure of variability?
Answer Since the data does not fit the criteria for a “bell-shaped” curve, we should not be
using variance, standard deviation or sem. Both the range and MAD do not depend on the
shape of the data, therefore we should report range and MAD as the appropriate measure of
variability for this data set.
MAD= median |86− m|, |84− m|, ..., |199− m|, |200− m|
= median 44.5, 46.5, 47.5, 30.5, 48.5, 12.5, 6.5, 3.5, 3.5, 15.5, 68.5, 69.5
⇓ sort from smallest to largest
= median 3.5, 3.5, 6.5, 12.5, 15.5, 30.5, 44.5, 46.5, 47.5, 48.5, 68.5, 69.5
=
30.5+ 44.5
2
= 37.5 ppb
Range: max− min = 200 ppb− 82 ppb = 118 ppb
0
5
10
15
20
Count
Heart rate (bpm)
0
5
10
15
20
Count
Heart rate (bpm)
0
5
10
15
Count
Heart rate (bpm)
0
5
10
15
20
25
Count
Heart rate (bpm)
40 60 80 100
40 60 80 100
40 60 80 100
40 60 80 100
A B
C D
2.4 SUMMARIZING A DATA SET: MEASURES OF VARIABILITY 67
FURTHER EXERCISES 2.4
1 What is MAD a measure of? a) Central tendency b) Variation
.
2 Why is the MAD a better measure for most data sets than other measures (such as standard
deviation, standa rd error of the mean)? Give at least two reasons.
.
3 Find the MAD of the data set {14, 9, 7, 19, 3}.
.
4 What is the interquartile range of the data set {2, 5, 7, 9, 15, 15, 17, 19, 22, 24, 29, 30}?
.
5 Heart rates. The histograms below show recorded heart rates (in beats per minute) col-
lected from four different individuals over a 24-hour period using fitness trackers. Interpret
what each histogram might tell us about the individual’s activity level and fitness.
.
a For which individual(s) is the mean a representative value for their typical heart rate?
Briefly explain at least two features of the data that led to your choice.
.
b For which individual(s) should you use a median? Why?
.
c For which individual(s) would the mean be greater than the median? Why?
.
d Which person appears most physically fit? Which person lik ely exercised during the
monitoring period?
.
e What does Histogram A suggest about this person’s daily routine? Consider the peak
around 80-90 bpm. What measure of variability would you u se for individual A? Give
at least two reasons why this measure is better than other possibilities.
.
f Histogram D is right-skewed with most measurements at 50-60 bpm. What are two
possible explanations for such a low resting heart rate?
.
g Compare Person A’s and Person D’s t ypical heart rates.
.
h Why should we visualize the distribution of our data before doing any statistical anal-
ysis and present that visualization as part of our analysis?
.
measures of a data set
central tendency variability
• mean
• median
• variance
• standard deviation
• sem (standard error of the mean)
• MAD (median absolute deviation)
• IQR (interquartile range)
• range
68 CHAPTER 2 DESCRIBING AND PRESENTING DATA
2.5 Presenting data: sho w the data
We have now discussed several ways of presenting data sets: dot plots, beeswarm plots, his-
tograms, Kernel Density Estimates, and violin plots. We used these presentations to get a sense
of the overall distribution of the data.
Based on the distribution of the data, we made decisions on how to represent central tendency
and variability. We discussed measures of central tendency using “typical values” such as the mean
and the median, and we discussed ways of measuring variability, including standard deviations,
variance, standard error of the mean, MAD, interquartile range, and overall range.
Now it is time to ask: how do we present these findings for publication or further analyses?
When it’s time to present our data, the overall rule is: show the data.
1 Always begin with a presentation of the data that displays its distribution: either a dot
plot or a beeswarm plot to show the data, together with a histogram or k ernel density
estimate if the data is more numerous. Comment on the shape of the data distribution:
is it bell shaped? skewed? bimodal?
.
2 Depending on the outcome of (1), choose measures of central tendency and/or vari-
ability, as appropriate for this distribution. F or example, be wary of the mean when the
distribution is not bell-shaped.
.
Box plots
There is a standard form of data presentation that falls short of the injunction to show the data,
yet is frequently used. It’s called a box plot. A box plot is a graphic presentation of the data
using its 5-number summary (Figure 2.45).
￼
Figure 2.45 A box plot.
69
2.5 PRESENTING DATA: SHOW THE DATA
It shows the median of the distribution, which is the 50th percentile of the data, the cut-offs
for the 25th and 75 th percentiles of the data, called Q1 and Q3, respectively, and the max and
min of the data.
A common form of box plot is to show only the middle two quartiles, and to calculate the
width of those middle t wo quartiles, that is, the Interquartile Range, the difference between the
75th and 25th percentiles.
A box plot covers a few, but certainly not all, of the “measures of a data set”. It shows the
median and the quartile cutoffs as well as the min and the max. From these, we can also derive
the IQR and the range of the data.
Sometimes, if there are outlying values that would distort the box plot, a choice is made
to present the outlying values as free-standing data points, excluding them from the box plot
summary.
The box plot should be thought of as the minimum summary description of a data set. It
gives us, at the least, 5 pieces of information about the location and shape of the distribution.
Exercise 2.5.1 Here is a box plot of the student exam scores for a class.
40 50 60 70 80 90 100
Exam score
a. What information can we learn from this box plot about the student exam scores?
b Interpret the box plot. Make sure you discuss symmetry/skew, modality, tails, and
outliers.
.
c Based on this plot, was the exam easy or hard?
.
Exercise 2.5.2 Sketch a box plot fo r the flight cancellation data.
1% 1.5% 2% 2.5% 3% 3.5% 4%
0.5%
Flight cancellation rate
Beyond the box plot: sho w the distribution
However, a box plot is a poor substitute fo r a presentation of the actual distribution.
A distribution plot reveals key features Consider the data on the age at diagnosis of
Hodgkin’s Lymphoma (Figure 2.46). The box plot is shown above, and the distribution of
the data is shown below. Notice how much more information is conveyed by the histogram
CHAPTER 2 DESCRIBING AND PRESENTING DATA
70
compared to the box plot! The histogram shows us that while there is a substantial peak in the
mid-to-late 20s, the overall count of Hodgkin’s Lymphoma cases continues at a fairly steady
pace throughout the years 40-70.
￼
Box plot and histogram of the age at diagnosis of Hodgkin’s Lymphoma.
Figure 2.46
Similarly, if we want to understand traffic patterns on a given road, summary data like the
box plot give us very little information, and hide important insights. The distribution plot of
vehicle speeds reveals that, in addition to the expected peak around the speed limit, there is
also a second peak at a much lower speed. This tells us that there are traffic jams on this road
(Figure 2.47).
￼
Figure 2.47 Box plot and histogram of traffic speed of vehicles driven on a major highway in
a day. The speed limit at the location is 60 miles/h. Note the significant number of vehicles
traveling at a speed below 30 miles/h, totally lost in the box plot.
71
2.5 PRESENTING DATA: SHOW THE DATA
The presentation depends on the data We always have to be flexible about how we are
presenting data, and let the shape of the distribution determine the presentation. For example,
here we have the data on the 2020 compensation of 200 leading CEOs (Figure 2.48).
Figure 2.48 Box plot and beeswarm plot of Equilar 200 CEO compensation in 2020.
The data is extremely skewed, so the box plot is a poor choice. Virtually all the data bunches
up to the extreme left, so much so that we need a magnifying glass to see what’s going on there!
A histogram wouldn’t do that much better either. But the beeswarm plot is more helpful; it
shows the overall distribution and captures the skewness of the distribution, all without losing
sight of the extreme values.
Exercise 2.5.3 Try to plot a histogram on Equilar 200 CEO compensation data set and see
how it compares to a beeswarm.
Look at the distribution! As another example of the limitations of box plots, let’s consider
three groups A, B, and C. Their box plots are shown in Figure 2.49. From this presentation,
they don’t look very different.
0
Value
A B C
5
10
15
20
72 CHAPTER 2 DESCRIBING AND PRESENTING DATA
Figure 2.49 Box plots for three data sets. Median values are shown as white dots, the
interquartile range (be tween 25th and 75th percentiles) is shown by the thick bar.
Note that all three groups have the same median (the white dots in the center), the same
25th and 75 th percentiles (the thick black bars). There are some differences among their max
and min values.
Although the three groups A, B and C have similar box plots, nevertheless, they are very
different distributions, as is clear when we show a violin plot of the distributions: group A more
or less bell-shaped, group B is markedly bimodal, and group C is significantly skewed to the right
(Figure 2.50).
Figure 2.50 Adding a violin plot to the presentation reveals three markedly different distribu-
tions.
Exercise 2.5.4 The left panel shows the box plot of a data set. The right panel shows three
data sets as violin plots overlayed with actual data points. Which of the three data sets could
fit the box plot?
35K
5K
15K
25K
US oil reserves, 2017‒2018
(millions of barrels)
73
2.5 PRESENTING DATA: SHOW THE DATA
Bar graphs
Probably the form of data presentation that is most common is the “bar graph”. Bar graphs are
very popular, but, as w e will soon see, 90% of the time they are deeply wrong, and must be
avoided at all costs.
”OK” bar graphs
Bar graphs are no problem at all when the bar is just used to represent a single number, not a
summary (Figure 2.51).
Figure 2.51 OK use of a bar graph to show a single raw number.
Of course, we are spilling a lot of ink just to denote a single number. In lieu of this graph, we
couldhavejustshownthenumber“35”. Allthosegreenpixelsconveyzeroadditionalinformation.
15
10
5
0
20
Control Diet
Weight loss (lbs)
74 CHAPTER 2 DESCRIBING AND PRESENTING DATA
But there is nothing wrong with using the bar for visualization purposes. It can even serve a
useful purpose of making easy comparisons. For example, we might want to compare the oil
reserves of a number of countries, using bars to compare them (Figure 2.52). In this kind of
case, the “bar chart” is really just reporting raw numbers, not summaries. There is no problem
with this kind of presentation.
￼
Figure 2.52 Using many bars to represent raw numbers can facilitate a comparison of those
numbers.
“Not OK” ba r graphs
However, this is not the most frequent use of bar graphs. Usually, the bar is being used to
represent some summa ry number, derived from the data, and not the data itself. This is where
the problems begin.
The use of “bar graphs” to represent summary data is extremely widespread in scientific
publications and presentations. It is very common to read something like “one group was placed
on the special diet, while the control group ate as they normally do. The weight loss of the two
groups is shown in the Figure”, and we are referred to a bar graph, like Figure 2.53.
Figure 2.53 Exemplary bar graphs representing findings you would often see in research papers
and presentations.
Now we have some b ig problems.
What do the heights of the gray bars represent? Most of the time, if this is a figure in a
research paper or a slide in a presentation, we are not told and we have to guess. Sometimes,
but not always, if it is a research paper there will be a “Statistical Methods” paragraph or two,
that will say something like “data are shown as mean values, ....” But in research talks, this
information is often omitted, and we don’t know if it’s a mean or a median or ....
100
50
0
“error bar”
Value
75
2.5 PRESENTING DATA: SHOW THE DATA
“Error bars” The other part of the standard “bar graph” is the “error bar” on top of each gray
bar, generally in the shape of a capital T (Figure 2.54).
Figure 2.54 A bar graph with an error bar. Some number (the height of the bar) is approxi-
mately 65 and some other number (the height of the T) is approximately 30, but what do those
numbers represent?
The idea behind the error bar is to show the variability of the data in addition to just
a summary value. As we’ve seen, measures of central tendency (if appropriate) should be
supplemented by, at the very least, a measure of the variability of the data. The error bar is
supposed to indicate some measure of the variability of the data. But what measure? We are
usually not even told.
Error bar: “standard deviation”? If we go back to the Statistical Methods section of the
paper (if any), we might see that it’s the standard deviation of the data set.
But if the standard deviation is being used as the measure of variability, then we are back
in all of the problems we encountered with this concept in section 2.4 (Summarizing a data
set: measures of variability). The standard deviation, we saw, is the square root of the aver-
age squared distance-from-the-average-value-of-the-data. Consider that sentence: it uses the
concept of average twice. It first finds the average of the data set, squares the distances from
each data point to the average, then finds the average of the squared distances, and takes the
square root of that average. In section 2.4 (Summarizing a data set: measures of variability)
we discussed all the problems with using the standard deviation as the measure of variability,
so all of those objections apply to standard deviations when they are used as “error ba rs”. In
particular, variance and standard deviation are only valid for bell-shaped distributions, where the
use of the average is justifiable.
Another, related, problem is that the error bar is frequently shown as rising above the top of
the bar. So it is only showing the part of the error above the average. How about the variability
below the average? We are forced to assume that those two a re equal. But that is only true in
a symmetric distribution, and is false if the distribution is skewed. So the one-sided error bar is
invalid if the distribution is skewed, and yet that has not been checked.
Error bar: “standard error of the mean”? Another common use for the error bar is to
represent the standard error of the mean. Recall that the s.e.m. is the standard deviation of the
data, divided by the square root of n. Why would we do that? Why would we use a concept
like s.e.m.? What meaning can it have to divide the standard deviation by the square root of n?
The answer is buried very deeply in the mathematical theo ry of bell-shaped, so-called Normal
distributions.
Recall that the idea behind the s.e.m. is that while there might be a lot of variability within
a data sample, there is a lot less variability in the average values of data samples. For example,
76 CHAPTER 2 DESCRIBING AND PRESENTING DATA
within a given chemistry class, there will be some As and some Ds, but if you look at the average
grade in the class, it’s typically not going to be an A or a D. So there’s much less variability
among average grades across classes than there is within a class.
How much less? There is a theorem that says that if a distribution is truly Normal (that is,
Gaussian, see Chapter 5) and we sample n from it, producing a set with mean m, then we can
calculate something called a “95% confidence interval” as
m ± 1.96 × s.e.m.
and, assuming that the distribution is Normal, we can then conclude that 95% of the time,
confidence intervals calculated in this manner will contain the true mean of the underlying
Normal distribution.
For that reason, the interval [m − 1.96 × s.e.m., m + 1.96 × s.e.m.] is called the 95%
confidence interval for the mean m. So the s.e.m. is an estimate of how variable the average
is (if the distribution is Normal). It can be thought of as telling us what the precision is of
the sample mean m as an estimate of the mean of the underlying Normal distribution. So the
idea behind the notion of confidence interval is that we would like to have some estimate of the
precision of this mean as an estimate of the mean of the whole, unseen, underlying population.
The sentiment behind confidence intervals is valid: it would be informative to know how
precise the average value of our sample m is as an estimate of the mean of the unseen
population. However, the idea that the confidence interval can be calculated by this formula
depends entirely on the assumptions that the distribution of the underlying universe is Normal
(Gaussian), and that we are using the mean value as our descriptor.
We present a resampling-based approach to confidence intervals in Chapter 4. This re-
sampling approach does not depend on assumptions about the shape of the distribution, an d
is valid for any summary measure, not just the mean.
What bar graphs hide
The most significant criticism of bar graphs is that they hide important facts about the data and
the analysis. Indeed, some writers have suggested that sometimes, the very purpose of using
bar graphs is to hide embarrassing facts about the data.
How large is the “n”? Notice that the n, the size of the data set, isn’t shown in the bar,
which therefore hides that fact about the data. The forms of data presentation we learned in
this chapter, such as dot plots, beeswarm plots, histograms, etc, make it easy to see how large
the n is, and therefore the quality of the study. But a bar graph simply hides this fact, which is
a poor practice. It’s an act of deception, whether intentional or not.
What’s the distribution? And then the most important and most pressing question is: what
is the distribution of the data? is it skewed, etc.?
After all, as we have just learned, if the data distribution is not bell-shaped, summarizing the
data by the mean value can be a bad idea. Therefore, anyone who is showing you an average
value is asking you to trust them that the data distribution is bell-shaped. But this is often not
the case, and the average is being used wrongly. Using bar graphs is a way of hiding the data:
the investigator does not want you to see the size or the distribution of the data. We have to
ask “why?”
bar-
77
2.5 PRESENTING DATA: SHOW THE DATA
These are very good questions:
• what is the “
n”?
• what is the distribution of the data?
• does the distribution justify the measures used?
None of these questions is answered by the bar graph. In fact, the bar graph is designed
to avoid them. It is impossible to overstate the damage that has been done by investigators
using bar graphs to hide data, whether it is hiding a small “
n”
or hiding highly skewed data, by
just showing the bar for the average, and leaving the rest unsaid. Trying to hide unattractive
features of our data by using bar graphs is dishonest and poor science. We should always
use data presentation methods that force a discussion of the size and shape of the data, and
do not suppress the variability of the data, its range, and even the number of data points
we have! Unfortunately, this is widely done. It is very common to see a data set presented
as just a bar graph representing the mean value, possibly with an “error bar” representing the
standard deviation or the standard error of the mean. Using this form of presentation, hiding
the distribution of the data, hiding the “n”, etc. is unhelpful at best, and dishonest at worst.
It’s important to re-state the fundamental principle: measures that depend for their va-
lidity on the distribution being bell-shaped cannot be used without first establishing that the
distribution is, in fact, bell-shaped.
It is malpractice to use these measures in the absence of this verification. The use of s.d.
(or s.e.m.) is only valid if the distribution is bell-shaped.
Under no circumstances should we present only a summary measure, like a mean, as a
“bar graph” to represent the data set. This practice supp resses the variability of the data, its
range, and even the number of data points we have!
“Dynamite Plunger Plots”
This is the basis of the “error bar”: in the typical bar-graph-with-error-bar, we are seeing the
average value as the gray bar and the standard deviation or the s.e.m. as the T-shaped bar on
top.
The respected statisticians Gordon Drummond and Sarah Vowler wrote an editorial in the
Journal of Physiology in2011, whosetitlewas“Showthedata, don’tconcealthem” (Drummond
and Vo wler, 2011). Note the ethical tone of the title; they sharply criticized the practice of
showing means and standard deviations as bar graphs with “error bars”; they are accusing bar
graphs, quite rightly, of “concealing the data”. We agree.
In that paper, Drummond and Vowler coined a derisive name for these data-hiding
“To maintain the highest level of trustworthiness of data, we are encouraging
authors to display data in their raw form and not in a fashion that conceals their
variance. Presenting data as columns with error bars (dynamite plunger plots)
conceals data. We recommend that individual data be presented as dot plots
shown next to the average for the group with appropriate error bars.”
78 DESCRIBING AND PRESENTING DATA
CHAPTER 2
graphs-with-error-bars. They called them “dynamite plunger plots” (Figure 2.55).
￼
￼
Figure 2.55 Wile E. Coyote has his hands on a dynamite plunger, preparing to kill the elusive
Roadrunner bird. It typically does not go well for the coyote.
(For those that didn’t grow up watching American cartoons, Figure 2.55 shows the devious
Wile E. Coyote from the Roadrunner cartoons, with his hands on a dynamite plunger, in another
vain attempt to kill the Roadrunner.)
Their derogatory name for these bar graphs, “Dynamite Plunger Plots” has caught on.
An editorial in the prestigious Journal of Clinical Investigation took the same tone, saying
We strongly support this movement away from “bar graphs,” with or without “error ba rs”.
The bar graph suppresses the shape of the distribution.
A good illustration of why this is important can be seen in the data in Figure 2.56. There
are three different groups: A, B and C. The distribution of their data is as shown. In each data
set, the average value is 100 and the standard deviation is 35. Therefore, all three data sets
have the exact same dynamite plunger plot, which is shown at the top.
If you had used the dynamite plunger presentation, you would have completely missed the
interesting differences among the data sets. Suppose that A was the control group, and B and
C are two different drugs. Did the drugs have any effect? Yes, certainly. Is there a result here?
Absolutely! Drug B eliminates all the variation, increasing small values and decreasing large
ones, it drastically tightened the distribution to a value below the control group mean, with the
exception of one poor (or lucky) individual who had an even higher value than was seen in the
control group. Drug C, on the other hand, has a different type of effect: it has separated the
population into 2 distinct subgroups, high responders and low-responders, which of course leads
us to ask questions like: who are the 2 subgroups? are they men and women? old and young?
etc.
This entire discussion would be lost if we just used dynamite plunger plots. Bar graphs
suppress all this, because each data set has the same bar graph and “error bar”! This is why we
avoid bar graphs.
150
100
50
0
200
A B C
Value
150
100
50
0
200
A B C
“dynamite plunger plot”
Value
beeswarm plot
X
M(X)
X
M(X)
SEM?
SD? 99% CI
BAD GOOD
79
2.5 PRESENTING DATA: SHOW THE DATA
Figure 2.56 Bar graphs conceal the data.
Avoid making Dynamite Plunger Plots!
We stress here the approach that asks us first of all to look at the data visually, and to take
special note of its distribution, looking for key features like variability and skew. The graphic
presentations that best help with this key task are dot plots, beeswarm plots, histograms, and
kernel density estimates/violin plots.
We have not said yet what the best candidate is for the “error bar”. For now, we can use
the variance or MAD. But what it is really calling for is a confidence interval, the subject of
Chapter 4.
In summary, we have seen good and bad w ays of describing and presenting data.
On the left are the bad w ays: dynamite plunger plots.
– use of the mean without justification
– unexplained error bars, that were in fact calculated using form ulas that depend on
the data being bell-shaped
– hiding the n
– concealment of the distribution
80 CHAPTER 2 DESCRIBING AND PRESENTING DATA
On the right are the good ways:
– dot plots showing the data and their distribution
– a histogram and a KDE also sho wing the distribution of the data
– a 99% confidence interval (shaded bar) for the measure M of the data set X.
These are the good and bad ways to present data. The only unanswered question is: how
can we calculate confidence intervals if our data set is not bell-shaped, and/or we don’t wish to
use the mean as our descriptor? Is there a general method for calculating confidence intervals?
The answer is yes, and we’ll dive into that in Chapter 4 (Confidence Intervals: one measure,
one group).
Plotting the data vs. summa ry numbers
There’s a well-known figure that illustrates the perils of only calculating sum mary numbers to
describe data. It’s called “The datasaurus” (Figure 2.57), and it was developed by Alberto Cairo.
There are 13 wildly different data sets, but every one of them has the same summary numbers.
Each data set has the same X-mean, the same Y-mean, the same standard deviation in X, the
same standard deviation in Y, and the same correlation coefficient (approximately = 0) (see
Chapter 9 Bivariate Data: Correlation and Beyond).
￼
Figure 2.57 The datasaurus. All 13 data sets have the same summary numbers, shown on
top.
If a researcher were to obtain one of these data sets, and only calculated summary numbers,
they wouldcompletelymissthestructureofthedata, andendupthrowingoutavaluablefinding!
0
1
2
3
4
5
A B AA B
Number of outages
2.5 PRESENTING DATA: SHOW THE DATA 81
FURTHER EXERCISES 2.5
1 What are we looking for in a data plot?
.
a) Skewness vs. symmetry b) Thick tails vs. thin tails
c) Outliers d) Subgroups (multi-modalit y)
e) Variability
2 Give two examples of information that is lost when only a measure of central tendency and
a measure of variation ar e used to describe a data set, as in a bar chart with error bars.
.
3 Which of the following types of graphs hides information about modality?
.
Plunger plot
a) Dot plot
b) Box plot
c)
4 What is the interqua rtile range?
.
5 What Plunger Plots miss. Two data sets, A and B, show the daily number of power outages
in a solar farm, before and after implementing a grid-balancing system. In the plunger plots,
the bars represent the mean n umberofoutages, andtheerrorbarsshowtheSEM.Compare
the two types of plot and describe what information is lost in the plunger plots.
.
6 Binning your data. When we use histograms to represent a data set, it is essential to
choose a proper number of bins. The three histograms below are based on the same data
set.
.
a. Which histogram would be the appropriate presentation of the data set? Explain why.
b What is the rule of thumb when it comes to selecting the number of bins?
.
Emails received per day
10 12 14 16 18 20
a What is the type of the histograms?
.
82 CHAPTER 2 DESCRIBING AND PRESENTING DATA
Count
Count
Count
Value Value Value
A B C
20 40 60 80 100 20 40 60 80 100 20 40 60 80 100
0
2
1
3
0
2
4
10
5
0
7. Which box plot is right skewed?
A B C D
70 80 90 100
Value
70 80 90 100
Value
70 80 90 100
Value
70 80 90 100
Value
8. First time mothers. The age distribution of first time mothers in the United States has
changed greatly over the last forty years (New York Times, 2018). Herearetwohistograms
showing the ages of first time mothers in 1980 and 2016.
14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44
1980
Age
8%
6%
4%
2%
14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44
2016
Age
Standard histogram
a) Cumulative histogram
b)
Normalized histogram
c) Cumulative normalized histogram
d)
b For each histogram, what are the sums of the heights of all bins?
.
c Decide which measure of central tendency (if any) you would present to an audience
and explain your reasoning.
.
d Describe/interpret each histogram. Discuss symmetry/skew, modalit y, tails, outliers.
.
9 Grade distribution. Consider the following relative frequency distribution, which details the
results of a midterm exam taken by 120 students.
.
Grade Less than 50 50–59 60 –69 70–79 80–89 90–100
Relative frequency 15% 10% 30% 20% 12% 13%
a The median score is in which grade range?
.
b How many students got at least a 70 on the exam?
.
c What is the interqua rtile range?
.
d How would you describe the g rade distribution?
.
e We have seen that problematic results can occur due to outliers. Rank the following
measures in the order of “least affected by outliers” to “most affected by outliers”.
.
a) mean, median, range median, mean, range
b)
c) range, median, mean median, range, mean
d)
e) range, mean, median
10 Emergency Room visits. The distribution of Emergency Room w ait times is shown below.
.
a. What types of graphs a re shown?
b What is the probability that a patient will have to wait more than 2 hours?
.
c. What is the probability that a patient will have to wait more than 4 hours?
d. What is the longest time a patient will have to wait?
e If the Board of Health requires an ER to process 75% of the patient s within 2 hours,
is the hospital meeting this requirement?
.
f Estimate the median and roughly sketch a box plot fo r ER wait times.
.
11 Write the type of visualization that is appropriate for each situation. The options are: bar
chart, beeswarm plot, box plot, and violin plot. Some may be used more than once or not
at all.
.
a Our data is the number of times A,B,C,D,E were the correct response on a multiple
choice exam with 100 questions. We want to know if C is the most common correct
response.
.
b Our data is 100 data values for each of two treatments, and we want to know the
values at 25%, 50%, and 75% of the data for each group.
.
c We have 200 data points for each of three treatments, and we want to know if the
distribution of each group is bimodal or unimodal.
.
2.5 PRESENTING DATA: SHOW THE DATA 83
Wait time (hours)
Normalized count
Cummulative normalized count
≥15
0 10 20 30 40 50 60 70 80
0
0.01
0.02
0.03
0.04
0.05
0.06
Frequency
Daily minutes spent on exercise
12 Match the histogram with the co rresponding box plot.
.
a. What are the 5 summary statistics that box plots display?
b What do the circles ◦ in those box plots represent?
.
c On each of the box plots, roughly indicate by drawing a horizontal line where the
mean of the data set would be. (It doesn’t have to be exact.)
.
d Which histograms would be considered a symmetrical distribution?
.
e The data in plot F can b est be described as
.
a) Right-skewed Bimodalb) Bell-shaped
c) Left-skewed
d)
f Select all distributions for which the mean would be a useful and informative measure
of central tendency.
.
13 Daily exercise time. Answer the following questions based on the figure below:
.
CHAPTER 2
84 DESCRIBING AND PRESENTING DATA
A B
C D
E F
1 2
3 4
5 6
Histograms Box plots
A ____
B ____
C ____
D ____
E ____
F ____
a. The type of plot the ba rs represent is a(n) .
b The curve is called a(n) .
.
c What measure of variation would be best suited to this data? Give one reason why.
.
***
***
***
City A City B City C
Air pollution
(µg/m³)
0
30
60
90
120
Weekend
Weekday
d Briefly describe the data in terms of shape, skew, and modality (including approximate
values of any modes).
.
14 Longevity. Here is a histogram representing the longevities of mammals.
.
a Comment on the shape of the data. Discuss symmetry/sk ew, modality, tails, and
outliers.
.
b Would a beeswarm plot be better to represent this data set? Explain why.
.
85
2.5 PRESENTING DATA: SHOW THE DATA
Mammal longevity (yrs)
Count
0
25
50
75
100
125
150
175
0 50 100 150 200
15. Air pollution. The figure below shows the results of a study tracking air pollution levels (in
µg/m³) on weekdays versus weekends across three different cities. Describe three things
that should be improved.
16. Traffic. The plot below shows the average traffic congestion level on a Friday in Los
Angeles. What type of plot is this? Is it appropriate to use this type of plot?
Hour of day
8am 5pm Midnight
0
0%
20%
40%
60%
80%
congestion level
Trial 1 Trial 2 Trial 3 Trial 4
0
1
2
3
4
5
6
Tumor size (mm diameter)
17 Clinical trials. Would you recommend using this type of graph in the figure below to depict
this data? Provide three reasons for your recommendation based on this specific figure.
.
86 DESCRIBING AND PRESENTING DATA
CHAPTER 2
Chapter 3