% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cat_for_status.R
\name{cat_for_status}
\alias{cat_for_status}
\alias{dog_for_status}
\title{Use cat or dog pictures for various HTTP status codes}
\usage{
cat_for_status(code, browse = FALSE)

dog_for_status(code, browse = FALSE)
}
\arguments{
\item{code}{An http status code}

\item{browse}{(logical) If \code{TRUE}, opens image in default browser. If
\code{FALSE}, returns the URL of the image.}
}
\value{
Opens image in your default browser, or returns URL
}
\description{
Use cat or dog pictures for various HTTP status codes
}
\details{
uses a service for cats (https://http.cat) and
dogs (https://httpstatusdogs.com)
}
\examples{
\dontrun{
# give back url
cat_for_status(100)
dog_for_status(100)
cat_for_status(301)
dog_for_status(301)
cat_for_status(400)
dog_for_status(400)

# open image in default browser
cat_for_status(400, browse=TRUE)

# not found
# cat_for_status(555)
}
}
