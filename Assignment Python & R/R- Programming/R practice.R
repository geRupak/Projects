# R is a an open source programming language & software
#environment
# for statistical analysis, graphical representation,
#data analysis & visualization 
# R is a simple and easy to learn,read & write
# Developed by Ross Ihaka & Robert Gentleman at the 
#University of 
# Auckland, Newzealand

5 + 6
9+10
print(5+6)
# using R as a calculator
# CTRL + ENTER
#BODMAS
5 - 6
5*6
(5*6)/7


#CTRL+L - Clear Console Window

1:50 # print numbers from 1:50
#syntax
50:1 # in r it starts from 1 but in python it starts from 0 (n-1) 
# in r it takes last index value also but in python it skip last index value 
3:8
8:3


print(50:1)

print("Welcome to R Programming Session") # print anything

"Welcome to R Programming Session" # in python it takes as a comment
class("hello") # in python type("hello")
typeof("hello") # another function
print(25.5 + 12.7) # printing the calculation
25.5 + 12.7
a = "hello" ## It stores in Global Environement
# in python it stores in variable explorer
a = 1+3
a
a  = 7 # it stores lastest value
# it happend in python(spyder+juypter)
b = 6 #(1 method to assign)
b <- 7 #(2nd method to assign)
2 -> y
1b <- 5 # cannot
b1 <- 5 # can
_b <- 5 # cannot
.y <- 6.1 #we can but hidden variable,show only in console
.y
typeof(.y) #"double" means numeric = float
x_1 <- 10 # can
a <- 1:5 # we can
ls() # to check how many variable created

#The elements of a vector must all have the same mode, or data type. You
#can have a vector consisting of three character strings (of mode character)
#or three integer elements (of mode integer), but not a vector with one integer element and two character string elements.

data()
data(package = .packages(all.available = TRUE))
# Data Types in R - 
# Vector, List, Matrix, Array, Factor, Data Frame
# Vector - contains elements of same class
#A vector, in programming, is a type of array that is one dimensional. 
#Vectors are a logical element in programming languages that are used for storing data.
#Vectors are similar to arrays but their actual implementation and operation differs
#Vectors are primarily used within the programming context of most programming languages
#and serve as data structure containers. Being a data structure,
#vectors are used for storing objects and collections of objects in an 
#organized structure.


#The major difference between and array and a vector is that, unlike typical arrays, 
#the container size of a vector can be easily increased and decreased to complement 
#different data storage types. Vectors have a dynamic structure and provide the ability 
#to assign container size up front and enable allocation of memory space quickly.
#Vectors can be thought of as dynamic arrays.
# there are 6 types of these atomic vectors, also known as 6 classes of vectors which are
#Logical, Numeric, Interger, Complex, Character, Raw
# 1. Logical - True, False

a1 <- TRUE
TRUE->a1
a1
print(a1)
class(a1)
a <- c(TRUE,FALSE,TRUE,FALSE) #logical vector
a
class(a)
help(c)
# c is for combine elements

# 2. Numeric 
K<-c(2L,5L,6L,7L,89L) # L means it's an integer
K
class(K)

p<-c(44,55,78,99)
p
class(p)

#___________________________________________________
help(class)
?class()
#NULL < raw < logical < integer< real(numeric) < complex < character < list < expression: pairlists are
#treated as lists.
b <- c(0, 1, 2, 5, 4.11, 6.0, -2, 4, c(7, 8, 9))# numeric vector
b
class(b)

eee<- 66
eee<- 5323534

# 3. Integer # Whole numbers & not a fraction
y <- c(2L, 34L, 0L)
#50.98L
y
class(y)

f <- c(2.3L,34.5L,0L) # warning message but it's an numeric
class(f) # not an integer

# 4. Complex data type
d <- c(5 + 9i,3+7i, 2L , 7.0)
class(d)
sqrt(25) # square root of 25
sqrt(-27+0i)
sqrt(-17+0i)
sqrt(17)
x <- 2
s5 <- rep(x, times=5) # for single value
s5
help(rep)
y = c(2,3)
s6 <- rep(y, each=5) # for muliple value
s6
class(s6)
k<- 5+7
k

s <- c(8,7,5,6)
s
# 5. Character
e <- c("Right now", 'it is', '10:15 am!',67)
e
class(e)
print(e)
length(e) # len in python
K<-c(2222222222,30L,3+8i)

class(K)
pi
# exponential
exp(88) # e power 88 - 1.651636 * 10 to the power 38 if you want to not show power
#use options(scipen = 999)
k<-2^-5 # ^ means power in python 2**-5
k
options(scipen = 999) #disabling scientific notation
exp(88) # exp means e to the power 88
j <- 1e+15
j
class(j)

# accessing vector elements 
#by their indeces or subscripts
##################################################################
print(1:3)
1:3
# here c is combining more than one element in the vector
a <- c(TRUE,FALSE,TRUE,FALSE)
a[-1]#-1 means removing 1st position but in python it starts from right to left to access the element.
a[1:3] # in python it starts from 0 (n-1) but in r it starts from 1
a[4]
w <- a[1] 
w
a[3]
a[1:3] # it access 1 to 3 element

a[c(1,3,4)] # it give particular 1,3,4 element
#a[1:3] =! a[c(1,3)] 

# Viewing vectors in tabular format
# R is case sensitive

View(a) # only helpful in small length vectors
?View()
?raw # it deals with memory, sequence of bytes.
?charToRaw
v <- charToRaw("vasudevan")
v
p <- charToRaw("vignyan")
p
print(class(v))
e <- rawToChar(charToRaw(enc2utf8("v???gt"))) # raw to char
e
typeof("e")
#rawToChar is use for converting like emoji to character (basically in data mining)
# enc2utf8 - encoding to utf8 format
# UTF-8 is only one of the possible ways of encoding Unicode characters.
# List -  can contain many different types
# of elements inside it
#like vectors, 
# functions and even another list inside it
h <- list(23, 21.3, c(2,5,3), "hello")
class(h)
h[1]
h[2]
h[[5]] <- 66 # add element use double [] brackets
h
##[[]] - in python - Acessing multiple columns : giving column names as input in list format
length(h) # len used in python

h[[3]][2] # for accessing element inside element
h
h[[1]]
h[[3]]
View(h)
class(h)
g <- NULL
class(g)
################################################
#NULL < raw < logical < integer< real < complex < character < list < expression: pairlists are
#treated as lists.
l<-c(23L, NULL,TRUE,4+3i,"data",first_name = list("sreekanth","pavan"))
class(l)

k <- NULL
class(k)
#-------------------------------------------------
p <- c(23, 21.3, c(2,5,3), "hello")
class(p)

g <- list(23, 21.3, c(2,5,3), "hello", 3+5i, 2L)
length(g)
class(g)
## Lists
#list is an object consisting of an ordered collection of objects known as its 
#components.
#There is no particular need for the components to be of the same mode or type, and, for
#example, a list could consist of a numeric vector, a logical value, a matrix, a complex vector, a
#character array, a function, and so on. Here is a simple example of how to make a list:
# if you want to convert list into dataframe use - as.dataframe
Lst <- list(name = c("Fred","Jhonny"), wife=c("Mary","Anna"), no.children=c(3,5),
            child.ages=c(4,7,9,10,15)) # in r u have to mention list()but in python we acn write [] in the square brackets
Lst
Lst[[1]] # accesing the elements
Lst$name
Lst$name[1]
Lst[[4]]
Lst[[4]][3]
Lst[["wife"]][2]
Lst$wife[2]
#########################################################################
# we can also do the above indexing by using the inbuilt functionality of list
# such as 
Lst$name
Lst$wife
Lst$child.ages

# this can also be done as 
Lst[["name"]]

x <- "name"
Lst

#It is very important to distinguish Lst[[1]] from Lst[1]. '[[...]]' is the operator
#used
#to select a single element, whereas '[...]' is a general subscripting operator.
#Thus the former is the first object in the list Lst, and if it is a named list 
#the name is not included. 
#The latter is a sublist of the list Lst consisting of the first entry only.
#If it is a named list, the names are transferred to the sublist.

Lst[[1:2]] # 1st element of 2nd position
Lst[[1]]
S <- list(a=45,b=32.8,d=c(21,31,67,4,19,50,70),l="hi")
S
attach(S)
?attach()
length(S)
S$d
S[[3]][5]
d

S$a
S$l
View(S)
S[[3]]
S$d[3]
x <- list(a = list(10, 12, "LSHC"), b = c(3.14, 2.81))
View(x)
## Get the 3rd element of the 1st element
x[[2]][2]

x[[1]][3]

x$a
x[[1]]
x[1]



x$b[2]
x[[c(1, 3)]]
x[[1]][1]
x[[c(1,1)]] # is same as line 211

f <- list(a=45,b= c(32.8,65.4,99), d=c(10,27,34,48,58,97,75),l="hi")

f[[3]][6]  
f[[c(3, 6)]] # is like accessing element which is assign in the list
f[c(3,6)] # single bracket simple accessing indvidual item
## 1st element of the 2nd element
f[[c(2, 2)]]  
f[[2]][3]
f[c(2, 3)]

#Vectors will be coerced to the highest type of the
#components in the hierarchy
#NULL < raw < logical < integer< real < complex < character < list < expression: pairlists are
#treated as lists.

# unlist()
j <- list(name="Joe", salary=55000, union= T)
j
class(j)

ulj <- unlist(j)
ulj

class(ulj)  # character
# how about unlisting numbers
z <- list(a=5,b=12,c=13)
class(z)
y <- unlist(z)
class(y) # numeric

# how about mixed
w <- list(a=5,b="xyz")
wu <- unlist(w)
class(wu)

# we will look into built in function of R such as apply(), lapply(), sapply(),tapply()
# functions
## apply()

# apply() functions matrix or Dataframe as input and provides output as vector, list or array
# apply() function is primarly used to avoid loop constructs. 
# apply() function takes three arguments such as
#apply(X,MARGIN,FUN) 
# where in X is a matrix or Dataframe
# Margin takes values as 1 and 2 which helps to define on where to apply function
# MARGIN = 1 manipulation is performed on rows
# MARGIN = 2 manipulation is performed on columns
# MARGIN = c(1,2) manipulation is performed on both Rows and columns
# FUN = tells which function to apply, built in funtions like mean, median, sum, min,
# max, and even user defined functions can also be applied

# for example lets considers a matrix and apply column sum on it
m1 <- matrix(1:10, nrow = 5, ncol = 6)
m1
a_m1 <- apply(m1[,c(3,4)], 2, sum) # 3rd and 4th column = sum for both
a_m1
#####################################################################

# lapply is used to perform operations on list objects and return list object of same
# length as of original set. lapply() takes input as list, dataframe, vector and provides
# as list
# arguments of lapply() function are 
# lapply(X, FUN)
#x is vector /list / dataframe
# FUN is function 

# for example if we want to convert a list of string uppercase elements to lowercase
# we use lapply() to do it at once
#tolower is inbuilt functions
movies <- c("SPYDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower <-lapply(movies, tolower)
movies_lower
str(movies_lower)
# structure 
lapply(list(1:3,25:29),median)

# sapply() takes inputs as dataframe, list, vector but provides output as a vector unlike lapply()
movies_1 <- c("SPYDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower_1 <-sapply(movies_1, tolower)
str(movies_lower_1)

sapply(list(1:3,25:29),median)
##########################################################################

# tapply() computes a measure (mean, median, min, max, etc..) or a function for
# each factor variable in a vector. It is a very useful function that lets you 
# create a subset of a vector and then apply some functions to each of the subset.
# arguments of tapply() are 
# tapply(X, INDEX, FUN) # that index should be vector type
# X = an object, dataframe or vector
# INDEX = A list containing factor
# FUN = Functions that we want to apply such as mean, median, sum

# for example we will load a dataset called as iris
data()
data("iris")
View(iris)
attach(iris)
str(iris)
# To calculate the mean of the Petal Length for each Species.
levels(iris$Species)
iri <- tapply(Petal.Length, Species, mean) # Petal.Length = vector, Species = index(contains-"setosa","versicolor","virginica"), fun = mean
iri # 3 level - setosa,versicolor,virginica 
iri <- tapply(iris$Sepal.Width, iris$Species, median) # groupby function in python
iri # for without using attach function

##############################################################################

# Matrix - two-dimensional(rows*columns) rectangular data set 
# It can be created using a vector input to the matrix function
# The data elements must be of the same type
# All columns in a matrix must have the same type of 
#mode(numeric, character, etc.) 
# and the same length
?matrix()
#column order format
#The internal storage of a matrix isin column-major order, meaning that 
#first all of column 1 is stored, then all of column 2, and so on...
#Though internal storage of a matrix is in column-major order, you can set the
#byrow argument in matrix() to true to indicate that the data is coming
#in row-major order. Here's an example of using byrow:

m <- matrix(c(1,2,3,4,5,6),nrow = 2,ncol = 3,byrow = T )
m
class(m)
i <- matrix(c(10, 20, 30, 40), nrow = 2, ncol = 2, byrow = TRUE, 
            dimnames = list(c('r1', 'r2'), c('c1', 'c2')))
i
print(i)
#
y <- matrix(c(10, 20, 30, 40), nrow = 4, ncol = 2, byrow = FALSE, 
            dimnames = list(c('r1', 'r2', 'r3','r4'), c('c1', 'c2')))
y
View(y)
y <- matrix(c(10, 20, 30, 40), nrow = 5, ncol = 4, byrow = FALSE)
y
# default value for byrow is FALSE
class(y)
i
A = matrix( 
  c(2, 4, 3, 1, 5, 7), # the data elements 
  nrow=2,              # number of rows 
  ncol=3,              # number of columns 
  byrow = TRUE
)
A
View(A) 

# Accessing elements of a matrix
A[2,2]
A[1,3]
A[1,2]

'The Operator%*% is used for matrix multiplication
satisfying the condition that the number of columns
in the first matrix is equal to the number of rows in 
second. If matrix A[M, N] and matrix B[N, Z] are 
multiplied then the resultant matrix will of dimension M*Z'

# R program for matrix multiplication 

# Creating matrices 
m <- matrix(1:8, nrow=2) 
n <- matrix(8:15, nrow=4) 
m
n
# Multiplying matrices using operator 
print(m %*% n) 

# 1*8+3*9+5*10+7*11 = 162      1*12+3*13+5*14+7*15=226
# 2*8+4*9+6*10+8*11 = 200      2*12+4*13+6*14+8*15=280

# mathematical multiplication of a matrix by scalar
p <- m*3
p
# matrix addition is m+m
print(m + m)

# Creating matrices and multiply it without %

j <- matrix(1:8, nrow=2)
j
l <- matrix(8:15, nrow=2) 
l
# Multiplying matrices 
print(j*l) # direct mulyiplication element to element

# mathematical multiplication of a matrix by scalar
p <- m*3
p
# matrix addition is m+m
m <- matrix(1:8, nrow=2) 
n <- matrix(8:15, nrow=4) 
m
n
print(m + m)
# In 1st matrix number of columns should be equal to number of rows in 2nd matrix
i <- matrix(1:8, nrow=2)
j <- matrix(8:15, nrow=2)
i
j
print(i + j)

# subsetting a matrix
o <- matrix(1:20, nrow = 4, ncol = 5)
o
o[2:3,3:4]
o[2:3,1:2]
o[,2:3]# by columns
o[2:3,] # by rows

o[c(1,3),] <- matrix(c(1,1,8,12,20,25,36,50,89,100),nrow=2)
o

####################################################################################
# Array - While matrices are confined to 2 dimensions, 
# arrays can be of any number 
# of dimensions.

#An array can be considered as a multiply subscripted collection of data entries,
#for example numeric.
?array
#help(function)
x <- array(c(1:20),dim = c(4,5))
colnames(x) <- c('A','B','C','D','E')
x
class(x)
class(o)
x[1:3,1:2] #susetting array
x[1,3]
x[2,2]
x[3,1]
x[c(1,4),c(2,3)]
#. Extract elements X[1,3], X[2,2] and X[3,1] as a vector structure, and
#. Replace these entries in the array X by zeroes.
## this is called as indexing matrix 
i <- array(c(1:3,3:1), dim=c(3,2)) # column major order
i # i is a 3 by 2 index array.
x[i]
#. Replace these entries in the array X by zeroes.
x[i] <- 0 
x
x[i] <- c(-21,22,23)
x

j <- array(c(1,8,9), dim = c(2, 5,3))
j
class(j)
# Accessing an array
j[,,2] # 4th array 
# Accessing individual element from an array
j[2,5,3] # 2nd row, 5th column, 3rd array 


#___________________________________________________________________________

j <- array(c(1,8,9,2,42,52,36,12,17,15,3,5,6,7,8,9,1,2,6,9), dim = c(2, 5,3))
j
j[2,5,3]
j[2,5,2]
# for example if we consider a scenario for higer dimensional array to construct
# we shall take students and tests where in we consider three students and each test
# has two parts in it so test1 has two parts and test two has two parts
# please check class video to better understand this concept
firsttest <- matrix(c(80,21,50,30,25,98),nrow = 3, ncol = 2)
firsttest

secondtest <- matrix(c(46,41,75, 43,35,20), nrow = 3, ncol = 2)
secondtest

# now we create an array by combining both first test and second test such that we have
# one layer per test,
# In layer 1, there will be three rows for the three students' scores on the
# first test, with two columns per row for the two portions of a test

tests <- array(data=c(firsttest,secondtest), dim=c(3,2,2))
tests
attributes(tests)

tests[2,2,1] # last value -  represents test1 or test 2
tests[2,2,2]
tests[2,1,1]

########################################################################################
# Factor - variable which can take certain values(levels) 
#and not any (limited entries)
k <- c("red", "green", "blue", "blue", "red", "red")
class(k)
k
factor_k <- factor(k)


class(factor_k)
factor_k # 3 Levels - blue, green, red according to alphabetical order

l <- c(1, 2, 3, 4, 4, 5, 3, 2, 5.1)
l
class(l)
factor_l <- factor(l)
class(factor_l)
factor_l

##################################
# Data Frame
# Unlike a matrix in data frame each column can contain 
# different modes of data
# It is a list of vectors of equal length
df <- data.frame(gender = c("Male", "Male","Female","Female",NA,NA,NA), height = c(152, 171.5, 165,168,NA,NA,NA), 
                 weight = c(81,93, 78,67,NA,NA,NA), Age = c(42,38,26,54,NA,NA,NA),edu = c("tenth","12th","grad","pg","phd","research","scientist"))
df
View(df)
is.na(df)
sum(is.na(df))
class(df)
df
?str
str(df)
df$gender # In Python - df.gender, df["gender"], df[["gender","age"]]

attach(df)
Age
df$gender <- as.factor(df$gender)
df$edu <- as.factor(df$edu)
levels(df$gender)
levels(df$edu)

nlevels(df$edu) # number of levels
str(df)
summary(df)
df <- na.omit(df)# removing na from data(df)
df
hist(df$Age)
boxplot(df$Age)
library(moments)
hist(df$height)

# creating a dataframe

employee.data <- data.frame(
  emp_id = c(1:5),
  emp_name = c("Ravi","Sagar","Nehal","shaik","jameel"),
  salary = c(20000, 25000, 15000, 28000, 27000),
  start_date = as.Date(c("2012- 01-01","2013-09-02","2014-05-06","2012-04-03","2010-04-02"))
) # it's an time series data - as.Date
# to View your dataframe
View(employee.data)

# print your dataframe
print(employee.data)

# check structure of dataframe
str(employee.data)
# check summary of dataframe
summary(employee.data)

employee.data$salary

attach(employee.data)

emp_name
# creating new data frame
emp_newdata <- data.frame(
  emp_id = c(6:10),
  emp_name = c("prashanth","fatima","john","fred","king"),
  salary = c(12000,23000,19000,22000,32000),
  start_date = as.Date(c("2010-03-04","2012-03-03","2010-03-02","2013-03-04","2010-03-04"))
)
emp_newdata
# to combine two datasets we use rbind() function 
# Stratified Sampling - in r(cbind,rbind)
# in Python(pd.concet,join,merge)
# for continuous data use SRS(simple random sampling-(blind floded technique)), and for Categorical data use Stratified Sampling.
# in stratefied equal amount of data distributed like 70%,70%,70%(in training every element should equal amount of data).
# training - 70%, 80%, test - 30%, 20%
# 70%(50)-(virginica), 70%(50)-(setosa), 70%(50)-(versicolor)
final_emp_data <- rbind(employee.data,emp_newdata)

View(final_emp_data)
attach(final_emp_data)

str(final_emp_data)

## column bind then use cbind() 
# creating new dataframe with new columns
col_emp <- data.frame(
  dept = c("IT","Operations","Finance","Managment","HR"),
  skills = c("java","Python","R","Matlabe","c")
)
View(col_emp)
final1 <- cbind(final_emp_data,col_emp)
final1
View(final1)
final1<-final1[,-1] # delete 1st column
final1
View(final1)
summary(final1)

attach(final1) # to call use your column names without referring to your dataframe
# visual analysis
mean(final1$salary)
median(final1$salary)
range(final1$salary)
range(salary)
hist(final1$salary)

# load your excel or it also called as .xlxs format
install.packages("readxl")
library(readxl)
# load files .xlxs foramt type
df2 <- read_excel(file.choose(),sheet = 1)
#### load your data into R studio 
install.packages("readr")
library(readr)

df <- read.csv(file.choose())

View(df)

attach(df)

library(ggplot2)
# Some basic information
# The data that you want to visualise and a set of aesthetic mappings
# describing how variables in the data are mapped to aesthetic attributes
# that you can perceive.
# . Geometric objects, geoms for short, represent what you actually see on
# the plot: points, lines, polygons, etc.
# . Statistical transformations, stats for short, summarise data in many useful
# ways. For example, binning and counting observations to create a histogram,
# or summarising a 2d relationship with a linear model. Stats are optional,
# but very useful.
# . The scales map values in the data space to values in an aesthetic space,
# whether it be colour, or size, or shape. Scales draw a legend or axes, which
# provide an inverse mapping to make it possible to read the original data
# values from the graph.
# . A coordinate system, coord for short, describes how data coordinates are
# mapped to the plane of the graphic. It also provides axes and gridlines to
# make it possible to read the graph. We normally use a Cartesian coordinate
# system, but a number of others are available, including polar coordinates
# and map projections.
# . A faceting specification describes how to break up the data into subsets
# and how to display those subsets as small multiples. This is also known as
# conditioning or latticing/trellising.

data()
#df <- diamonds
dsmall <- diamonds[sample(nrow(diamonds), 100), ]
df <- read.csv(file.choose()) # credit dataset
attach(df)
qplot(amount, age, data = df)
qplot(amount, age, data = df, colour = job)
qplot(amount, age, data = df, shape = job)
qplot(amount, age, data = df, alpha = I(1/10))
# geom = "point" draws points to produce a scatterplot. This is the default
# when you supply both x and y arguments to qplot().
# . geom = "smooth" fits a smoother to the data and displays the smooth and
# its standard error, ??? 2.5.1.
# . geom = "boxplot" produces a box-and-whisker plot to summarise the
# distribution of a set of points, ??? 2.5.2.
# . geom = "path" and geom = "line"
# For continuous variables, geom = "histogram" draws a histogram, geom =
#   "freqpoly" a frequency polygon, and geom = "density" creates a density
# 
# qplot(amount, age, data = df, geom = c("point", "smooth"))

qplot(age, data = df, geom = "histogram")
qplot(amount, data = df, geom = "density")
p <- ggplot(df, aes(age, amount, colour=job)) + geom_point()

# Add a regression line
ggplot(df, aes(amount, age, colour=job)) +
  geom_point(shape=1) +
  geom_smooth(method=lm)

# A historgram count plot
ggplot(data=df, aes(x=amount)) +
  geom_histogram( col="red",
                  fill="green",
                  alpha = .2,
                  binwidth = 5)

p <- ggplot(df, aes(job))
p + geom_bar()
p + geom_bar()

# set the plotting area into a 1*2 array
par(mfrow=c(1,2))

amt <- df$amount
ag <- df$age
par(mfrow=c(2,2))
par(mfcol = c(1, 2))
hist(amt)
boxplot(amt, horizontal=TRUE)
hist(ag)
boxplot(ag, horizontal=TRUE)

# boxplot,Hist,bar,dot - univariate
# load your excel or it also called as .xlsx format 
install.packages("readxl")
library(readxl)
# change path location accordingly # watch video for more details
df1 <- read_csv("C:/Users/abdul/Desktop/assignmnent@360 key/Python codes/Python codes/clustering/crime_data.csv")
# removing first column
#df1 <- df1[-1]
summary(df1)
str(df1)
attach(df1)

## histogram is univariate analysis

hist(df1$Murder)
a = hist(df1$Rape)
a
## boxplot is univariate analysis

c = boxplot(df1$Rape)
c
# to get outlier information
c$out


str(df1)

# to convert it to factors use as.factor

df1$city <- as.factor(df1$city)
str(df1)
# to check if its a factor
is.factor(df1$city)
is.numeric(df1$Murder)
is.character(df1$city)

# loading execl files,check video for more details on it
# load files of .xlxs format type
df2 <- read_excel(file.choose(),sheet = 2)


# creating a vector data 
data <- c("east","west","north","south","north","west","east","east")
# check if its a factor
is.factor(data)
# convert it into factor type
factor_data <- as.factor(data)

print(is.factor(factor_data))
print(factor_data)

# R arithmetic operators.
# +, -, *, /, ^, %% (Modulus), %/% integer division .
# v <- c( 2,5.5,6)
# t <- c(8, 3, 4)
# print(v+t)


d <- c(5,6,7,8,9)
length(d)
class(d)
e <- c( 10,11, 12, 13,18)

print(e-d)
print(e+d)
print(e*d)
print(e/d)
print(e^d)
print(e%%d) ## the result of division such as reminder
print(e%/%d) # the result of divison of second vector with first

# Relational operators
# <, >, <=, >=, ==, !=

a <- c( 2,5,5,6,9)
b <- c(8,2,5,14,9)

print(b>a)

print(b<a)

print(b==a)
print(b<= a)
print(b>=a)
print(b!= a) # not equa to symbol != 


# Logical operator
# ! logical not, & element wise logical AND, | element wise logical OR, 
# && Logical AND, Logical OR

# Operators & and | perform element-wise operation producing result 
# having length of the longer operand.

# But && and || examines only the first element of the operands 
# resulting into a single length logical vector.

# Zero is considered FALSE and non-zero numbers are taken as TRUE. 

v <- c(TRUE,2+2i,34.5,45,FALSE)
length(v)
class(v)
t <- c(TRUE,2+3i,67.45, 65.43, FALSE)
length(t)
print(v&t)

print(v|t)

print(v&&t)

print(v||t)

# Assignment operators
#(left assignment operator) <- or = or <<- , -> or ->>  ( Right assignment operator)

# Functions are set of statements organized together to perform a 
# specific task. 
# Inbuilt function of R - mean(), median(), sd(), skewness().
# kurtosis(), scale(), sequence seq()
# Functions user defined and inbuilt function 
#Data Management using R
# Functions
# Built - In function 
# Create a sequence of numbers from 32 to 44.
# seq( from, to, by =)
print(seq(32,44))

# Create a sequence of numbers between -10 and 10 incrementing by 0.1.

inc1 <- seq(-10,10,by = 2)
inc1

inc <- seq(1, 10, by = 2)
inc


# Find mean of numbers from 25 to 82.
print(mean(25:82))
print(mean(seq(1, 10, by = 2)))

mean(1000:1500)
yyy <-c(45,67,89,333,567)
mean(yyy)


# Find sum of numbers frm 41 to 68.
print(sum(41:68))


# User-defined Function
# Create a function to print squares of numbers in sequence.


function_name <- function(arg_1,arg_2)
{
  body 
}
g <- function(){
  
}
# some custom multiplication 
common <- function(a) 
{
  for(i in a:100) {
    b <- i*3
    print(b)
  }
}	
common(2)

ann <- function(a)
{
  for(i in a:15)
  {
    b=i+6
    print(b)
  }
  
}
ann(5)



# Calling a Function with Argument Values
ne <- function(a,b,c,o) 
{
  result <- (a * b) + c +o
  print(result)
}

ne(10,2,5,6)

# install.packages("readr")
library(readr)
# loading dataset which is a  csv file
df <- read.csv(file.choose())

# checking str and summary of the dataset

str(df)

summary(df)

View(df)

attach(df)

# take two or three copies of my original data frame

df1 <- df # we are using scale()

df2 <- df # we are using normalize()

df3 <- df # for this we use custom normalize

## lets consider df1 and apply scale function

df1 <- df1[,-1]

df1 <- scale(df1)
df1
# we use normalize function
install.packages("normalr")
library(normalr)
?normalise
df2 <-  df2[,-1]

df_new <- normalise(df2,lambda = 3)
df_new

# so to custom normalize the data df3

df3 <- df3[,-1]

norm <- function(x){
  a = ((x-min(x))/(max(x)-min(x)))
  return(a)
}

df3_norm <- as.data.frame(apply(df3, MARGIN = 2, norm))






