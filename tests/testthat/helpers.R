# taken from https://github.com/tidyverse/reprex/blob/master/tests/testthat/helper.R

## used to make clipboard unavailable locally
# Sys.setenv("CLIPBOARD_AVAILABLE" = TRUE)
# Sys.setenv("CLIPBOARD_AVAILABLE" = FALSE)

NOT_CRAN <- Sys.getenv("NOT_CRAN", unset = "")

ON_CRAN <- identical(NOT_CRAN, "") || identical(tolower(NOT_CRAN), "false")

if (ON_CRAN) {
  Sys.setenv("CLIPBOARD_AVAILABLE" = FALSE)
}

clipboard_available <- function() {
  
  if (Sys.getenv("CLIPBOARD_AVAILABLE", unset = TRUE)) {
    return(clipr::clipr_available())
  }
  FALSE
}

skip_if_no_clipboard <- function() {
  if (!clipboard_available()) {
    testthat::skip("System clipboard is not available - skipping test.")
  }
  return(invisible(TRUE))
}


bench_fun <- function(body,lang = 'r',...){
  
  body <- sprintf('\n\n%s\n\n',details:::capture.print(body,...))
  if(!is.null(lang)){
    body <- sprintf('```%s%s```',lang,body)
  }
  sprintf('<details closed>\n\n%s\n\n</details>\n<br>',body)
  
}

scratch_desc <- function(path = tempdir()){
  
  f <- file.path(path,'DESCRIPTION')
  
  if(file.exists(f))
    unlink(f,force = TRUE)
  
  file.create(f)
  
  d <- desc::desc('!new')
  
  d$write(file = f)

  f
}
