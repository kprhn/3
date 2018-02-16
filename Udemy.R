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

###############################################################
###############################################################
#R Data Frames
###############################################################
###############################################################

state.x77
USPersonalExpenditure
women
data()

WorldPhones

head(state.x77)
tail(state.x77)
str(state.x77)
summary(state.x77)

days
temp
temp <- c(22.2,21,23,24.3,25)
rain <- c(T,T,F,F,T)

data.frame(days,temp,rain)

df <- data.frame(days,temp,rain)
df

str(df)
summary(df)

df[1,]
df[,1]
df[,'temp']
df[1:5,c('days','temp')]
df
 df$days
df$rain
df['days']

subset(df,subset = rain==T)
subset(df,subset = temp<23)

sorted.temp <- order(df['temp'])
sorted.temp

empty <- data.frame()
empty

c1 <- 1:10
letters
c2 <- letters[1:10]
c2
c1
df <- data.frame(col.name.1 = c1, col.name.2 = c2)
df

d2 <- read.csv('some_file.csv')
write.csv(df,file = 'saved_df.csv')
df2 <- read.csv('saved_df.csv')
df2
df

nrow(df)
ncol(df)

colnames(df)
rownames(df)

str(df)
summary(df)
df
df[1,2]
df[,4]
df[[5,'col.name.2']]
df[[2,'col.name.1']] <- 9999
df

df[5,]

mtcars
head(mtcars)

mtcars$disp

mtcars$mpg
mtcars[,'mpg']
mtcars[,1]
mtcars[['mpg']] #this is a vector with just the values
mtcars['mpg'] #this is just a dataframe

head(mtcars[c('mpg','cyl')])
mtcars[c('mpg','cyl')]

df2 <- data.frame(col.name.1 = 2000, col.name.2 = 'new')
df2
df
dfnew <- rbind(df,df2)
dfnew

df
df$newcol <- 2*df$col.name.1
df

df$newcol.copy <- df$newcol
df

df[,'newcol.copy2'] <- df$newcol
head(df)

colnames(df)

colnames(df) <- c('1','2','3','4','5')
df

colnames(df)[1] <- 'NEW COL NAME'
head(df)

df[1:6,]

df[-2,]
head(mtcars)
mtcars[ mtcars$mpg > 20 , ]

head(mtcars)
mtcars[ mtcars$mpg > 20 & mtcars$cyl == 6 ,]

mtcars[ (mtcars$mpg > 20 & mtcars$cyl == 6) , c('mpg','cyl','hp')]

subset(mtcars, mpg > 20 & cyl == 6)

head(mtcars)
mtcars[,c('mpg','cyl','disp')]
mtcars[,1:3]

is.na(mtcars)
any(is.na(mtcars))
any(is.na(mtcars$mpg))

df[is.na(df)] <- 0
mtcars$mpg[is.na(mtcars$mpg)] < mean(mtcars$mpg)

###############################################################
###############################################################
#R Data Frames exercises
###############################################################
###############################################################

age <- c(22,25,29)
weight <- c(150,165,120)
sex <- c('M','M','F')

df3 <- data.frame(age, weight, sex)
df3

rownames(df3)[1:3] <- c('sam','frank','amy')
df3
data.frame(df3)
is.data.frame(mtcars)

mat <- matrix(1:25,nrow=5)
mat
matdf <- as.data.frame(mat)

is.data.frame(matdf)

df <- mtcars
head(df)

summary(mtcars)
mean(mtcars$mpg)

df [mtcars$cyl==6,]
df[1,4]
df[,9:11]

df[,c('am','gear','carb')]

df

df$perf <- round(df$hp / df$wt, digits=2)

df

colnames(df)[12] <- 'perf'
df
help(round)

head(df)


df[ df$hp > 100 & mtcars$wt >2.5 ,]

df2 <- df[ df$hp > 100 & mtcars$wt >2.5 ,]
summary(df2)
mean(df2$mpg)

df2['Hornet Sportabout','mpg']
