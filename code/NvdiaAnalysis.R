# Load Packages
library(quantmod)
library(tseries)
library(timeSeries)
library(forecast)
library(tidyverse)
library(gridExtra)

# Load Tesla stocks data 
getSymbols.yahoo("NVDA",from = "2013-05-31" ,to = Sys.Date(), periodicity = "daily",env = globalenv() )

# basic Overview of data
glimpse(NVDA)

# summary of data 
summary(NVDA)

#dimensions of data 
dim(NVDA) # 2517 records


# As we extracted historic data of last 10 years 

# no of records assumed 
# 1 years = 365 days
# 13 years = 365* 13 days = 4745 days = 4745 records
# Available records = 2517

# Reason loss
# 1> market close at saturday sunday
# 2> market also close on particular holidays

# this means our data is inconsistent

# type of variables
sapply(NVDA, class)

# check for missing 

sapply(NVDA , function(x) is.na(class))


# Visualizations

# ggplot(NVDA, aes(NVDA.variable)): This sets up the initial ggplot object, specifying the 'NVDA' dataset and mapping the 'NVDA.Open' variable to the x-axis (horizontal axis) using the aes() function.
# geom_histogram(bins = 50, aes(y = ..density..), col = "red", fill = "red", alpha = 0.3): This adds a histogram layer to the plot. The geom_histogram() function creates the histogram, and the bins parameter sets the number of bins (bars) in the histogram. The aes(y = ..density..) mapping inside geom_histogram() is used to scale the histogram so that the y-axis represents the density rather than the count. The remaining parameters specify the color, fill, and transparency of the bars.
# geom_density(): This adds a density plot layer to the plot. The geom_density() function creates a smooth line representing the estimated density of the data. By default, it uses the same variable mapped to the x-axis from the initial ggplot() call.
# xlim(c(0, 1000)): This sets the x-axis limits of the plot to range from 0 to 1000 using the xlim() function. It restricts the display range to values within that range.

p1 = ggplot(NVDA, aes(NVDA.Open)) + geom_histogram(bins = 50, aes(y = ..density..), col = "red", fill = "red", alpha = 0.3) + geom_density() + xlim(c(0, 1000))
p2 = ggplot(NVDA, aes(NVDA.High)) + geom_histogram(bins = 50, aes(y = ..density..), col = "red", fill = "red", alpha = 0.3) + geom_density() + xlim(c(0, 1000))
p3 = ggplot(NVDA, aes(NVDA.Low)) + geom_histogram(bins = 50, aes(y = ..density..), col = "red", fill = "red", alpha = 0.3) + geom_density() + xlim(c(0, 1000))
p4 = ggplot(NVDA, aes(NVDA.Close)) + geom_histogram(bins = 50, aes(y = ..density..), col = "red", fill = "red", alpha = 0.3) + geom_density() + xlim(c(0, 1000))
grid.arrange(p1,p2,p3,p4, nrow=2,ncol=2)

Nvedia.ts<-ts(NVDA)
# plotting hihg component
plot.ts(NVDA$NVDA.High, xlab = "Time", ylab = "High value", main = "Time Series", col = "red")

# plotting all other components
par(mfrow=c(1,2))
tsdisplay(NVDA, xlab = "Time", ylab = "High value", main = "Time Series", col = "red")


# plotting chart series
chartSeries(NVDA,type = "auto", theme = chartTheme("white", up.col = "green", down.col = "red"))
chartSeries(NVDA, type ="auto")

# Plot the chart with Bollinger Bands
addBBands()

# check for stationarity
print(adf.test(NVDA$NVDA.Close))


par(mfrow =c(1,1))
# decomposing various trends
check<-  as.ts(Nvedia.ts[,1:4])

plot(check, col = "red")


check_1 <- diff(check, differences=1)
plot.ts(check_1, col = "red")

par(mar = c(2, 2, 2, 2))
acf(check[,1], lag.max=60) 
pacf(check[,3],lag.max = 80)
par(pin =c(0,1))
auto.arima(ts(NVDA$NVDA.Close), max.p = 3, max.q = 3, max.d = 3, seasonal = FALSE)

Nvdia.model <- auto.arima(ts(NVDA$NVDA.Close), max.p = 3, max.q = 3, max.d = 3, seasonal = FALSE)

# plot residuals 

par(mar = c(3, 3, 2, 1), fig.width = 8, fig.height = 6)
tsdisplay(residuals(Nvdia.model), lag.max =60, main = 'ARIMA(1,2,3) residuals')


# Custom arima order visuals
custom1 <- arima(NVDA$NVDA.Close, order =c(1,2,1))
tsdisplay(residuals(custom1), lag.max = 40, main = 'ARIMA(1,2,1) residuals')

custom2 <- arima(NVDA$NVDA.Close, order =c(3,2,1))
tsdisplay(residuals(custom2), lag.max = 40, main = 'ARIMA(3,2,1) residuals')


# Plot Models

par(mfrow =c(2,2))

term=100

cast1 <- forecast(Nvdia.model, h =term)
plot(cast1)
cast1

cast2 <- forecast(custom1, h=term)
plot(cast2)

NVDA[2518,]
dim(NVDA)
cast3 <- forecast(custom2, h=term)
plot(cast3)



# Calculate accuracy for cast1
acc_cast1 <- accuracy(cast1)

# Calculate accuracy for cast2
acc_cast2 <- accuracy(cast2)

# Calculate accuracy for cast3
acc_cast3 <- accuracy(cast3)


convert_to_percentage <- function(accuracy) {
  return(round(mean(accuracy[, "MAPE"]), 2)*100)
}

# Calculate accuracy in percentage
accuracy_percentage_cast1 <- convert_to_percentage(acc_cast1)
accuracy_percentage_cast2 <- convert_to_percentage(acc_cast2)
accuracy_percentage_cast3 <- convert_to_percentage(acc_cast3)

# Print accuracy in percentage
cat("Accuracy (cast1):", round(accuracy_percentage_cast1, 2), "%\n")
cat("Accuracy (cast2):", round(accuracy_percentage_cast2, 2), "%\n")
cat("Accuracy (cast3):", round(accuracy_percentage_cast3, 2), "%\n")


# making time plot for forecast eroors 
plot.ts(cast1$residuals)
plot.ts(cast2$residuals)
plot.ts(cast3$residuals)

# make histogram to check wether errors are uniform distributedd or not 

par(mfrow = c(2,3))
ggplot(data.frame(residuals = cast1$residuals), aes(residuals)) + geom_histogram(bins = 50, aes(y = ..density..), col = "red", fill = "red", alpha = 0.3) + geom_density()
ggplot(data.frame(residuals = cast2$residuals), aes(residuals)) + geom_histogram(bins = 50, aes(y = ..density..), col = "red", fill = "red", alpha = 0.3) + geom_density()
ggplot(data.frame(residuals = cast3$residuals), aes(residuals)) + geom_histogram(bins = 50, aes(y = ..density..), col = "red", fill = "red", alpha = 0.3) + geom_density()

