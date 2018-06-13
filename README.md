<!---
All this should be 
commented out
-	What are you doing
-	What level of expertise is needed
-	What is needed on the persons laptop
-	What knowledge they will walk away with
-->
---

# R Shiny Workshop
<img src="https://github.com/WHOIGit/Rshinypresentation/raw/master/images/bluelogo.jpg" alt="theLogo!" width="200px"/>

Learn to create interactive webpages to allow users to interact with your R data, all without any knowledge of HTML. This repository contains the source code for the June 2018 Lunch-n-Learn workshop brought to you by the WHOI Information Services Application Development group.

## Overview
<a href = "http://shiny.rstudio.com/" target = "_blank">Shiny </a> is a UI framework from the folks at RStudio for the development of responsive, R-powered web applications. The code generates web interfaces that runs R code, but no knowlege of web-related code is needed; its pure R.


The aim of this workshop is to take you step-by-step through the construction of a reasonably full-featured app. Each step will add features to the app. All you need to do is follow along the <a href = "https://github.com/WHOIGit/Rshinypresentation/blob/master/worksheet.md" target = "_blank">worksheet </a>  while copying the code from there into your Rstudio console. I will cover as many steps as possible through the class as time allows, any steps or exercises I did not cover can be done on your own time, the source code will be avaliable here.
 
 
## Prerequistes

You'll need to bring this to the workshop. Try to get your software and enviroment ready before the presentation. Come early to the presentation and I'll be around to help with any install isses.

1. A laptop computer with the following already installed:

[R base 3.5.0](http://mirrors.nics.utk.edu/cran/)


[RStudio 1.1.447](https://www.rstudio.com/products/rstudio/download/#download)

Install the binary or .exe to your operating system of choice. Then, open R studio and install the R packages we will need for this workshop.


```r
install.packages("shiny")
install.packages("dplyr")
install.packages("ggplot2")
```

You can come early to the presentation for assisance with installing packages.

2. Familiarity with R: We'll assume some basic facility in R programming and that you can at least read and understand R code that creates custom plots in R's base graphics system. For the most part our explanation of R code will be limited to its relationship to app-building.

