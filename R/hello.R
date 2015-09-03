# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'
#' @export
hello <- function() {
  print("Hello, world!")
  data(RoughSetData)
  wine.data <- RoughSetData$wine.dt
  set.seed(13)
  wine.data <- wine.data[sample(nrow(wine.data)),]

  idx <- round(0.6 * nrow(wine.data))
  wine.tra <- RoughSets::SF.asDecisionTable(wine.data[1:idx,],
                                decision.attr = 14,
                                indx.nominal = 14)

  cut.values <- RoughSets::D.discretization.RST(wine.tra,
                                     type.method = "unsupervised.quantiles",
                                     nOfIntervals = 3)
  data.tra <- RoughSets::SF.applyDecTable(wine.tra, cut.values)
  print(class(data.tra))

  rules <- RoughSets::RI.AQRules.RST(data.tra, confidence = 0.9, timesCovered = 3)
  rules <- RI.AQRules.RST(data.tra, confidence = 0.9, timesCovered = 3)
  rules
}

# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'
#' @export
RI.AQRules.RST <- function(decision.table, confidence = 1.0, timesCovered = 1)  {

return(1)
}

