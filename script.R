a<- 7
class(a)
a
ainteger <- as.integer(a)
class(ainteger)

b <- c(1,25, 2.9, 3.0)
class(b)

d<- 5:9
e<- 6:2

e <- seq(from=1, to=17, by=2 )
e

f<- seq(from=17, to=1, by=-2)
f

g <- rep(10, times=4)
g

h<- rep(3:5, times=4)
h<- rep(3:5, each=3)
h

w<- 'wong'
y <- 'yi'
class(c('w','y'))

countries <- c('China', 'China', 'Japan', 'Sotuh Korea', 'Japan')
class(countries)
countries
length (countries)
nchar(countries)

z<- letters
z
toupper(z)

girl <- "Mary"
Boy <- "John"
paste(girl, "likes", Boy)

## Why does the following not return: "Mary-likes-John"? 
#  I think because in the paste function, the sep argument comes as default " "

#How could you change it to return "Mary-likes-John?"

paste(girl, "likes", Boy, sep = "-")


##

glb<- paste(girl, "likes", Boy, collapse='-')

## Have a look a the help for paste() and you'll notice that the 'sep'
## argument and 'collapse' has different results. For example:

paste("1", "2", "3", "apple", "orange", "banana", sep = "-")

paste("1", "2", "3", "apple", "orange", "banana", collapse = "-")

paste(c("1", "2", "3"), c("apple", "orange", "banana"), sep = "-")

paste(c("1", "2", "3"), c("apple", "orange", "banana"), sep = "-", collapse = ":")

## Note what happens in the following examples when two vectors of different length

paste(c("1", "2", "3"), c("apple"), sep = "-")

paste(c("1", "2", "3"), c("apple", "orange"), sep = "-")

## So you could also solve the previous in two ways:

paste(girl, "likes", Boy, sep = "-")
##OR
paste(c(girl, "likes", Boy), collapse = "-")


glb
paste(countries, collapse = '-')

countries <- c('China', 'China', 'Japan', 'Sotuh Korea', 'Japan')
C<- grep('i', countries)
C
i[C]

d <- c('az20', 'az21', 'az22', 'ba30', 'ba31', 'ba32')
i <- grep('b', d)
i
d[i]

grep('2',d)
grep('2$',d)
grep('^b',d)

z <- FALSE
z
Z <- c(0,2, TRUE, FALSE, FALSE)
class(z)

x <- 5
x > 3

y <- TRUE
y + 1

## How could you return c(1, 3, 5, 7, 9) from?:
a <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
b<- c(1,3,5,7,9)
c <- match(b,a)
c
## Nice :) You may think that this is returning in 'c' the values from
## the first vector 'a'. But in fact what you have returned are the
## indexes of the matching locations in a that the elements in b are
## found. Here is an example that makes it clear:
a <- c("a", "b", "c", "d", "e", "f", "g", "h", "i")
b <- c("a", "b", "c", "d", "e")
c <- match(b, a)
c ## So these are the positions (indexes) of b in a To get the values you do:
a[c]

## OR (both I search it on web)

a <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
a[!(a %% 2 == 0)]
a[which(a %% 2!= 0)]

## So you first take a modulo 2  
a %% 2
## Then check if these are 0
a %% 2 == 0
## Then invert the TRUES and FALSES
!(a %% 2 == 0)
## Then use this vector to select elements from the first
a[!(a %% 2 == 0)]
##The second solution uses the 'which' function. It returns the
##indexes in the vector that are TRUE like this:
which(c(TRUE, FALSE, TRUE, FALSE, TRUE))
## In this case I would have dolved it like this:
a[c(TRUE, FALSE)]
## Note the indexing vector: c(TRUE, FALSE) is shorter than 'a' but it
## is repeated to the end of the first vector. The following could be
## used to select one value, skip two and then repeat
a[c(TRUE, FALSE, FALSE)]

f1<- as.factor(countries)
f1

f2 <- c(5:7, 5:7, 5:7)
f2
f2<- as.factor(f2)
f2
as.integer(f2)
f2

fc2<- as.character(f2)
fc2
as.integer(fc2)


m<- c(2, NA,5,2, NA, 2)
m

d1<- as.Date('2015-4-11')
d1
class(d1)
d2<- as.Date('2015-3-11')
d2
d1-d2

matrix(nrow=2, ncol=3)
matrix(1:6, ncol=3, nrow=2)

matrix(1:6, nrow= 2, ncol=3, byrow=TRUE)

m<- matrix(1:6, ncol=3, nrow=2)

a<- c(1,2,3)
b<- 5:7

m1 <- cbind(a,b)
m2 <- rbind(a,b)

m3<- cbind(b,b,a)
m<- cbind(m1,m3)
m

nrow(m)
ncol(m)

colnames(m)
m

colnames(m)<- c('ID','X','Y','v1','v2')
rownames (m)
rownames(m)<- paste0('row_',1:nrow(m))

#List

list(1:3)

e<- list(c(2,5),'abc')
e
names(e)<- c('first','last')
e

m<- matrix (1:6, ncol=3, nrow=2)
f<- list(e, m, 'abc')
f


#DATA FRAMES

ID<- as.integer(1:4)
name<- c('Ana','Rob','Liu','Veronica')
sex<- as.factor(c('F','M','M','F'))
score <- c(10.2, 9, 13.5, 18)

d<- data.frame(ID, name, sex,score, stringsAsFactors = FALSE)
d
class(d)
length(d)

is.list(d)
names(d)

nrow(d)
ncol(d)
dim(d)
colnames(d)

#4.INDEXING

b<- 10:15
b
b[1]
b[2]
b[2:3]
b[-2]
b
b[1]<-11
b
b[3:6]<- -99
b
b[1:3]<-2
b
b[3:6]<-c(10,20)
b

#4.1 - Matrix

m <- matrix(1:9, nrow=3, ncol=3, byrow=TRUE)
colnames(m)<- c('a','b','c')
m
m[2,2]
m[1,3]
m[1:3,1:2]
m[2,]
m[,2]
m[,2, drop=FALSE]

m[1,1]
m[1,1] <- 5
m
m[3,]<-10
m
m[,2:3]<- 3:1
m

diag(m)
diag(m)<-0
m

#4.2 - List

m<- matrix(1:9, nrow = 3,ncol = 3,byrow = TRUE)
m
colnames(m)<- c('a','b','c')
m
e<- list(list(1:3),c('a','b','c','d'),m)
e
e[2]
e[[2]]
names(e)<- c('zzz','xyz','abc')
e
e$xyz
e[['xyz']]

#4.3 - Data.frame

d<- data.frame(m)
m
class(m)
d[,2]
d[2]
d[,'b']
d[,'b', drop=FALSE]
d$b
d[['b']]
d['b']
d['c']

#4.4 - Which, %in% and match

x<- 10:20
i<- which(x> 15)
i
x[i]

b<- x>15
b
x
x[b]

j<- c(7,9,11,13)
j
j%in% x
which(j%in%x)

match (j,x)
x
j


#5. Algebra

a<- 1:5
b<- 6:10

d<- a * b
a
b
d
a*3

1:6
c(0,10)
1:6+ c(0,10)

a==2
a[2]

ff<- 5:2
ff
ff==2
ff[2]

a
b
b>6 & b<8
which(b>6 & b<8)

b>=9
b<=2
b>=9 | a<2

a
sqrt(a)
1*2*3*4*5
sd(a)
prod(a)
r <- runif(10)
r
sd(r)
r2<- rnorm (10, mean = 10,sd=2)
r2
set.seed(12)
runif(4)

set.seed(12)
runif(4)

#5.2 - Matrices

m<- matrix(1:6, ncol=3, nrow=2, byrow=TRUE)
m
m*2
m^2
m*1:2
m*m
t(m)
m
t(m)

m %*% t(m)

#7. Data Exploration

d <- data.frame(id=1:10,
                name=c('Bob', 'Bobby', '???', 'Bob', 'Bab', 'Jim', 'Jim', 'jim', '', 'Jim'),
                score1=c(8, 10, 7, 9, 2, 5, 1, 6, 3, 4),
                score2=c(3,4,5,-999,5,5,-999,2,3,4), stringsAsFactors=FALSE)
d
summary(d)

# which values in score2 are -999?
i<- d$score2==-999
#set these to NA
d$score2[i] <- NA

#This can be done in one single line of code 
d$score2[d$score2 == -999] <- NA

d
summary(d)

d$name
?unique
unique(d$name)
table(d$name)

d$name [d$name == c("Bab", "Bobby")]<- "Bob"
d$name <- toupper(d$name, 'jim')
table(d)

#get the first letters
first<- substr(d$name,1,1)

#get the remainder

remainder<- substr(d$name,2, nchar (d$name))

first<- toupper(first)
first

name<- paste0(first, remainder)
name
d$naem <- name
table(d$name)

d$name [d$name == c("???")]<- NA
table(d$name)

#to force the table to use NA

?table()
table(d$name, useNA = "ifany")

#Contigency table of two tables

table(d[c('name', 'score2')])

#Quantile, Range and mean

quantile(d$score1)
range(d$score1)
mean(d$score1)

quantile(d$score2)
quantile(d$score2, na.rm = TRUE)
range(d$score2, na.rm=TRUE)
mean(d$score2, na.rm = TRUE)

#Simple plotting in Data Exploration

par(mfrow=c(2,2)) # para combinar os varios plots numa forma de 4.
plot(d$score1, d$score2)
boxplot(d[, c('score1', 'score2')])
plot(sort(d$score1))
hist(d$score2)


#8. Functions
nrow
ncol

#Write first function

f<- function() {
  return('Hello')}
f
?return

f<- function(name) {
  x<- paste('hello',name)
  return(x)
}

f("John")

f<- function(name) {paste('hello',name)}
f("John")


frs<- function(n){
  s<- sample(letters, n, replace=TRUE)
  r<- paste0(s, collapse = '')
  return(r)
}
frs(2)
set.seed(0)
frs(2)

sumsquare <- function (a,b){
  d<- a+b
  dd<- d*d
  return(dd)
}

sumsquare (1,2)

x<- 1:3
y<- 5

sumsquare(x,y)

sumsquare (a=1, b=2)
sumsquare(a=1, d=2)
sumsquare(1:5)

sumsquareD <- function(a=0, b=1) {
  d <- a + b
  dd <- d * d
  return(dd)
}

sumsquareD(1:5,2)
sumsquareD(b=5)

nunique <- function(x){
  length(unique(x))
}

data<- c('a','b','a','c','b')
nunique(data)
nunique (countries)


#Ellipses

f1<- function(x,y=10){
  x*y
}

f2<- function(x,...){
  f1(x,...)
}

f2(5)


#9. APPLY

m<- matrix(1:15, nrow=5, ncol = 3)
m
m*2
m^2
apply(m,1,sum)
apply(m,2,sum)

apply(m,2,mean)

#9.2- TAPPLY
m
colnames(m)<- c('v1','v2','v3')
d<- data.frame(name=c('Yi','Yi','Yi','Er','Er'),m,stringsAsFactors = FALSE)
d$v2[1]<- NA
d

#-compute de average value of v1,v2 and v3 for each individual - TAPPLY

tapply(d$v1, d$name, mean)
tapply(d$v1, d$name, max)
tapply(d$v2, d$name, mean)
tapply(d$v2, d$name, mean,na.rm=TRUE)

#Aggregate
d
aggregate(d[,c('v1','v2','v3')], d$name, mean, na.rma=TRUE)

#to fix
aggregate(d[,c('v1','v2','v3')], d[,'name', drop=FALSE], mean, na.rma=TRUE)
#or
aggregate(d[,c('v1','v2','v3')], list(d$name), mean,na.rm=TRUE)

names<- list('Antoinette', 'Mary','Duncan','Obalaya','Jojo')
?nchar
nchar('Jim')
nchar('Bob')
lapply(names,nchar)

#10. Flow Control

#10.1 - Looping
#10.1.1 - For loops

for(i in 1:3) {
  print ('Hi')
}


j<- 0
for ( i in 1:3) {
print (i)
  j<- j+i
}

j<- 1
for ( i in 1:3) {
  print (i)
  j<- j+i
}
j

for (i in 1:3) {
  txt <- paste('the square of', i, 'is', i*i)
  print(txt)
}

for (i in 1:3){
  txt <- paste ('a soma de', i, 'com si mesmo é', i+i)
  print(txt)
}


s<- 0
a <- 1:6
b<- 6:1

res<- vector (length=length(a))

for (i in 1:length(b)){
  s<- s+ a[i]
  res[i]<- a[i]*b[i]
}

s
res


#10.1.2 - break and next

for (i in 1:10) {
  if (i%in% c(1,3,5,7)) {
    next
    
  }
  if(i>8){
    break
  }
  print(i)
}

#10.1.3 - While loops

i<- 0
while (i<4) {
  print (paste(i, 'and counting...'))
  i<- i+1
}

set.seed (1)
i<- 0
while(i<0.5){
  i<- runif (1)
  print(i)
}

?runif


set.seed(1)
while(TRUE) {
  i <- runif(1)
  print(i)
  if (i > 0.5) {
    break
  }
}

#10.2 - Branching

x<- 5
y<-10

if (x== 5) {
  y<- 15
}

if ( x > 20 ) {
  y<- y+2
} else if (x > 5 & x< 10){
  y<- y-1
} else {
  y<- x
}

y


b<- TRUE

if (b== TRUE){
  print ('Hello')
}


#Combining for loop with an if/else branch

a <- 1:5
f<- vector (length = length(a))

for (i in 1: length(a)) {
  if (a[i]> 2) {
    f[i]<- a[i]/2
    } else {
      f[i]<- a[i]*2
    }
  }

f

#11 - Data Preparation

##11.1 - Wide to long

dd<- read.csv('http://www.ats.ucla.edu/stat/r/faq/hsb2.csv')
d <- dd[1:3, c(1:2, 8:9)]
d

wvars <- c("write", "math")

x <- reshape(d, varying=wvars, v.names="score", direction = "long")
x

x<- reshape(d, varying=wvars, v.names="score", times =wvars, timevar = "subject", direction= "long")
x

##11.2 - Long to wide

w<- reshape(x, idvar = c("id", "female"), timevar= "subject", direction = "wide")
w

cn<- colnames(w)
cn<- gsub("score", "", cn)
colnames(w) <-cn
w

##11.3 -Merge

a<- dd[,1:3]

set.seed(1)
b<- dd[sample(nrow(dd),100), c(1, 7:10)]
b

dim(a)
head(a)
table(a$female)
table(a$race)

dim(b)
head(b)

ab<- merge(a,b,by= 'id')
ab
head(ab)

dim(ab)

ab<- merge(a, b, by='id', all.x = TRUE)
ab
dim(ab)
head(ab)

merge(a[1:3,], b[1:3,], by='id')
merge(a[1:3,], b[1:3,], by='id', all.x = T)
merge(a[1:3,], b[1:3,], by='id', all.y = T)
merge(a[1:3,], b[1:3,], by='id', all = T)

tapply(ab$read, ab$female, mean, na.rm=TRUE)
tapply(ab$read, ab$race, mean, na.rm=TRUE)

#11.4 - Sort

x<- sample(10)
x
sort(x)
i<- order(x)
i
x[i]


set.seed(0)
x<- a[sample(nrow(a),10),]
x
oid<- order(x$id)
y<- x[oid,]
y

oid<- order(x$race, x$female, x$id)
x[oid,]

#12 - Graphics

data(cars)
head(cars)
plot(cars)
plot(cars$dist)
plot(cars$speed)
plot( sort(cars$speed))

plot( cars[,1], cars[,2])
cars[,1]
plot(cars [,1], cars[,2], xlab= 'Speed of cars(miles/hr)', ylab= 'Stopping distance(feet)')
plot(cars [,1], cars[,2], xlab= 'Speed of cars(miles/hr)', ylab= 'Stopping distance(feet)', pch=20, cex=2, col='red')

plot(cars, xlab='Speed', ylab= 'Time', pch=20, cex= 2, col= 'red', xlim= c(0,25), las=1)

plot(cars, xlab='Speed', ylab='', pch=20, cex=2, col='red', xlim = c(0,27), ylim=c(0,125), axes=FALSE, xaxs="i", yaxs="i")
axis(1)
axis(2, las=1)
text(5,100, 'cars!', cex=2, col= 'blue')
par(xpd=NA)
text (-1,133, 'Distance\n(feet)')

set.seed(0)
brands<- c('Buick', 'Chevrolet', 'Ford')
b<- sample(brands, nrow(cars), replace=TRUE)
i<- match(b, brands)
i
plot(cars, pch=i+1, cex=i, col=rainbow(3)[i])
j<- 1:length(brands)
legend(5,120, brands,pch=(j+1), pt.cex=j, col=rainbow(3), cex=1.5)

par(mfrow=c(2,2), mar=c(1.3, 1.5,1.5))
for (i in 1:4){
  plot(sample(cars[,1]), sample(cars[,2]),xlab='', ylab='', las=1)
}

#12.1 - Some other base plots

head(InsectSprays)
hist(InsectSprays[,1])
InsectSprays[,1]
print(InsectSprays)

x<- agggregate(InsectSprays[,1, drop=F], InsectSprays[,2, drop=F], sum)
barplot(x[,2], names=x[,1], horiz = T, las=1)

x <- aggregate(InsectSprays[,1,drop=F], InsectSprays[,2,drop=F], sum)
barplot(x[,2], names=x[,1], horiz=T, las=1)

boxplot(count ~ spray, data= InsectSprays, col = "lightgray")

#13. Statistical models

