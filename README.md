# Quantitative-Reasoning-II

Welcome to the Fall 2025 edition of Quantitative Reasoning II aka Introduction to Data Science!  All course materials can be found on this GitHub page.  Please see the [course syllabus](course_outline.pdf) for links and descriptions of the readings mentioned below.

Instructors:  
- Prof. David Puelz. Individual meetings can be booked at the following [link](https://calendly.com/dpuelz).  Office hours on Tuesdays from 10:00 AM - 11:00 AM in Scarbrough 339.
- Prof. Dorothy Dickmann.  Individual meetings can be booked at the following [link](https://calendar.app.google/U4UUE65Dzg9vJSDy7)

Course Mentors:
- Lucy Taylor: ltaylor@student.uaustin.org
- Eitan Zarin: ezarin@student.uaustin.org

Lucy and Eitan will hold weekly recitations at the Union on Wednesday from 7:00 AM - 9:00 AM.  Students are strongly encouraged to attend.

## Class meetings

| Section | Meeting Time | Classroom | Professor |
|---------|--------------|-----------|-----------|
|001| Monday & Thursday, 10:00 AM - 11:15 AM | Scarbrough 311 | Prof. David Puelz |
|002| Monday & Thursday, 11:30 AM - 12:45 PM | Scarbrough 326 | Prof. David Puelz |
|003| Monday & Thursday, 2:00 PM - 3:15 PM | Scarbrough 326 | Prof. David Puelz |
|004| Monday & Thursday, 2:00 PM - 3:15 PM | Scarbrough 311 | Prof. Dorothy Dickmann |



## Exercises

There will be individual, weekly exercises to be turned in via Populi.  They will be posted here.

- [Homework 1](exercises/HW1.pdf). Due 9/17. Data: [cars.csv](data/cars.csv).
- [Homework 2](exercises/HW2.pdf). Due 9/24. Data: [predimed.csv](data/predimed.csv).
- [Homework 3](exercises/HW3.pdf). Due 10/1. Problem 3: [ACL Fest](code/musicfestivals.md)
- [Homework 4](exercises/HW4.pdf). Due 10/8. Data: [beautydata.csv](data/beautydata.csv).
- [Homework 5](exercises/HW5.pdf). Due 10/15. Data: [yu2017sample.csv](data/yu2017sample.csv).
- [Homework 6](exercises/HW6.pdf). Due 10/22 (project work).
<!--
- [Homework 7](exercises/HW7.pdf). Due 3/5 (project work).
- [Homework 8](exercises/HW8.pdf). Due 3/12.


-->


#### Homework Rubric

1 = All answers incorrect or inadequately addressed and missing deliverables, severly lacking clarity, write-up unprofessional

2 = More than half of answers incorrect, severely lacking clarity, write-up unprofessional and/or missing deliverables

3 = The majority of answers are correct with a couple mistakes, write-up is not professionally compiled but legible

4 = All answers are correct and write-up is acceptable.  This is the modal grade

5 = All answers are correct and write-up is exceptional.  The student went above and beyond the prompts to investigate an area not explicitly requested

<!-- | Points | Description |
|-------------|------------|
1 |	All answers incorrect or inadequately addressed and missing deliverables, severly lacking clarity, write-up unprofessional
2 | More than half of answers incorrect, severely lacking clarity, write-up unprofessional and/or missing deliverables
3 |	The majority of answers are correct with a couple mistakes, write-up is not professionally compiled but legible
4 |	All answers are correct and write-up is acceptable.  This is the modal grade
5 |	All answers are correct and write-up is exceptional.  The student went above and beyond the prompts to investigate an area not explicitly requested
-->

## Software

<!-- ### WebR (built-in on your browser)

The computing exercises for this course are online activities with R "code blocks" throughout.  These code blocks run entirely in the browser, and you can edit them freely to change the output.  This browser-based version of R is therefore called "WebR."  You will interact with the code blocks and submit your interactions at the end of each computing tutorial.  Please familiarize yourself with the [computing portion](https://dtkaplan.github.io/QR2-computing/) of this course as soon as possible. -->

### Local R (downloadable software on your computer)

You will need a local download of R to run our example code and for your final project. Please install [R](https://cran.rstudio.com) and then [RStudio](https://posit.co/download/rstudio-desktop/) on your own computer (you want the "RStudio Desktop" version).  Both are free and work on all platforms.  R is the underlying data-analysis program we'll use in this course, while RStudio provides a nice front-end interface to R that makes certain repetitive steps (e.g. loading data, saving plots) very simple.

<!-- ### Julius AI

To be discussed.  Information is available at this [site](https://julius.ai). -->


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
|1: 9/8 & 9/11| Intro + R | Data and Probability |
|2: 9/15 & 9/18|  Data and Probability | Data and Probability |
|3: 9/22 & 9/25| Probability | Probability |
|4: 9/29 & 10/2| Prediction | Prediction |
|5: 10/6 & 10/9| Prediction + Precision | Precision |
|6: 10/13 & 10/16| Precision | Precision |
|7: 10/20 & 10/23| Precision | **MIDTERM** |
|8: 10/27 & 10/30| Causality | Causality |
|9: 11/3 & 11/6| Causality | Causality |
|10: 11/10 & 11/13| Project presentations | Project presentations |


## Outline of topics  

### (0) Introduction

Slides: [Intro](slides/intro.pdf)

Code for class:
- [Basic R functionality](code/intro.R)
- I highly recommend going through the following [R tutorials](https://github.com/dpuelz/learnR) and using this site as a reference.

Readings:  
- [Introduction to RMarkdown](http://rmarkdown.rstudio.com)  
- [RMarkdown tutorial](https://rmarkdown.rstudio.com/lesson-1.html)  

### (1) Data and Probability

Slides: [Data viz](slides/datavis.pdf), [Data wrangle](slides/wrangling.pdf), [Probability](slides/probability.pdf), [More probability topics](slides/probability_topics.pdf)

Readings: 
- _Naked Statistics, Art of Statistics_ — Refer to syllabus
- [Birth control effectiveness](readings/AIQ_excerpt_contraceptive_effectiveness.pdf)

Code for class: 
- [nycflights_wrangle.R](code/nycflights_wrangle.R), [nycflights13.csv](data/nycflights13.csv)

Exercises (in-class):
- [Draft lottery](code/draftlottery.md), [survey.csv](data/survey.csv), and [starter R Script](code/draft.R).
- [Music festivals](code/musicfestivals.md): Which bands come to ACL?

### (2) Prediction

Slides: [Prediction](slides/prediction.pdf), [Logistic 1](slides/logistic_1.pdf), [Logistic 2](slides/logistic_2.pdf)

Readings: 
- _Naked Statistics, Art of Statistics_ — Refer to syllabus

Code for class:
- Interactive notebook: [Visualizing least sqaures](https://colab.research.google.com/github/dpuelz/Quantitative-Reasoning-I/blob/main/notebooks/inclass_LS.ipynb#scrollTo=XxU8jwoU6teX)

Exercises (in-class):
- [Stock returns](code/returns.R) 
- [Leader assasinations](code/leader-assassination.md), [leaders.csv](data/leaders.csv)

### (3) Precision

Slides: [Art of Statistics funnel plot discussion](code/09-2-bowel-funnel.pdf) and [Resampling/Bootstrapping](slides/bootstrap.pdf)

Readings: 
- _Naked Statistics, Art of Statistics_ — Refer to syllabus

Code for class: [bootstrap.R](code/bootstrap.R)

### (4) Causality

Slides: [Causality](slides/causality.pdf)

Readings:
- _Naked Statistics, Art of Statistics_ — Refer to syllabus

Exercises (in-class):
- [Minimum wage - uncommented code](code/causality_minwage.R) and [minwage.csv](data/minwage.csv)

Code for class:
- [Simple causal analysis](code/causality1.R)
- [Randomized policing intervention](code/causality_police.R)
- [Difference-in-differences](code/DiD.R)


<!-- ### (6) Hypothetical reasoning and the scientific method

Slides: Continuation of [Causality](slides/causality.pdf) with a focus on Fisher's sharp null

Readings:
- Spiegelhalter Ch. 11 (Bayes) + 13 & 14 (problems with hypothesis testing)
- Rosling Ch. 10

Computing tutorial:
- [Tutorial 6](https://dtkaplan.github.io/QR2-computing/tutorial-6.html).

Code for class: -->
