---
layout: post
title:  "March Sheffield R Meetup: Code surgery and social"
date:   2017-03-07 17:30:00 +0000
categories: meetups
speakers: 
  R group members:
    title: "Code surgery: round table discussion"
    localmaterial: "/assets/material/2017-03/ListColumnDemo.R"
---

In March we held our first R coding surgery and social, a chance for our members to meet, greet, learn from and collaborate with fellow R users.

#### In attendance
Tamora, Eoghan, Kassandra, Alison, Mat, Chris, José

#### Topics

##### Data storage (Alison)
**Problem**

* Storing data of different lengths.

**Answer**

* Use list columns: allows arbitrary length vectors.
* See [Charlotte Wickham presentation on tidy data at R Studio conference 2017](https://www.rstudio.com/resources/videos/happy-r-users-purrr-tutorial/).

##### Spatio-temporal time series (Kassandra)

**Problem**

* Lots of observations in some areas/directions, few elsewhere.
* Time series of environmental variables.
* Relate observed distribution with methane flux.
* Time series has gaps - how to handle?

**Answer**

* Can create an even time series - add NAs where observations missing
* Raster layers as time, environmental variable single point time series
* List columns again!
* Loading raster data into R: use <code>raster</code> package, load data and specify projection string (unless data is GEO tiff, in that case it’s in the metadata).

##### Optimisation (Alison)

**Problem**

* Profiling and how to make the loop quicker.

**Answer**

* Apply lineprof/profvis to profile whole sections of program/script. See [Hadley's profiling guide](http://adv-r.had.co.nz/Profiling.html).
* Might be possible to use closures to precalculate distributions.
* Use C++ via Rcpp.
* Use JAGS or stan - parallelisable implementations.

##### Live demo (Chris)

* [Live code demo of list columns](http://sheffieldr.github.io/assets/material/2017-03/ListColumnDemo.R).
* Use saveRDS(), readRDS() as alternative to store as text.
* Might be problems with speed - use profiling to compare with text storage.

##### EEG processing (José)

**Problem**

* Getting raw data into format required for R package for signal processing.
* Bad documentation!

**Answer**

* Use Matlab with manufacturer software?

##### Data handling (Kassandra)

**Problem**

* Problem with large data - can she write all objects together?

**Answer**

* Need to be able to write sequentially - plugin for R to speak to database e.g. RSQLite or use RDS.
* Sparse matrix?
* R ArcGIS interface?

##### Profiling update (Alison)

* Constant matrix each time - copy on modify?
* Avoid assignment of matrices within for loop (nested).
