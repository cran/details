## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(details)

## -----------------------------------------------------------------------------

sessioninfo::session_info()|>
  details::details(
    summary = 'Current session info',
    open    = TRUE
  )


