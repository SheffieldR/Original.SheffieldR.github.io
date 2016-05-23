---
layout: post
title:  "NBN Hack Results"
categories: hack
date:   2016-05-20 19:30:00 +0000
excerpt_separator: <!--more-->
---
In March we ran a series of hack events centred around the National Biodiversity Network's data gateway. We teamed up with Sheffield Wildlife Trust to investigate the data and see what we might be able to learn. Thanks to Tom August's `rnbn` package, it was a cinch to get the data which is kindly contributed by volunteers and organisations across the country.

Our hack was organised around several projects selected after a pitch session. Attendees chose a team based on the project and collaborated using a shared [HackPad](https://docs.google.com/document/d/19ctbFk6Y5Dt_YMxSEoWz0bsoIHgmCN8jUsUs3TU2qKI/edit) and pushed their code to [a central GitHub repository](https://github.com/SheffieldR/NBN_hack_series).

<!--more-->

# The Teams

## Habitats vs Biodiversity

The Sheffield Wildlife Trust have compiled a wide variety of habitat data into shapefile spatial polygons. They would like to be able to integrate it with biodiversity data from the NBN to facilitate further analysis. So the aim of this project is to produce a simple shiny app through which the user can select species/taxa of interest, query the NBN for data and match it to spatial polygon data. The app would then output an analytical dataset that could then be used for further analysis. Outputs could therefore feed into the spatial analysis project.

Repository link: [Habitats vs Biodiversity](https://github.com/SheffieldR/NBN_hack_series/tree/master/Habitats_Vs_Biodiversity)

## Humans vs Biodiversity

This team sought to determine how Sheffield's biodiversity had changed with Sheffield's population.  As Sheffield's urban environments grow with the population, the team wanted to understand how local wildlife had changed over time. The team looked into measures that could be used to estimate population density, river quality from other open data sources alongside an estimate for biodiversity in the data from the NBN gateway.

Repository link: [Humans vs Biodiversity](https://github.com/SheffieldR/NBN_hack_series/tree/master/Humans_Vs_Biodiversity)

## Team Temporal

Team Temporal wanted to study how species were represented in the NBN Gateway data sets over time. The team aimed to build plots of records over time for species with more than 1000 records in the data set. Additionally, the team sought to apply [Telfer's change index](https://github.com/BiologicalRecordsCentre/sparta/blob/master/R/telfer.R) to produce a summary of the change over time for species in Sheffield.

Repository link: [Team Temporal](https://github.com/SheffieldR/NBN_hack_series/tree/master/Team_Temporal)

## Bird Bingo

Bird Bingo is a game where players are given a virtual "card" with pictures of several species they might see in their area. When they see one of their species they can check it off. The team used the NBN Gateway to get species the user was likely to see by querying the Gateway for local species in the bird TVK species group. The team used the [Encyclopedia of Life](http://eol.org)'s API to get images for the selected species and presented the player's card and handled checking off species using the [Shiny web framework](http://shiny.rstudio.com).

Repository link: [BirdBingo](https://github.com/SheffieldR/NBN_hack_series/tree/master/BirdBingo)

## Team Python

This team wrote an NBN Gateway package for Python a la `rnbn`.

Repository link: [lionfish0/pynbn](https://github.com/lionfish0/pynbn)


See the [Hack details page](/nbn-hack/) for details on the event including how to register. To get updates on the hack and our events, follow us on Twitter: [@Sheffield\_R\_](https://twitter.com/Sheffield_R_).
