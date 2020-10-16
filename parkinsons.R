#' This script is a template for candidates to download the
#' Parkinson's data set from the UCI Machine Learning Repository.
#' More information on this dataset can be found here:
#' https://archive.ics.uci.edu/ml/datasets/parkinsons

PARKINSONS_DATA_URL <- "https://archive.ics.uci.edu/ml/machine-learning-databases/parkinsons/parkinsons.data"
PARKINSONS_DATA_PATH <- basename(PARKINSONS_DATA_URL)

#' Download the Parkinson's dataset from UCI Machine Learning Repository
#' @return A dataframe
get_parkinsons_data <- function() {
  parkinsons_download_status <- download.file(PARKINSONS_DATA_URL, PARKINSONS_DATA_PATH)
  if (parkinsons_download_status == 0) {
    parkinsons <- read.csv(PARKINSONS_DATA_PATH)
    return(parkinsons)
  } else {
    stop("Could not download data.")
  }
}

main <- function() {
  parkinsons <- get_parkinsons_data()
}

main()