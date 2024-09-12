# What is Time Series Analysis?

![985591_8Q478bKzRGSb2HSyUcyTsg](https://github.com/TechE74/ARIMA-Modeling-for-Stock-Prediction/assets/129526047/de1705bf-d13d-441b-b1b9-d21858e2aa3e)
Time series analysis is a statistical technique used to analyze and extract meaningful patterns, trends, and relationships from sequential data points collected over time. In time series analysis, data is recorded and organized in chronological order, allowing us to observe how variables change and evolve over time.

# Definition of Time Series

A time series is a sequence of observations recorded at regular intervals over a specific period. 
                                      OR
Time series data are data points collected over a period of time as a sequence of time gap. Time series data analysis means analyzing the available data to find out the pattern or trend in the data to predict some future values which will, in turn, help more effective and optimize decisions.

It consists of two main components:

Time Index: The time index represents the chronological order of observations, typically expressed in dates, months, years, or timestamps.

Data Points: The data points are the values associated with each specific time index. These can represent various types of variables, such as stock prices, temperature readings, sales figures, or any other measurable quantity.

Time series data can exhibit various patterns, including trends, seasonality, cyclicality, and irregular fluctuations. Analyzing these patterns helps uncover valuable insights and make predictions about future behavior.


# Method for Time Series Analysis
![AAEAAQAAAAAAAAPtAAAAJDg2NTNiMjM3LTlmYjQtNGYwOS04NmFhLTMyODkwODNlYzY2Mg-490x139](https://github.com/TechE74/ARIMA-Modeling-for-Stock-Prediction/assets/129526047/ccf47afc-f223-4071-a558-5b351b7dcdbe)


Moreover, time series analysis can be classified as:

1. Parametric and Non-parametric
2. Linear and Non-linear and
3. Univariate and multivariate


![images](https://github.com/TechE74/ARIMA-Modeling-for-Stock-Prediction/assets/129526047/eccaaded-90fb-4619-8809-0909bd38e1e4)

# Parametric Time Series Analysis
Parametric time series analysis involves making assumptions about the underlying distribution and structure of the time series. These assumptions allow us to estimate the parameters of a specific model and make predictions based on the model's characteristics. Here are some common parametric methods used in time series analysis:

### Autoregressive Integrated Moving Average (ARIMA): 
> ARIMA models are widely used for forecasting time series data. They assume that the future values of a variable can be predicted based on its own past values and the past values of the forecast errors. ARIMA models require the data to be stationary or transformed to achieve stationarity through differencing.

### Seasonal ARIMA (SARIMA): 
> SARIMA models extend the ARIMA framework to handle time series data with seasonal patterns. They incorporate additional seasonal components to capture the seasonal variations and trends in the data.

### Autoregressive Integrated Moving Average with Exogenous Variables (ARIMAX): 
> ARIMAX models incorporate exogenous variables, such as economic indicators or weather data, along with the lagged values of the dependent variable. This allows for the inclusion of external factors that may influence the time series.

### Vector Autoregression (VAR): 
> VAR models are used to analyze and forecast the dynamic relationship between multiple time series variables. They assume that each variable in the system is a linear function of its own lagged values and the lagged values of other variables in the system.

### State Space Models: 
> State space models represent a time series as the output of an unobserved stochastic process. They consist of two equations: the measurement equation, which relates the observed data to the underlying state variables, and the transition equation, which describes the evolution of the state variables over time.



# Non-parametric Time Series Analysis
Non-parametric time series analysis methods do not make explicit assumptions about the underlying data distribution. Instead, they focus on identifying and estimating patterns and relationships in the data without prescribing a specific model structure. Here are some common non-parametric methods:

### Moving Average (MA): 
> The moving average method calculates the average of a fixed number of consecutive observations to smooth out random fluctuations and identify underlying trends.

### Exponential Smoothing: 
> Exponential smoothing methods assign exponentially decreasing weights to past observations, giving more importance to recent data points. These methods capture short-term trends and seasonality.

### Kernel Smoothing: 
> Kernel smoothing techniques estimate the underlying distribution of a time series by applying a kernel function to each data point. They are useful for estimating smooth curves or densities from noisy or irregularly sampled data.

### Spectral Analysis: 
> Spectral analysis examines the frequency components of a time series using techniques such as Fourier analysis or wavelet analysis. It helps identify periodic patterns and dominant frequencies in the data.



Parametric methods in time series analysis make explicit assumptions about the data distribution and structure, allowing for the estimation of model parameters and accurate predictions. However, these assumptions can restrict their flexibility in capturing complex relationships and long-term dependencies. Non-parametric methods, on the other hand, are more flexible and suitable when the underlying data distribution is unknown, or when dealing with non-linear and non-stationary patterns in the time series. While non-parametric methods offer greater flexibility, they may not capture complex relationships and long-term dependencies as effectively as parametric models. The choice between these approaches depends on the specific characteristics of the data, the analysis objectives, and the assumptions that can reasonably be made about the underlying process.

# Techniques

Time series analysis involves a variety of techniques to understand and model the patterns and behavior of time-dependent data. Here are four commonly used techniques:

### ARIMA Models: 
>ARIMA (Autoregressive Integrated Moving Average) models are widely used for time series forecasting. They combine autoregressive (AR), differencing (I), and moving average (MA) components to capture the autocorrelation, trend, and seasonality in the data. ARIMA models can be applied to both univariate and multivariate time series data.

### Box-Jenkins Multivariate Models: 
> The Box-Jenkins methodology is a systematic approach for modeling and forecasting multivariate time series data. It involves model identification, estimation, diagnostic checking, and model selection. Box-Jenkins models incorporate autoregressive (AR), moving average (MA), and seasonal components to capture the relationships and dynamics between multiple variables.

### Holt-Winters Exponential Smoothing: 
> Holt-Winters exponential smoothing is a technique used for forecasting time series data with trend and seasonality. It includes three variations: single, double, and triple exponential smoothing. These methods provide robust forecasts by considering the level, trend, and seasonality components of the data.

### ARIMA Modeling: 
> ARIMA modeling specifically refers to the application of ARIMA models for time series analysis. It involves identifying the appropriate orders of autoregressive (p), differencing (d), and moving average (q) components based on the autocorrelation and partial autocorrelation functions. ARIMA modeling also includes model estimation, diagnostic checking, and forecasting.

These techniques provide powerful tools for understanding and predicting the behavior of time series data. However, the selection of the most suitable technique depends on the specific characteristics of the data, such as trend, seasonality, and the presence of exogenous variables. It is important to assess the assumptions and limitations of each technique to ensure accurate and reliable analysis.



# When To Use Arima ???
ARIMA (Autoregressive Integrated Moving Average) models are commonly used in time series analysis when the data exhibits certain characteristics. Here are some scenarios where ARIMA models are particularly useful:

> Stationary Time Series: ARIMA models are suitable for time series data that exhibit stationarity. Stationarity implies that the statistical properties of the data, such as mean and variance, do not change over time. If the data is non-stationary, differencing can be applied to achieve stationarity before fitting an ARIMA model.

> Autocorrelation and Partial Autocorrelation: ARIMA models are effective when there is significant autocorrelation in the time series. Autocorrelation refers to the correlation between the current observation and past observations at different lags. The autocorrelation function (ACF) and partial autocorrelation function (PACF) can help identify the appropriate orders of the AR and MA components in the ARIMA model.

> Seasonality: ARIMA models can handle time series data with seasonal patterns. Seasonality refers to regular and repeating patterns that occur within specific time periods, such as daily, monthly, or yearly. Seasonal ARIMA (SARIMA) models incorporate seasonal differencing and seasonal AR and MA components to capture these patterns.

> Forecasting: ARIMA models are widely used for time series forecasting. They can provide accurate predictions based on historical data patterns and trends. ARIMA models are especially suitable when the underlying time series does not exhibit complex nonlinear relationships or external factors that significantly impact the data.

>Limited Exogenous Variables: ARIMA models can handle a limited number of exogenous variables, which are external factors that can influence the time series. If there are multiple exogenous variables or complex relationships with the time series, other models such as ARIMAX (ARIMA with exogenous variables) or VAR (Vector Autoregression) may be more appropriate.


# Steps to Arima Modelling

Our first step is to convert extracted data to time series object by below code :
 > ts.data = ts(raw.data, start = c(2014,5), frequency = 12)  
 >   `raw.data` -> univariate data which we are converting to time series using ts()
 >   `ts()` -> timeseries function
 >   `start` -> start gives the starting time of the data 
 >   `frequency` ->  monthly(12), yearly(1), half(6), quaterly(4)

![download](https://github.com/TechE74/ARIMA-Modeling-for-Stock-Prediction/assets/129526047/4f99cafd-c084-439f-8797-5d593520a7f4)

<img width="400" alt="Screen-Shot-2018-02-05-at-12 58 27-PM-490x141" src="https://github.com/TechE74/ARIMA-Modeling-for-Stock-Prediction/assets/129526047/5b6a582f-7eb0-4fc6-88d1-6340573ea0e9">


Before performing any EDA on the data, we need to understand the three components of a time series data:

### Trend: 
> A long-term increase or decrease in the data is referred to as a trend. It is not necessarily linear. It is the underlying pattern in the data over time.
### Seasonal: 
> When a series is influenced by seasonal factors i.e. quarter of the year, month or days of a week seasonality exists in the series. It is always of a fixed and known period. E.g. – A sudden rise in sales during Christmas, etc.
### Cyclic: 
> When data exhibit rises and falls that are not of the fixed period we call it a cyclic pattern. For e.g. – duration of these fluctuations is usually of at least 2 years.

To understand which component suits our data :
> components.ts = decompose(ts.data)   
> plot(components.ts)

<img width="700" alt="Screen-Shot-2018-02-05-at-12 59 40-PM-490x204" src="https://github.com/TechE74/ARIMA-Modeling-for-Stock-Prediction/assets/129526047/53883f3a-516a-4225-ac5d-a1053b04dcf9">

"The decompose() function separates the time series into its individual components, namely trend, seasonality, and residuals. The function estimates these components using various methods such as moving averages, regression, or Fourier analysis, depending on the decomposition approach chosen."
"The plot() function is used to create a graphical representation of the components stored in the components.ts object. The resulting plot typically includes separate subplots for the trend, seasonality, and residuals, allowing you to visually examine the individual components and their contributions to the overall time series behavior."

> NOTE
> By decomposing a time series into its components, you gain insights into the underlying patterns and characteristics of the data. The trend component represents the long-term direction or behavior of the series, while the seasonal component captures regular, repetitive patterns within shorter time intervals. The residuals component represents the unexplained or random fluctuations in the data after accounting for the trend and seasonality.
> Plotting the decomposed components helps you understand how each component contributes to the overall time series, identify any anomalies or outliers, and assess the effectiveness of the decomposition in capturing the desired patterns.

# Acheive Stationarity
> difference the data – compute the differences between consecutive observations
> log or square root the series data to stabilize non-constant variance
if the data contains a trend, fit some type of curve to the data and then model the residuals from that fit
> Unit root test – This test is used to find out that first difference or regression which should be used on the trending data to make it stationary. In Kwiatkowski-Phillips-Schmidt-Shin (KPSS) test, small p-values suggest differencing is required.


### CODE
> library("fUnitRoots")
> urkpssTest(ts.data, type = c("tau"), lags = c("short"),use.lag = NULL, doplot = TRUE)
> tsstationary = diff(ts.data, differences=1)
> plot(tsstationary)

<img width="700" alt="Screen-Shot-2018-02-05-at-1 00 17-PM-490x236" src="https://github.com/TechE74/ARIMA-Modeling-for-Stock-Prediction/assets/129526047/248a6541-a9a4-4cf0-9004-518042e89b23">

![download](https://github.com/TechE74/ARIMA-Modeling-for-Stock-Prediction/assets/129526047/b7fa1009-7342-48c9-8ce8-952c22dc3655)


# Detecting Seasonality using plots and methods
A seasonal subseries plot
Multiple box plot
Auto correlation plot
ndiffs() is used to determine the number of first differences required to make the time series non-seasonal

# Calculate Autocorrelation
CODE
> acf(ts.data,lag.max=34)
> "The autocorrelation function (acf()) gives the autocorrelation at all possible lags. The autocorrelation at lag 0 is included by default which always takes the value 1 as it represents the correlation between the data and themselves. As we can infer from the graph above, the autocorrelation continues to decrease as the lag increases, confirming that there is no linear association between observations separated by larger lags."

CODE
> timeseriesseasonallyadjusted <- ts.data- timeseriescomponents$seasonal
> tsstationary <- diff(timeseriesseasonallyadjusted, differences=1)
> "To remove seasonality from the data, we subtract the seasonal component from the original series and then difference it to make it stationary"


Smoothing is usually done to help us better see patterns, trends in time series. Generally it smooths out the irregular roughness to see a clearer signal. For seasonal data, we might smooth out the seasonality so that we can identify the trend. Smoothing doesn’t provide us with a model, but it can be a good first step in describing various components of the series.

To smooth time series:
<> Ordinary moving average (single, centered) – at each point in time we determine averages of observed values that precede a particular time.
<> To take away seasonality from a series, so we can better see a trend, we would use a moving average with a length = seasonal span. Seasonal span is the time period after which a seasonality repeats, e.g. – 12 months if seasonality is noticed every December. Thus in the smoothed series, each smoothed value has been averaged across the complete season period.
<> Exponentially weighted average – at each point of time, it applies weighting factors which decrease exponentially. The weighting for each older datum decreases exponentially and never reaching zero.


# Fitting Model

Once the data is prepared and meets the modeling assumptions, determining the appropriate order of the model requires three variables: p, d, and q. These variables represent the order of the autoregressive (AR), integrated (I), and moving average (MA) components of the model, respectively, and must be non-negative integers.

To assess suitable values for p and q, the acf() and pacf() functions are used. The pacf() function calculates the autocorrelation function at lag k, which measures the correlation between data points that are k steps apart, while considering their correlation with the data in between. This analysis helps identify the number of autoregressive (AR) coefficients (p-value) in an ARIMA model.

Here is an R code snippet to execute the acf() and pacf() commands:

acf(tsstationary, lag.max=34 ,main = "Autocorrelation Function")
pacf(tsstationary, lag.max=34 ,main = "Partial Autocorrelation Function")

![2-490x274](https://github.com/TechE74/ARIMA-Modeling-for-Stock-Prediction/assets/129526047/757dc306-af9b-4100-9f9e-696d9112d311)



# Apply arima

> fitARIMA <- arima(tsData, order=c(1,1,1),seasonal = list(order = c(1,0,0), period = 12),method="ML")
> library(lmtest)
> coeftest(fitARIMA) 

> `order` specifies the non-seasonal part of the ARIMA model: (p, d, q) refers to the AR order, the degree of difference, and the MA order.

> `seasonal` specifies the seasonal part of the ARIMA model, plus the period (which defaults to frequency(x) i.e 12 in this case). This function requires a list with components order and period, but given a numeric vector of length 3, it turns them into a suitable list with the specification as the ‘order’.

> `method` refers to the fitting method, which can be ‘maximum likelihood(ML)’ or ‘minimize conditional sum-of-squares(CSS)’. The default is conditional-sum-of-squares.


### NOTE
R utilizes a method called maximum likelihood estimation (MLE) to estimate the ARIMA model. MLE aims to find the values of p, d, and q that maximize the likelihood of obtaining the observed data, which is represented by the log-likelihood function.

To compare different models and select the most suitable one, we can use Akaike's Information Criterion (AIC) and Schwarz Bayesian Information Criterion (BIC). AIC measures the goodness of fit while considering the complexity of the model, and lower AIC values indicate better models. BIC, on the other hand, penalizes models with a larger number of parameters to avoid overfitting.

When estimating model parameters using MLE, it's possible to improve the likelihood by adding more parameters. However, this may lead to overfitting, where the model performs well on the observed data but fails to generalize to new data. BIC helps address this issue by incorporating a penalty term for the number of parameters in the model, favoring simpler models.

In addition to AIC and BIC, it's crucial to carefully examine the coefficient values of the model. Their significance level plays a vital role in deciding whether to include a particular component or not.

By considering AIC, BIC, and the significance of coefficients, we can make informed decisions about which ARIMA model is most appropriate for our data.

## Box-Ljung test
It is a test of independence at all lags up to the one specified. Instead of testing randomness at each distinct lag, it tests the "overall" randomness based on a number of lags, and is therefore a portmanteau test. It is applied to the residuals of a fitted ARIMA model, not the original series, and in such applications the hypothesis actually being tested is that the residuals from the ARIMA model have no autocorrelation.

### CODE
> acf(fitARIMA$residuals)
> library(FitAR)
> boxresult-LjungBoxTest (fitARIMA$residuals,k=2,StartLag=1)
> plot(boxresult[,3],main= "Ljung-Box Q Test", ylab= "P-values", xlab= "Lag")
> qqnorm(fitARIMA$residuals)
> qqline(fitARIMA$residuals)

![3](https://github.com/TechE74/ARIMA-Modeling-for-Stock-Prediction/assets/129526047/bfaa3347-5647-41fe-9756-573016f1e704)
![Screen-Shot-2018-02-05-at-1 18 13-PM](https://github.com/TechE74/ARIMA-Modeling-for-Stock-Prediction/assets/129526047/ac0bf12b-92ef-4fdd-93b2-5b0eaa91dbd8)
![Screen-Shot-2018-02-05-at-1 18 21-PM](https://github.com/TechE74/ARIMA-Modeling-for-Stock-Prediction/assets/129526047/b4ee2f48-f5a5-410b-a904-e6435c4a1bd1)

The p-values for the Ljung-Box Q test all are well above 0.05, indicating “non-significance.”

The values are normal as they rest on a line and aren’t all over the place.


# TESTFLOW DAIGRAM

![6](https://github.com/TechE74/ARIMA-Modeling-for-Stock-Prediction/assets/129526047/74ac39ee-9a64-49ff-b979-9e162a411f2a)



# Advance Function

> auto.arima() function:
The forecast package provides two functions: ets() and auto.arima() for the automatic selection of exponential and ARIMA models.

The auto.arima() function in R uses a combination of unit root tests, minimization of the AIC and MLE to obtain an ARIMA model.

KPSS test is used to determine the number of differences (d) In Hyndman-Khandakar algorithm for automatic ARIMA modeling.

The p,d, and q are then chosen by minimizing the AICc. The algorithm uses a stepwise search to traverse the model space to select the best model with smallest AICc.

If d=0 then the constant c is included; if d≥1 then the constant c is set to zero. Variations on the current model are considered by varying p and/or q from the current model by ±1 and including/excluding c from the current model.

The best model considered so far (either the current model, or one of these variations) becomes the new current model.

Now, this process is repeated until no lower AIC can be found.

auto.arima(ts.data, trace=TRUE) 

# Forecasting 


The parameters of that ARIMA model can be used as a predictive model for making forecasts for future values of the time series once the best-suited model is selected for time series data.

The d-value effects the prediction intervals —the prediction intervals increases in size with higher values of ‘d’. The prediction intervals will all be essentially the same when d=0 because the long-term forecast standard deviation will go to the standard deviation of the historical data.

There is a function called predict() which is used for predictions from the results of various model fitting functions. It takes an argument n.ahead() specifying how many time steps ahead to predict.

> predict(fitARIMA,n.ahead = 5)

forecast.Arima() function in the forecast R package can also be used to forecast for future values of the time series. Here we can also specify the confidence level for prediction intervals by using the level argument.

> futurVal <- forecast.Arima(fitARIMA,h=10, level=c(99.5))
> plot.forecast(futurVal)

We need to make sure that the forecast errors are not correlated, normally distributed with mean zero and constant variance. We can use the diagnostic measure to find out the appropriate model with best possible forecast values.
![7](https://github.com/TechE74/ARIMA-Modeling-for-Stock-Prediction/assets/129526047/1550c2c6-205f-4888-bd37-83414f5266d9)


The forecasts are shown as a blue line, with the 80% prediction intervals as a dark shaded area, and the 95% prediction intervals as a light shaded area.

This is the overall process by which we can analyze time series data and forecast values from existing series using ARIMA.
