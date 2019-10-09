## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup---------------------------------------------------------------
library(details)

## ----results='asis'------------------------------------------------------
 iris%>%
  details::details(summary = 'data.frame')

## ----results='asis'------------------------------------------------------
 iris%>%
  tibble::as_tibble()%>%
  details::details(summary = 'tibble')

## ----results='asis'------------------------------------------------------
 list(a = 1,b = head(iris))%>%
  details::details(summary = 'list')

## ----results='asis'------------------------------------------------------

details(
  plot(x=mtcars$mpg,y=mtcars$wt),
  summary = 'plots')


