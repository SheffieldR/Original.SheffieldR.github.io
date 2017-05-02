---
layout: post
title:  "May Sheffield R Meetup: Making R Faster"
date:   2017-05-02 17:30:00 +0000
categories: meetups
speakers:
  Théo Michelot:
    title: "Using C++ to speed up R code"
---
This month we'll be learning from Théo Michelot how to make R go faster using a couple of techniques.

**Using C++ to speed up R code**

R is a very handy tool for data analysis, but it can be computationally quite slow. When analysing large data sets, or using complex models, it can be desirable to speed things up. For this reason, it has become increasingly common to combine R code with C++ code. C++ is a compiled programming language, which makes it much faster than R in some cases. I will first talk about Rcpp, an R package which makes it very simple to call C++ functions from an R script. Then, I will talk about the Template Model Builder (TMB), an R package which uses automatic differentiation in C++ to speed up the numerical evaluation of a function (typically, a likelihood function), thus making techniques such as maximum likelihood estimation very fast. I will show that these do not require a strong programming background, and that it is quite easy for someone familiar with R to use Rcpp and TMB. I will compare the three approaches with examples of code.

We hope to see you there!

The SheffieldR team
