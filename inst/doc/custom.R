## ---- include = FALSE----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup---------------------------------------------------------------
library(details)

## ------------------------------------------------------------------------
  R.version %>%
  details::details()

## ------------------------------------------------------------------------
R.version.string %>%
  details::details(
    summary = 'R Version'
  )

## ------------------------------------------------------------------------
R.version.string %>%
  details::details(
    summary = '<font color="red"> R Version </font>'
  )

## ------------------------------------------------------------------------
R.version.string %>%
  details::details(
    summary = 'Open by default',
    open = TRUE
  )

## ------------------------------------------------------------------------
R.version.string %>%
  details::details(
    summary = 'Use the current date as the tooltip',
    tooltip = Sys.Date()
  )

## ------------------------------------------------------------------------

readLines(
  'https://raw.githubusercontent.com/metrumresearchgroup/covrpage/master/_pkgdown.yml'
  )%>%
  details::details(
    summary = 'yaml example',
    lang = 'yml'
    )

## ------------------------------------------------------------------------

details::details(
'<h1 style="color:blue;">This is a Blue Heading</h1><br>
<p style="border: 1px solid powderblue;">There is a border around the text</p>',
summary = 'Raw code example',
lang = NULL
)


