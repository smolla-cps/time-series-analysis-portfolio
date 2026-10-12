# Install R packages required across the eight time series notebooks.
packages = c("astsa", "xts", "dynlm", "zoo", "fGarch", "tseries", "arfima")

missing = packages[!sapply(packages, requireNamespace, quietly=TRUE)]
if (length(missing) > 0) {
  install.packages(missing, repos="https://cloud.r-project.org")
}

# Load shared packages as needed in individual notebooks, e.g. library(astsa).
message("Required R packages are installed or already available.")
