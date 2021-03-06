% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/code.R
\name{http}
\alias{http}
\alias{http_code}
\alias{http_search}
\title{Find out about http status codes}
\usage{
http_code(code, verbose = FALSE)

http_search(text, verbose = FALSE)
}
\arguments{
\item{code}{(character) An http status code, or a regex search for HTTP
status codes. must be length 1. required}

\item{verbose}{(logical) include verbose status code explanation.
Default: \code{FALSE}}

\item{text}{(character) A text string to search the messages or descriptions
of HTTP status codes. required}
}
\value{
on S3 object of class \code{http_code}, that is inside a list
of the form:
\itemize{
\item status_code - the status code
\item message - very brief message explaining the code
\item explanation - more verbose explanation, but still short
\item explanation_verbose - the complete explanation
}
}
\description{
Find out about http status codes
}
\examples{
# search by code
http_code(100)
http_code(400)
http_code(503)
## verbose explanation
http_code(100, verbose = TRUE)
http_code(400, verbose = TRUE)
http_code(503, verbose = TRUE)

# fuzzy code search
http_code('1xx')
http_code('3xx')
http_code('30[12]')
http_code('30[34]')
http_code('30[34]')
## verbose explanation
http_code('1xx', verbose = TRUE)
http_code('3xx', verbose = TRUE)

# search by text message
http_search("request")
http_search("forbidden")
http_search("too")
## verbose explanation
http_search("request", verbose = TRUE)

\dontrun{
http_search("birds")
http_code(999)
}
}
