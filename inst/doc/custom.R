## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup---------------------------------------------------------------
library(details)

## ----results='asis'------------------------------------------------------
  R.version %>%
  details::details()

## ----results='asis'------------------------------------------------------
R.version.string %>%
  details::details(
    summary = 'R Version'
  )

## ----results='asis'------------------------------------------------------
R.version.string %>%
  details::details(
    summary = '<font color="red"> R Version </font>'
  )

## ----results='asis'------------------------------------------------------
R.version.string %>%
  details::details(
    summary = 'Open by default',
    open = TRUE
  )

## ----results='asis'------------------------------------------------------
R.version.string %>%
  details::details(
    summary = 'Use the current date as the tooltip',
    tooltip = Sys.Date()
  )

## ----results='asis'------------------------------------------------------

readLines(
  'https://raw.githubusercontent.com/metrumresearchgroup/covrpage/master/_pkgdown.yml'
  )%>%
  details::details(
    summary = 'yaml example',
    lang = 'yml'
    )

