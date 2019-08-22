library(forecast)

x <- read.csv('/Users/tomhales/Documents/pythonex/IBM.csv')
x <- read.table('/Users/tomhales/Documents/pythonex/BSE500.csv')

hh(x)
head(x)
#fit <- lm(x$Close~
              
fit <- auto.arima(x, xreg=cbind(x,holiday))

fit<- auto.arima(x,cbind(x,x$Close))

stock1<-read.table("/Users/tomhales/Documents/pythonex/IBM.csv",header=TRUE,sep=",")
str(stock1)

## Check for Missing Values
is.na(stock1)

## Total No. of Missing Values
No.OfMissingValues<-if(sum(is.na(stock1)) > 0) {...} 
No.OfMissingValues

## Convert Data Set into Time Series Format
##Starting from 1991 at frequency of 12(monthly data per year) with increment of 1 year
stock<-ts(stock1$Close,start=c(1990,1),freq=7)
str(stock)

## Replace Missing Values and Outliers if any
## Use iterate only when dataset is NOT Seasonal- Check Seasonality plot shown below
##Use Lambda for Box Cox transformations
tsclean(stock,replace.missing=TRUE,lambda=NULL)
tsoutliers(stock,iterate=2,lambda=TRUE)

## ALSO Replace Missing values using linear interpolation for non-seasonal series and periodic structural decomposition using seasonal series
na.interp(stock,lambda=NULL)

##Plot subset of a time series
##Plot for a month of March
plot(subset(stock,month="March"))
plot(subset(stock,quarter=4))

plot(stock)
tsdisplay(stock)

par(mfrow=c(1,1))

## The Plot shows that ACF is decaying and PACF is cutting-offf. Hence it is AutoRegressive potion of ARIMA model
## The Stock follows a trend, Non-Stationary,randomn/ irregular seasonal pattern with minimal cyclicity
## Seasonal Plots
seasonplot(stock,col=rainbow(12),year.labels=TRUE,season.labels=TRUE,ylab="Closing Price",xlab="YEAR")

seasonplot(stock,col=rainbow(7),day.labels=TRUE,season.labels=TRUE,ylab="Closing Price",xlab="DAY")


stock.msts<-msts(stock,seasonal.periods=12,ts.frequency=12,start=1991)
plot(stock.msts)
##Multiple seasons are not present in our dataset
str(stock.msts)
## Fit a Linear Model with Time Series componenets of Trend and Seasonality
## use Additive if data set has CONSTANT seasonality Variation
## Use Multiplicative if data set has INCREASING or DECREASING Seasonality variation
stock.fitlinearAdditive<-tslm(stock~trend+season,lambda=NULL)
stock.fitlinearMultiplicative<-tslm(stock~trend*season,lambda=NULL)
##Forecast for next 24 months
stock.linearforecastMultiplicative<-forecast(stock.fitlinearMultiplicative,h=24)
## Plot the forecast with 80% and 95% confidence interval
plot(stock.linearforecastMultiplicative)
plot(residuals(stock.linearforecastMultiplicative))
## Residual graph is not stationary, Hence this may not be acceptable.
## Multiplicative is better than Additive for our dataset
##Accuracy Tests
accuracy(stock.linearforecastMultiplicative)

stock.fcastMean<-meanf(stock,h=24,lambda=NULL)
plot(stock.fcastMean)
## Not Suitable for our dataset
##Accuracy Test
accuracy(stock.fcastMean)

## NAIVE models can be used for random walk data (ARIMA (0,1,0) or for random walk data with seasonality (ARIMA(0,0,0)(0,1,0)m))
## NAIVE models cannot be used in our scenario

## Using Neural Networks for Forecasting for next 24 months
##Feed-forward neural networks with a single hidden layer and lagged inputs for forecasting univariate time series
## NN model is suitable only for AR models. Eg. ARIMA (p,0,0)(P,0,0)- But not for Moving Average models
## Our Dataset is basically AR portion- Check ACF and PACF graphs above
stock.fitNN<-nnetar(stock)
stock.forecastNN<-forecast(stock.fitNN,h=7)
plot(stock.forecastNN)
plot(residuals(stock.forecastNN))
##Accuracy test
accuracy(stock.forecastNN)

## THETA Method Forecastfor next 24 months - Equivalent to simple exponential smoothing with drift
stock.forecastTheta<-thetaf(stock,h=24,level=c(80,95))
plot(stock.forecastTheta)
plot(residuals(stock.forecastTheta))
##Accuracy Test
accuracy(stock.forecastTheta)

##TBATS model (Exponential smoothing state space model with Box-Cox transformation, ARMA errors, Trend and Seasonal components)
stock.fitTBATS<-tbats(stock)
stock.forecastTBATS<-forecast(stock.fitTBATS,h=24)
plot(stock.forecastTBATS)
##Extract the level, slope and Seasonal componenets
stock.TBATScomponents<-tbats.components(stock.fitTBATS)
plot(stock.TBATcomponents)
plot(residuals(stock.forecastTBATS))
##Accuracy Test
accuracy(stock.forecastTBATS)

##Cubic Smoothing Spline Forecasting for next 24 months
## Suitable fpor Moving Average Model Data Sets - equivalent to ARIMA(0,2,2)
stock.forecastCubic<-splinef(stock,h=24)
plot(stock.forecastCubic)
summary(stock.forecastCubic)
plot(residuals(stock.forecastCubic))
##Accuracy test
accuracy(stock.forecastCubic)

## Three more Exponenetial Smoothening Forecasts for next 24 months
## SES Type
stock.forecastsSES<-ses(stock,h=24)
plot(stock.forecastsSES)
accuracy(stock.forecastsSES)
##HOLT Type
stock.forecastsHOLT<-holt(stock,h=24)
plot(stock.forecastsHOLT)
accuracy(stock.forecastsHOLT)
##HW Type - Multiplicative Seasonal  (Additive ca aslo be used based on dataset)
stock.forecastsHW<-hw(stock, h=24, seasonal="multiplicative")
plot(stock.forecastsHW)
plot(residuals(stock.forecastsHW))
accuracy(stock.forecastsHW)

## Forecasts using SEASONAL DUMMY VARIABLES using dummy variables and fourier series
## This can be used for ARIMA, LM or TSLM
##In our case we will be using TSLM
plot(stock)
##Create new seasonal dummy variables
## Last month December is taken for control group
stock.dummyTSLM<-tslm(stock~season)
## Residual plot
tsdisplay(residuals(stock.dummyTSLM))
## Forecast for next 24 months
stock.forecastDummyTSLM<-forecast(stock.dummyTSLM,h=24)
plot(stock.forecastDummyTSLM)
##Accuracy test
accuracy(stock.forecastDummyTSLM)
##Now lets use Fourier Transforms with 3 maximum order of fourier terms
fourierdummy<-fourier(stock,3)
stock.fourierTSLM<-tslm(stock~fourierdummy)
stock.forecastFourier<-forecast(stock.fourierTSLM,data.frame(fourierdummy=I(fourierf(stock,3,24))))
plot(stock.forecastFourier)
plot(residuals(stock.forecastFourier))
## Similar above syntax can be used for Seasonal Dummy variables above also
##Accuracy Test
accuracy(stock.forecastFourier)
## Random Walk Forecast with drift model for next 24 months
stock.forecastRandomWalk<-rwf(stock,h=24,drift=TRUE, lambda=TRUE)
plot(stock.forecastRandomWalk)
plot(residuals(stock.forecastRandomWalk))
accuracy(stock.forecastRandomWalk)

##Forecast Using STRUCTURAL TIMESERIES MODELS for next 24 months
stock.fitStructTS<-StructTS(stock,"level")
stock.forecastStructTS<-forecast(stock.fitStructTS,h=24)
plot(stock.forecastStructTS)
plot(residuals(stock.forecastStructTS))
##Accuracy test
accuracy(stock.forecastStructTS)

stock.fitHOLTWinter<-HoltWinters(stock)
stock.forecastHoltWinter<-forecast(stock.fitHOLTWinter)
plot(stock.forecastHoltWinter)
plot(residuals(stock.forecastHoltWinter))
##Accuracy Test
accuracy(stock.forecastHoltWinter)

##Exponential smoothing state space model (ETS)
stock.fitETS<-ets(stock)
stock.forecastETS<-forecast(stock.fitETS,h=24)
plot(stock.forecastETS,plot.type="single",ylab="",col=1:3)
plot(residuals(stock.forecastETS))
##Log Likelihood to check validity and accuracy of the model
logLik(stock.fitETS)
##Simulate for next 24 months in Detail
stock.simulateETS<-simulate(stock.fitETS,24)
plot(stock.simulateETS,col="blue")
##Accuracy Test
accuracy(stock.forecastETS)

##Taylor’s Double-Seasonal Holt-Winters method to forecast for next 24 months
stock.forecastDSHW<-dshw(stock)
##NOT possible for our dataset as it doen not have multiple seasonal components

##Forecasts for intermittent demand using Croston’s method - Simple Exponenetial Smoothing
stock.forecastCroston<-croston(stock,h=24,alpha=0.1)
plot(stock.forecastCroston)
plot(residuals(stock.forecastCroston))
## Residual graph is not stationary, Hence not a propoer model for fit
##Accuracy test
accuracy(stock.forecastCroston)

## Autoregressive type in ARIMA for forecasting for next 24 months
stock.forecastAR<-forecast(ar(stock),h=24)
plot(stock.forecastAR)
plot(residuals(stock.forecastAR))
##Simulate for next 24 months in Detail
plot(simulate(ar(stock),24))
##Accuracy Test
accuracy(stock.forecastAR)

##BATS model (Exponential smoothing state space model with Box-Cox transformation, ARMA errors, Trend and Seasonal components)
stock.fitBATS<-bats(stock)
stock.forecastBats<-forecast(stock.fitBATS,h=24)
plot(stock.forecastBats)
plot(residuals(stock.forecastBats))##Accuracy Test
accuracy(stock.forecastBats)

##ARIMA MODELS - ONLY FOR UNIVARIATE DATASETS
## No. of Differences required to convert Non-Stationary Series into Stationary Series
## Estimate No. of First Differences- 95% confidence interval and max difference allowable is 2
ndiffs(stock,alpha=0.05,test=c("kpss","adf","pp"),max.d=2)
## Answer is 1, Hence only 1 differencing is required for stationarity
## Estimate No. of Seasonal Differences
nsdiffs(stock, m=frequency(stock), test=c("ocsb","ch"), max.D=2)
## Answer is 0, Hence NO seasonal differencing required
##To Find best possible ARIMA model-Returns best ARIMA model according to either AIC, AIC or BIC value
stock.findbestmodel<-auto.arima(stock)
plot(forecast(stock.findbestmodel,h=24))
plot(residuals(forecast(stock.findbestmodel),h=24))
## Return the ORDER for ARIMA or ARFIMA model
Order=arimaorder(stock.findbestmodel)
Order
##Best best model has a order of (0,1,0)
##Fit ARIMA (0,1,0)
stock.fitArima<-Arima(stock,order=c(0,1,0))
stock.forecastArima<-forecast(stock.fitArima,24)
plot(stock.forecastArima)
plot(residuals(stock.forecastArima))
##Simulate for next 24 months in Detail
plot(simulate(stock.fitArima),24)
##Returns one-step forecasts for the data used in fitting the ARIMA model
Stock.fittedArimaData<-fitted(stock.fitArima)Stock.fittedArimaData
plot(fitted(stock.fitArima))
##One can check the residuals and MSE using original data and fitted data
Residuals<-Stock.fittedArimaData-stock
par(mfrow=c(3,1))
plot(stock)
plot(Stock.fittedArimaData)
plot(Residuals)
MSE<-mean(Residuals^2)
MSE
## MSE is very high;, Suitable model to be selected to reduce it
##Accuracy Test
accuracy(stock.forecastArima)


##Fit a fractionally differenced ARFIMA model
library(fracdiff)
stock.fitFracdiff<-fracdiff(stock)
stock.forecastFracdiff<-forecast(stock.fitFracdiff,h=24)
plot(stock.forecastFracdiff)
plot(residuals(stock.forecastFracdiff))
##Residuals are not stationary using Fracdiff Model
stock.fitArfima<-arfima(stock)
stock.forecastArfima<-forecast(stock.fitArfima,h=24)
plot(stock.forecastArfima)
plot(residuals(stock.forecastArfima))
tsdisplay(residuals(stock.fitArfima))
##Accuracy test
accuracy(stock.forecastArfima)


##Decompopsiton Method
stock.fitDecompose<-decompose(stock,type="multiplicative")
plot(stock.fitDecompose)
##Return Seasonal adjusted data by removing seasonal component
stock.seasonadj<-seasadj(stock.fitDecompose)
stock.seasonadj
plot(stock.seasonadj)
##MOving Average at order of 12 months
stock.ma<-ma(stock,order=12)
plot(stock.ma)
plot(decompose(stock.ma,type="multiplicative"))
plot(seasadj(decompose(stock.ma,type="multiplicative")))

