---
title       : Coefficient Chooser for mtcars Dataset
subtitle    : Developing Data Products project
author      : Don Resnik  
job         : Software Engineer
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Coefficient Chooser for mtcars

How many times has this happened to you...

You wanted to compare diffenent combinations of mtcars coefficients
But did not want to spend your day re-computing the linear models or
Re-drawing the plots.


Well...your solution is here



--- .class #id 

## The mtcars coefficient chooser is here

1. Pick any combination of coeffiencents to predict mpg
2. Watch the plot and computations update with every change to the checkboxes
3. Determine the best combination of coefficients
4. Amaze your friends and fool your enemies with your data science skills

--- .class #id 

## How is works

The coefficient chooser uses Shiny to build the dynamic user interface, compute the linear model and
plot the resutls

--- .class #id 

## if you would like to learn more




