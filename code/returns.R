## quantmod return 
library(quantmod)
library(ggplot2)

# Define stock tickers
tickers <- c("AAPL", "WMT", "SPY", "INTC")

# Set date range
start_date <- as.Date("2000-01-01")  # Adjust as needed
end_date <- Sys.Date()

# Download stock data and calculate total monthly returns
get_monthly_returns <- function(ticker) {
  getSymbols(ticker, src = "yahoo", from = start_date, to = end_date, auto.assign = TRUE)
  
  # Adjusted closing prices
  prices <- Ad(get(ticker))
  
  # Convert to monthly period and compute monthly returns
  monthly_prices <- to.monthly(prices, indexAt = "lastof", OHLC = FALSE)
  monthly_returns <- monthlyReturn(monthly_prices)
  
  colnames(monthly_returns) <- ticker
  return(monthly_returns)
}

# Get returns for all tickers
monthly_returns_list <- lapply(tickers, get_monthly_returns)

# Combine into a single data frame
monthly_returns_df <- do.call(merge, monthly_returns_list)

# Display the data
print(head(monthly_returns_df))

data = as.data.frame(100*monthly_returns_df)
colnames(data) = c("Apple","Walmart","SP500","Intel")


#### REGRESSION MODELS ####

pairs(data)

fit = lm(Apple ~ SP500,data)
summary(fit)

fit = lm(Walmart ~ SP500,data)
summary(fit)

fit = lm(Apple ~ Walmart,data)
summary(fit)

fit = lm(Apple ~ Walmart + SP500,data)
summary(fit)

fit = lm(Apple ~ SP500 + Intel,data)
summary(fit)


