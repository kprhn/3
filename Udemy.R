goog <- c(450,451,452,445,468)
msft <- c(230,231,232,233,220)
stocks <- c(goog,msft)

matrix(stocks, byrow=T,nrow=2)



stocks

stocks.matrix <- matrix(stocks, byrow=T,nrow=2)

stocks.matrix
print(stocks.matrix)

days <- c('mon','tue','wed','thur','fri')
st.names <- c('GOOG','MSFT')

colnames(stocks.matrix) <- days
rownames(stocks.matrix) <- st.names

print(stocks.matrix)


mat <- matrix(1:25,byrow=T,nrow=5)
mat

mat * 2
mat / 2
mat ^2
1/mat

mat > 5
mat[mat>15]
mat/mat
mat^mat
mat

mat %*% mat

#27

print(stocks.matrix)

del stock.matrix

rm(stock.matrix)

colSums(stocks.matrix)
rowSums(stocks.matrix)

rowMeans(stocks.matrix)

FB <- c(111,112,113,120,145)
tech.stocks <- rbind(stocks.matrix,FB)
tech.stocks

avg <- rowMeans(tech.stocks)
avg
avg.stocks <- cbind(tech.stocks,avg)
avg.stocks

v <- c(1:5)
v <- c(1,2,3,4,5)
v
v[5]

avg.stocks[3,3]

mat <- matrix(1:50,byrow=T,nrow=5)
mat

mat[1,1]
mat[8,2]
mat[4,8]
mat[,1]
mat[1:3,]
mat
mat[1:2,1:3]
mat[,9:10]
mat[2:3,5:6]

#29

#factors
animal <- c('d','c','d','c','c')
id <- c(1,2,3,4,5) 
fact.ani <- factor(animal)

#NOMINAL - no order

#ORDINAL - there is an order

temps <- c('cold','med','hot','hot','hot','cold','med')
temps
fact.temp <- factor(temps,ordered = T, levels=c('cold','med','hot'))
fact.temp
order(fact.temp)
summary(fact.temp)
summary(temps)
temps

#30 exercises

a <- c(1,2,3)
b <- c(4,5,6)
ex <- matrix(a,byrow=T,nrow=1)
ex <- rbind(b)

rbind(a,b)

c <- c(1:9)

mat <- matrix(c, byrow=T, nrow=3)
mat

is.matrix(mat)

mat2 <- matrix(1:25,byrow=T, nrow=5)
mat2

mat2[2,2:3]
mat2[3,2:3]

mat2[4:5,4:5]

sum[mat2]
sum(mat2)
#help(runif)

u <- runif(20, min = 0, max = 20)

u2 <- matrix(u,nrow=5)
u2
