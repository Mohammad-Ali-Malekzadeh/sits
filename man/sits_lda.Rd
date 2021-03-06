% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sits_machine_learning.R
\name{sits_lda}
\alias{sits_lda}
\title{Train a sits classification model using linear discriminant analysis}
\usage{
sits_lda(data = NULL, formula = sits_formula_logref(), ...)
}
\arguments{
\item{data}{Time series with the training samples.}

\item{formula}{A symbolic description of the model to be fit.
(default: sits_formula_logref).}

\item{...}{Other parameters to be passed to MASS::lda function.}
}
\value{
Model fitted to input data
                        to be passed to \code{\link[sits]{sits_classify}}
}
\description{
This function receives a tibble with a set of attributes X
for each observation Y. These attributes are the values of the time series
for each band. The method performs a linear discriminant analysis (lda)
to obtain a predictive model.
This function is a front-end to the "lda" method in the "MASS" package.
Please refer to the documentation in that package for more details.
}
\examples{
\dontrun{

# Retrieve the set of samples for Mato Grosso region (provided by EMBRAPA)
samples_2bands <- sits_select(samples_mt_4bands, bands = c("NDVI", "EVI"))

# Build a machine learning model based on deep learning
ml_model <- sits_train(samples_2bands, sits_lda())

# get a point and classify the point with the ml_model
point.tb <- sits_select(point_mt_6bands, bands = c("NDVI", "EVI"))
class.tb <- sits_classify(point.tb, ml_model)
plot(class.tb, bands = c("NDVI", "EVI"))
}
}
\author{
Alexandre Ywata de Carvalho, \email{alexandre.ywata@ipea.gov.br}

Rolf Simoes, \email{rolf.simoes@inpe.br}

Gilberto Camara, \email{gilberto.camara@inpe.br}
}
