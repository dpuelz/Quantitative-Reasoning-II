
# Success of Leader Assassination as a Natural Experiment

One longstanding debate in the study of international relations
concerns the question of whether individual political leaders can make
a difference.  Some emphasize that leaders with different ideologies
and personalities can significantly affect the course of a nation.
Others argue that political leaders are severely constrained by
historical and institutional forces.  Did individuals like Hitler,
Mao, Roosevelt, and Churchill make a big difference?  The difficulty
of empirically testing these arguments stems from the fact that the
change of leadership is not random and there are many confounding
factors to be adjusted for.

In this exercise, we consider a *natural experiment* in which the
success or failure of assassination attempts is assumed to be
essentially random.

This exercise is based on:
Jones, Benjamin F, and Benjamin A Olken. 2009. “[Hit or Miss? 
 The Effect of Assassinations on Institutions and 
 War.](http://dx.doi.org/10.1257/mac.1.2.55)” 
 *American Economic Journal: Macroeconomics* 1(2): 55–87. 

Each observation of the CSV data set
`leaders.csv` contains information about an assassination
attempt.  The variables are:


| Name       | Description                                                |                                        
|:-----------|:---------------------------------------------------------- |
|`country`      |      The name of the country
|`year`     |          Year of assassination
|`leadername`  |        Name of leader who was targeted
|`age`       |         Age of the targeted leader
|`politybefore`  |      Average polity score during the 3 year period prior to the attempt
|`polityafter`   |     Average polity score during the 3 year period after the attempt
|`civilwarbefore`  |    1 if country is in civil war during the 3 year period prior to the attempt, or 0 
|`civilwarafter`  |    1 if country is in civil war during the 3 year period after the attempt, or 0
| `interwarbefore`  |    1 if country is in international war during the 3 year period prior to the attempt, or 0
|`interwarafter`  |    1 if country is in international war during the 3 year period after the attempt, or 0
|`result`        |     Result of the assassination attempt, one of 10 categories described below


The `polity` variable represents the so-called *polity score*
from the Polity Project.  The Polity Project systematically documents
and quantifies the regime types of all countries in the world from
1800.  The polity score is a 21-point scale ranging from -10
(hereditary monarchy) to 10 (consolidated democracy).  

The `result` variable is a 10 category factor variable describing
the result of each assassination attempt.

When reading in the data, please use the following command:

`leaders <- read.csv("data/leaders.csv", stringsAsFactors = TRUE)`

## Question 1

How many assassination attempts are recorded in the data?  How
many countries experience at least one leader assassination attempt?
(The `unique` function, which returns a set of unique values
from the input vector, may be useful here).  What is the average
number of such attempts (per year) among these countries?


## Question 2

Create a new binary variable named `success` that is equal
to 1 if a leader dies from the attack and to 0 if the leader
survives.  Store this new variable as part of the original data
frame.  What is the overall success rate of leader assassination? Characterize uncertainty in this estimate.
Does the result speak to the validity of the assumption that the
success of assassination attempts is randomly determined?


## Question 3

Investigate whether the average polity score over 3 years prior
  to an assassination attempt differs on average between successful
  and failed attempts.  Also, examine whether there is any difference
  in the age of targeted leaders between successful and failed
  attempts.  Briefly interpret the results and characterize uncertainty in this estimates.

## Question 4

Repeat the same analysis as in the previous question, but this
  time using the country's experience of civil and international war.
  Create a new binary variable in the data frame called
  `warbefore`.  Code the variable such that it is equal to 1 if
  a country is in either civil or international war during the 3 years
  prior to an assassination attempt.  Provide a brief interpretation
  of the result.


## Question 5

Does successful leader assassination cause democratization?
  Does successful leader assassination lead countries to war?  Answer
  these questions by analyzing the data.  Be sure to state your
  assumptions and provide a brief interpretation of the results.


## Question 6

To what extent is a successful assasination predictable?  Fit a regression model and interpret.

