# Time Series Analysis with R

A collection of eight R notebooks covering time-series visualization, correlation, regression, stochastic modeling, forecasting, spectral analysis, and advanced methods. The notebooks combine mathematical formulations, worked calculations, statistical estimation, diagnostic checks, and interpretations of numerical results and plots.

## Notebooks

| No. | Notebook | Topics |
|---|---|---|
| 01 | [Time Series Elements](01_time_series_elements_R%281%29.ipynb) | Time-indexed data, plotting, transformations, stochastic processes, random walks, trend and seasonality, and simulation. |
| 02 | [Correlation and Stationary Time Series](02_correlation_and_stationary_time_series_R%281%29.ipynb) | Mean and covariance functions, autocorrelation, stationarity, sample ACF, cross-correlation, lag relationships, and prewhitening. |
| 03 | [Time Series Regression and Exploratory Data Analysis](03_time_series_regression_and_EDA_R%281%29.ipynb) | Ordinary least squares, model comparison, lagged regression, detrending, differencing, smoothing, and decomposition. |
| 04 | [ARMA Models](04_ARMA_Models_R.ipynb) | AR and MA processes, causality, invertibility, ACF/PACF, Yule–Walker estimation, maximum likelihood, and forecasting. |
| 05 | [ARIMA Models](05_ARIMA_Models_R.ipynb) | Integrated and seasonal ARIMA, model identification, residual diagnostics, Ljung–Box tests, forecasting, and regression with autocorrelated errors. |
| 06 | [Spectral Analysis and Filtering](06_Spectral_Analysis_and_Filtering_R.ipynb) | Periodicity, aliasing, Fourier transforms, periodograms, spectral density, and linear filters. |
| 07 | [Spectral Estimation](07_Spectral_Estimation_R.ipynb) | DFT/FFT, periodogram uncertainty, spectral smoothing, tapering, leakage, AR spectral estimation, and coherence. |
| 08 | [Additional Topics in Time Series Analysis](08_Additional_Topics_Time_Series_R.ipynb) | ARCH/GARCH/APARCH, unit-root testing, long memory, ARFIMA, state-space models, Kalman filtering, prewhitening, bootstrap, and threshold autoregression. |

## Requirements

- **R** and a Jupyter environment with an **R kernel**, such as **Google Colab with the R runtime**.
- R packages: `astsa`, `xts`, `dynlm`, `zoo`, `fGarch`, `tseries`, and `arfima`.
- Internet access during initial package installation and, if applicable, to retrieve package dependencies.

The package list is recorded in [`requirements.txt`](requirements.txt). The executable [`requirements.R`](requirements.R) installs any missing packages and loads them. Packages included with a standard R installation (e.g., `stats`, `graphics`, `grDevices`, `utils`) do not require separate installation.

**Note:** This repository uses **R**, not Python. `requirements.txt` is a dependency manifest for reference, **not a `pip install -r` file**. Run `requirements.R` from an R session, or use the setup cells provided in individual notebooks.

## Running the notebooks in Google Colab

1. Open a notebook in Google Colab and select an **R runtime**.
2. Run the notebook's initial package setup cell. Alternatively, run the commands from `requirements.R` in an R cell.
3. Execute cells sequentially. Some examples rely on objects created in earlier cells, including simulated time series and fitted models.
4. Inspect the numerical outputs, statistical diagnostics, and visualizations together. Simulated results depend on random seeds where specified.

To install the packages manually from an R cell:

```r
packages = c("astsa", "xts", "dynlm", "zoo", "fGarch", "tseries", "arfima")
missing = packages[!sapply(packages, requireNamespace, quietly=TRUE)]
if (length(missing) > 0) install.packages(missing, repos="https://cloud.r-project.org")
```

The notebooks use datasets included with their respective R packages; their availability depends on the installed package versions. Large simulations or package installations may take longer during the first run.

## Analysis methods

The series develops from descriptive exploration and stationary-process theory through regression, ARMA/ARIMA forecasting, frequency-domain methods, and advanced nonlinear and state-space techniques. Analyses include comparisons of empirical and theoretical behavior, residual and model checks, confidence or prediction intervals where appropriate, and interpretation of graphs and model parameters.

## Reference

Shumway, R. H., and Stoffer, D. S. (2019). *Time Series: A Data Analysis Approach Using R*. Chapman & Hall/CRC.
