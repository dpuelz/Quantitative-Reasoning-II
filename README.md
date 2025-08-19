# Quantitative-Reasoning-II

Welcome to the Winter 2025 edition of Quantitative Reasoning II at UATX!  All course materials can be found on this GitHub page.  Please see the [course syllabus](syllabus_QR2.pdf) for links and descriptions of the readings mentioned below.

Instructor:  
- Prof. David Puelz.  Individual meetings can be booked at the following [link](https://calendly.com/dpuelz).


## Class meetings

| Section | Meeting Time | Classroom | Professor |
|---------|--------------|-----------|-----------|
|001| Monday & Thursday, 10:00 AM - 11:15 AM | Scarbrough 210 | Prof. David Puelz |
|002| Monday & Thursday, 11:30 AM - 12:45 PM | Scarbrough 313 | Prof. David Puelz |
|003| Monday & Thursday, 2:00 PM - 3:15 PM | Scarbrough 313 | Prof. David Puelz |
|004| Monday & Thursday, 2:00 PM - 3:15 PM | Scarbrough 326 | Prof. Dorothy Dickmann |



## Exercises

There will be individual, weekly exercises to be turned in via Populi.  They will be posted here.

<!--

- [Homework 1](exercises/HW1.pdf). Due 1/15. Data: [cars.csv](data/cars.csv).
- [Homework 2](exercises/HW2.pdf). Due 1/22. Data: [predimed.csv](data/predimed.csv).
- [Homework 3](exercises/HW3.pdf). Due 1/29.
- [Homework 4](exercises/HW4.pdf). Due 2/9 (after the midterm). Data: [beautydata.csv](data/beautydata.csv).
- [Homework 5](exercises/HW5.pdf). Due 2/14 (project work).
- [Homework 6](exercises/HW6.pdf). Due 2/26. Data: [yu2017sample.csv](data/yu2017sample.csv).
- [Homework 7](exercises/HW7.pdf). Due 3/5 (project work).
- [Homework 8](exercises/HW8.pdf). Due 3/12.

-->

## Software

<!-- ### WebR (built-in on your browser)

The computing exercises for this course are online activities with R "code blocks" throughout.  These code blocks run entirely in the browser, and you can edit them freely to change the output.  This browser-based version of R is therefore called "WebR."  You will interact with the code blocks and submit your interactions at the end of each computing tutorial.  Please familiarize yourself with the [computing portion](https://dtkaplan.github.io/QR2-computing/) of this course as soon as possible. -->

### Local R (downloadable software on your computer)

You will need a local download of R to run our example code and for your final project. Please install [R](https://cran.rstudio.com) and then [RStudio](https://posit.co/download/rstudio-desktop/) on your own computer (you want the "RStudio Desktop" version).  Both are free and work on all platforms.  R is the underlying data-analysis program we'll use in this course, while RStudio provides a nice front-end interface to R that makes certain repetitive steps (e.g. loading data, saving plots) very simple.

### Julius AI

To be discussed.  Information is avaiable at this [site](https://julius.ai).


## Project

Details will be posted here later in the term.

<!-- Information on the project can be found [here](code/project.md).

### Deliverables: 

- 10-12 minute presentation, 5 minute questions & feedback.
- Presentation slides and the final write-up are due on Sunday, March 23. -->

<!-- A couple places to look for data:
- [Harvard Dataverse](https://dataverse.harvard.edu).  Compilation of data (and code) from research projects ranging from medicine and law to business and public policy.  Often accompanied by a peer-reviewed paper.
- [FRED](https://fred.stlouisfed.org).  Tons of economic data from the St. Louis Fed.
- [Johns Hopkins COVID data](https://github.com/CSSEGISandData/COVID-19).  A lot of data related to the pandemic sits here.
- [Amazon Web Services Data Exchange](https://aws.amazon.com/marketplace/search/results?category=d5a43d97-558f-4be7-8543-cce265fe6d9d&FULFILLMENT_OPTION_TYPE=DATA_EXCHANGE&filters=FULFILLMENT_OPTION_TYPE).  Many sources ... be sure to look into the subscription and data access requirements.
- [Tyler Moore's website: Cybersecurity and Crypto-related research](https://tylermoore.ens.utulsa.edu/pub.html). -->


## Rough schedule

|Week| Monday | Thursday |
|---|------| ------ |
|1: 1/6 & 1/9| Intro + Data and probability | Data and probability |
|2: 1/13 & 1/16| Data and probability | Data and probability |
|3: 1/22 & 1/23| Prediction (Wednesday class) | Prediction |
|4: 1/27 & 1/30| Regression | Regression |
|5: 2/3 & 2/6| Regression | **midterm** |
|6: 2/10 & 2/13| *reading week* | *reading week* |
|7: 2/19 & 2/20| Precision (Wednesday class) | Precision |
|8: 2/24 & 2/27| Accuracy, confounding, and adjustment | Accuracy, confounding, and adjustment |
|9: 3/3 & 3/6| Accuracy, confounding, and adjustment | Accuracy, confounding, and adjustment |
|10: 3/10 & 3/13| Hypothetical reasoning | Hypothetical reasoning |
|11: 3/17 & 3/20| Project presentations | Project presentations |


## Outline of topics  

### (0) Introduction

Slides: [Intro](slides/intro.pdf)

Code for class:
- [Basic R functionality](code/intro.R)
- I highly recommend going through the following [R tutorials](https://github.com/dpuelz/learnR) and using this site as a reference.

### (1) Data and probability

Slides: [Data viz](slides/datavis.pdf), [Data wrangle](slides/wrangling.pdf), [Probability](slides/probability.pdf), [More probability topics](slides/probability_topics.pdf)

Readings: 
- Spiegelhalter Introduction & Ch. 1 + Ch. 8 (Probability)
- Rosling Ch. 1 & 2
- [Birth control effectiveness](readings/AIQ_excerpt_contraceptive_effectiveness.pdf)

Computing tutorial:
- [Tutorial 1](https://dtkaplan.github.io/QR2-computing/tutorial-1.html).

Code for class: 
- [nycflights_wrangle.R](code/nycflights_wrangle.R), [nycflights13.csv](data/nycflights13.csv)

Exercises (in-class):
- [Draft lottery](code/draftlottery.md), [survey.csv](data/survey.csv), and [starter R Script](code/draft.R).
- [Music festivals](code/musicfestivals.md): Which bands come to ACL?

### (2) Prediction

Slides: [Prediction](slides/prediction.pdf), [Logistic 1](slides/logistic_1.pdf), [Logistic 2](slides/logistic_2.pdf)

Readings: 
- Spiegelhalter Ch. 3 & 6
- Rosling Ch. 4 & 5

Computing tutorial:
- [Tutorial 2](https://dtkaplan.github.io/QR2-computing/tutorial-2.html).

Code for class:

Exercises (in-class):
- [Stock returns](code/returns.R) 

### (3) Regression

Slides: A continuation of the prediction material - [Prediction](slides/prediction.pdf), [Logistic 1](slides/logistic_1.pdf), [Logistic 2](slides/logistic_2.pdf)

Readings: 
- Spiegelhalter Ch. 5
- Rosling Ch. 3

Computing tutorial:
- [Tutorial 3](https://dtkaplan.github.io/QR2-computing/tutorial-3.html).

Code for class:
[Stock returns revisted](code/returns.R).  What is the adjustment going on here?


### (4) Precision

Slides: [Art of Statistics funnel plot discussion](code/09-2-bowel-funnel.pdf) and [Resampling/Bootstrapping](slides/bootstrap.pdf)

Readings: 
- Spiegelhalter Ch. 9, optionally, Ch. 7
- Rosling Ch. 6 & 7

Computing tutorial:
- [Tutorial 4](https://dtkaplan.github.io/QR2-computing/tutorial-4.html).

Code for class: [bootstrap.R](code/bootstrap.R)

Exercises (in-class):
- [Leader assasinations](code/leader-assassination.md), [leaders.csv](data/leaders.csv)


### (5) Causality and confounding

Slides: [Causality](slides/causality.pdf)

Readings:
- Spiegelhalter Ch. 4
- Rosling Ch. 8 & 9

Computing tutorial:
- [Tutorial 5](https://dtkaplan.github.io/QR2-computing/tutorial-5.html).


Exercises (in-class):
- [Minimum wage - uncommented code](code/causality_minwage.R) and [minwage.csv](data/minwage.csv)


Code for class:
- [Simple causal analysis](code/causality1.R)
- [Randomized policing intervention](code/causality_police.R)
- [Difference-in-differences](code/DiD.R)


### (6) Hypothetical reasoning and the scientific method

Slides: Continuation of [Causality](slides/causality.pdf) with a focus on Fisher's sharp null

Readings:
- Spiegelhalter Ch. 11 (Bayes) + 13 & 14 (problems with hypothesis testing)
- Rosling Ch. 10

Computing tutorial:
- [Tutorial 6](https://dtkaplan.github.io/QR2-computing/tutorial-6.html).

Code for class:








