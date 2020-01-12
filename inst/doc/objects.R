## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup---------------------------------------------------------------
library(details)

## ------------------------------------------------------------------------
 iris%>%
  details::details(summary = 'data.frame')

## ------------------------------------------------------------------------
 iris%>%
  tibble::as_tibble()%>%
  details::details(summary = 'tibble')

## ------------------------------------------------------------------------
 list(a = 1,b = head(iris))%>%
  details::details(summary = 'list')

## ------------------------------------------------------------------------

details(
  plot(x=mtcars$mpg,y=mtcars$wt),
  summary = 'plots',
  imgur = FALSE)


