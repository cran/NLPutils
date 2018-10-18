\newcommand{\CRANpkg}{\href{https://CRAN.R-project.org/package=#1}{\pkg{#1}}}

\name{diversity}
\alias{QDAP_Diversity_Annotator}
\title{Document Diversity Annotator}
\description{
  Generate an annotator which computes document diversity annotations
  for English documents using \code{\link[qdap]{diversity}()} from package
  \CRANpkg{qdap}.
}
\usage{
QDAP_Diversity_Annotator()
}
\value{
  A \code{\link[NLP]{Annotator}} object giving the generated document
  diversity annotator.
}
\examples{
require("NLP")
doc <- readRDS(system.file("texts", "stanford.rds", package = "NLP"))
s <- content(doc)
a <- annotation(doc)

diversity_annotator <- QDAP_Diversity_Annotator()
diversity_annotator(s, a)
}
