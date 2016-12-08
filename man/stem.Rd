\newcommand{\CRANpkg}{\href{https://CRAN.R-project.org/package=#1}{\pkg{#1}}}

\name{stem}
\alias{Snowball_Stem_Annotator}
\title{Word Stem Annotator}
\description{
  Generate an annotator which computes word stem annotations using
  \code{\link[SnowballC]{wordStem}()} from package \CRANpkg{SnowballC}.
}
\usage{
Snowball_Stem_Annotator(language = "porter")
}
\arguments{
  \item{language}{a character string giving the document language.
    See the documentation for \code{\link[SnowballC]{wordStem}()} for
    more information.}
}
\value{
  A \code{\link[NLP]{Annotator}} object giving the generated word stem
  annotator.
}
\examples{
require("NLP")
doc <- readRDS(system.file("texts", "stanford.rds", package = "NLP"))
s <- content(doc)
a <- annotations(doc)[[1L]]

stem_annotator <- Snowball_Stem_Annotator()
stem_annotator(s, a)
}
