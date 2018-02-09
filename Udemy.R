stocks

stocks.matrix <- matrix(stocks, byrow=T,nrow=2)

print(stocks.matrix)

days <- c('mon','tue','wed','thur','fri')
st.names <- c('GOOG','MSFT')

colnames(stocks.matrix) <- days
rownames(stocks.matrix) <- st.names

print(stocks.matrix)
