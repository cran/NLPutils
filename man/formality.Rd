\newcommand{\CRANpkg}{\href{http://CRAN.R-project.org/package=#1}{\pkg{#1}}}

\name{formality}
\alias{QDAP_Formality_Annotator}
\title{Document Formality Annotator}
\description{
  Generate an annotator which computes document formality annotations
  for English documents using \code{\link[qdap]{formality}()} from package
  \CRANpkg{qdap}.
}
\usage{
QDAP_Formality_Annotator()
}
\value{
  A \code{\link[NLP]{Annotator}} object giving the generated document
  formality annotator.
}
\examples{
require("NLP")
doc <- readRDS(system.file("texts", "stanford.rds", package = "NLP"))
s <- content(doc)
a <- annotations(doc)[[1L]]

formality_annotator <- QDAP_Formality_Annotator()
formality_annotator(s, a)
}
