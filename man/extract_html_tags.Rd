% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils-text.R
\name{extract_html_tags}
\alias{extract_html_tags}
\alias{extract_text}
\alias{extract_links}
\title{Parse and Extract HTML Elements}
\usage{
extract_html_tags(x, tag, collapse = "\\n", ...)

extract_text(x, collapse = "\\n", ...)

extract_links(x, collapse = NULL, ...)
}
\arguments{
\item{x}{\code{character()}. HTML text to parse.}

\item{tag}{\code{character(1L)}. HTML tag to extract.}

\item{collapse}{\code{character(1L)} or \code{NULL}, Default: \code{"\\n"}. String to collapse multiple
results by. If \code{NULL}, a \code{list()} is returned.}

\item{...}{Arguments passed to or from other methods.}
}
\value{
If \code{collapse} is not \code{NULL}, a \code{character()}. Otherwise, a \code{list()}
containing \code{character()}s.
}
\description{
The messages in \code{{ironmarch}}'s data are HTML. The \verb{extract_*()} functions facilitate
working with them.
}
\examples{
messages <- im_core_dfs$core_message_posts$msg_post[c(51, 119)]
messages

extract_html_tags(messages, "p")

extract_text(messages) # same as `extract_html_tags(messages, tag = "p")`

extract_links(messages) # same as `extract_html_tags(messages, tag = "a", collapse = NULL)`

}
\author{
Brendan Knapp \email{brendan.g.knapp@gmail.com}
}
