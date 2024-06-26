% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lexicon_afinn.R
\name{lexicon_afinn}
\alias{lexicon_afinn}
\title{AFINN-111 dataset}
\usage{
lexicon_afinn(
  dir = NULL,
  delete = FALSE,
  return_path = FALSE,
  clean = FALSE,
  manual_download = FALSE
)
}
\arguments{
\item{dir}{Character, path to directory where data will be stored. If
\code{NULL}, \link[rappdirs]{user_cache_dir} will be used to determine path.}

\item{delete}{Logical, set \code{TRUE} to delete dataset.}

\item{return_path}{Logical, set \code{TRUE} to return the path of the dataset.}

\item{clean}{Logical, set \code{TRUE} to remove intermediate files. This can
greatly reduce the size. Defaults to FALSE.}

\item{manual_download}{Logical, set \code{TRUE} if you have manually
downloaded the file and placed it in the folder designated by running
this function with \code{return_path = TRUE}.}
}
\value{
A tibble with 2,477 rows and 2 variables:
\describe{
  \item{word}{An English word}
  \item{score}{Indicator for sentiment: integer between -5 and +5}
}
}
\description{
AFINN is a lexicon of English words rated for valence with an integer
between minus five (negative) and plus five (positive). The words have
been manually labeled by Finn Årup Nielsen in 2009-2011.
}
\details{
This dataset is the newest version with 2477 words and phrases.

Citation info:

This dataset was published in Finn Ärup Nielsen (2011),
``A new Evaluation of a word list for sentiment analysis in
microblogs'', Proceedings of the ESWC2011 Workshop on
'Making Sense of Microposts': Big things come in small packages (2011) 93-98.

article\{nielsen11, \cr
author    = \{Finn Äruprup Nielsen\}, \cr
title     = \{A new Evaluation of a word list for sentiment analysis in microblogs\}, \cr
journal   = \{CoRR\}, \cr
volume    = \{abs/1103.2903\}, \cr
year      = \{2011\}, \cr
url       = \{http://arxiv.org/abs/1103.2903\}, \cr
archivePrefix = \{arXiv\}, \cr
eprint    = \{1103.2903\}, \cr
biburl    = \{https://dblp.org/rec/bib/journals/corr/abs-1103-2903\}, \cr
bibsource = \{dblp computer science bibliography, https://dblp.org\} \cr
\}
}
\examples{
\dontrun{
lexicon_afinn()

# Custom directory
lexicon_afinn(dir = "data/")

# Deleting dataset
lexicon_afinn(delete = TRUE)

# Returning filepath of data
lexicon_afinn(return_path = TRUE)
}
}
\seealso{
Other lexicon: 
\code{\link{lexicon_bing}()},
\code{\link{lexicon_loughran}()},
\code{\link{lexicon_nrc}()},
\code{\link{lexicon_nrc_eil}()},
\code{\link{lexicon_nrc_vad}()}
}
\concept{lexicon}
\keyword{datasets}
