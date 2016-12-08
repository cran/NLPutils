\newcommand{\CRANpkg}{\href{https://CRAN.R-project.org/package=#1}{\pkg{#1}}}

\name{polarity}
\alias{QDAP_Polarity_Annotator}
\title{Sentence Polarity Annotator}
\description{
  Generate an annotator which computes sentence polarity annotations for
  English documents using \code{\link[qdap]{polarity}()} from package 
  \CRANpkg{qdap}.
}
\usage{
QDAP_Polarity_Annotator()
}  
\value{
  A \code{\link[NLP]{Annotator}} object giving the generated sentence
  polarity annotator.
}
\examples{
require("NLP")
doc <- readRDS(system.file("texts", "stanford.rds", package = "NLP"))
s <- content(doc)
a <- annotations(doc)[[1L]]

polarity_annotator <- QDAP_Polarity_Annotator()
polarity_annotator(s, a)
}
