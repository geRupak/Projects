
"Name: Shahina Athar"
"Batch No: 10122020"

#Module - 1
"Problem 1: Use R  to compute the following values.
(a)	27(38-17)
(b)	(147???) * (39) 
(c)	  
(d)	54%3
(e)	54/3
(f)	Find cube of 999
(g)"	

#(a)
27*(38-17)

#(b)	(147???) * (39) 
(14^7)*(39)

#(C)
sqrt(436/12)

#(d)	54%3
54%%3

#(e)	54/3
54/3

#(f)	Find cube of 999
999^3

"Problem 2: Construct 2 lists containing mentioned data types  
(Numeric, Character, Complex, Logical, Vector) and do the following.
a.	Create another list which has a vector as an input inside it.
b.	Find the length and class of the above created list."

list1 <- list(2.1,"shahina",2+1i,TRUE,c(1,2,3))
list1
list2 <- list(2.1,"shahina",2+1i,TRUE,c(1,2,3))
list2
list3 <- list(c(1,2,3),"shahina",2)
list3
class(list1)
class(list2)
class(list3)
length(list1)
length(list2)
length(list3)

"Problem 3: Create a list of two vectors containing integers 
(numbers from 1 to 10 in one and 5 to 15 in other) 
.	Index the 8th element of the first list and 8th element of second list
.	Unlist the second back to atomic vectors
.	Subset the new list from 6th element to 14th element
"
A <- list(a=c(1,2,3,4,5,6,7,8,9,10),b=c(5,6,7,8,9,10,11,12,13,14,15))
A

#.	Index the 8th element of the first list and 8th element of second list

A[[c(1,8)]]
A[[c(2,8)]]

#.	Unlist the second back to atomic vectors

B <- unlist(A[2])
B
class(B)

#Subset the new list from 6th element to 14th element

B_subset = B[6:14]
B_subset  

"Problem 4: Create a list of 5 states having state name as variable 
name and number of covid-19 cases as its values.
A.	Access a few values through its variable name use $ to do so.
B.	Find the class and length of the list
C.	Subset the third state and its value."

S <- list(maharashtra=45,bihar=32,karnataka=70,uttarpradesh=80,kerala=90)
S

#A.	Access a few values through its variable name use $ to do so.

S$maharashtra
S$bihar
S$karnataka

#B.	Find the class and length of the list

class(S)
length(S)

#C.	Subset the third state and its value."

S[3]

"Module - 2"

"Problem 1: Import the given dataset and check for 'NA' values in it using the appropriate function. Now follow the given steps to manipulate your data:
  Note: - Use Data Manipulation Dataset.
a)	Create a new data frame using the given data frame (i.e. the given dataset) by removing the 'NA' values.
b)	Consider the given dataset to replace the first NA value in the dataset with your name in that place.
c)	Find the factor of each column in the dataset
d)	Find the class of each column in the dataset
e)	Find the structure and summary of the dataset."

df <- read.csv(file.choose())
df
attach(df)
View(df)

#a)	Create a new data frame using the given data frame (i.e. the given dataset) by removing the 'NA' values.

is.na(df)
sum(is.na(df))
df1 <- na.omit(df)
df1

#b)	Consider the given dataset to replace the first NA value in the dataset with your 
#name in that place.

df$experience[8] <- "Shahina"
df

#c)	Find the factor of each column in the dataset

index <- factor(index)
index
experience <- factor(experience)
experience
scores <- factor(scores)
scores
gender <- factor(gender)
gender
admission_status <- factor(admission_status)
admission_status

#d)	Find the class of each column in the dataset

class(index)
class(experience)
class(scores)
class(gender)
class(admission_status)

#e)	Find the structure and summary of the dataset."

str(df)
summary(df)

#Problem 2: Use R to create the following two matrices and do the indicated matrix multiplication.      

m <- matrix(c(7,9,12,2,4,13), nrow = 2, ncol = 3, byrow=T)
m
n <- matrix(c(1,7,12,19,2,8,13,20,3,9,14,21), nrow = 3, ncol = 4, byrow=T)
n

print(m%*%n)

#Problem 3: Use R to create the following two matrices and multiply each value to its successive position.       

i <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, ncol = 3, byrow=T)
i
j <- matrix(c(1,4,7,2,5,8,3,6,9), nrow = 3, ncol = 3, byrow=T)
j

print(i*j)

"Module - 3"

"Problem 1: Perform all the arithmetic operations (Addition, Subtraction, Multiplication, Division, Exponent, Modulus, Integer Division) on the given vectors:
  a = c(8.2, 3, 6, 1.4), b = c(2, 4, 8, 6)"

a = c(8.2,3,6,1.4)
b = c(2,4,8,6)

#Addition
a+b

#Subtraction
a-b

#Multiplication
a*b

#Division
a/b

#Exponent
a^b

#Modulus
a%%b

#Integer Division
a%/%b

"Problem 2: Prove associative law (which means that rearranging the parentheses 
in an expression will not change the result) for addition and multiplication 
using the given vectors. Find the LHS (Left Hand side) and RHS (Right Hand Side) 
and then compare both using relational operators to prove the law.
  a = c(8.2, 3, 6, 1.4), b = c(2, 4, 8, 6), c = c(1, 2.2, 2.6, 5)
"
a <- c(8.2, 3, 6, 1.4)
b <- c(2, 4, 8, 6)
c <- c(1, 2.2, 2.6, 5)

y <- a+(b+c)
z <- (a+b)+c

y == z # L.H.S is equal to R.H.S

u <- c((a*b)*c)
u
v <- c(c*(b*a))
v
u == v

"Problem 3: Create a 2x4 matrix and find the result of multiplication of the matrix with its transpose 
using an appropriate in-built method."

m1 <- matrix(1:8, nrow=2, ncol=4)
m1
n <- t(m1)
n
m1%*%n

"Problem 4: Convert the given vector into a data frame using an appropriate 
function then convert the same into a matrix.
	a<-  c(1,2,3) ; b<- (10,20,30) ; c<- (100,200,300); d <- (1000,2000,3000)
"
a <- c(1,2,3)
b <- c(10,20,30)
c <- c(100,200,300)
d <- c(1000,2000,3000)

df <- data.frame(a=c(1,2,3),b=c(10,20,30),c=c(100,200,300),d=c(1000,2000,3000))
df
View(df)
n <- matrix(c(1,2,3,10,20,30,100,200,300,1000,2000,3000),nrow=3,ncol=4,dimnames=list(c('r1','r2','r3'),c('a','b','c','d')))
n

"Problem 5: Given is the information of creating a data frame. What would be the resultant of doing "C.df%*%B"
> C.df <- data.frame(a,b,c,d)
> C.df
  a  b   c    d
1 1 10 100 1000
2 2 20 200 2000
3 3 30 300 3000 
> 'Given is the output of B:' 
B
  [,1] [,2] [,3]
a    1    2    3
b   10   20   30
c  100  200  300
"
#C.df%*%B,we cannot multiply 
#these two because no of coulmns in C.df 
#is not equal to no of rows in B

"Module - 4"

"Problem 1: Divide 743 by 2 and obtain the 
result such that the output gives us a value without the decimal point."

743%/%2

"Problem 2: Print a 3*4 array of three dimensions, which has the input 
of vectors sequencing from 13554:13590 and index the second row and 
third column element of third dimension of the array."

x <- array(c(13554:13590),dim=c(3,4,3))
colnames(x) <- c('A','B','C','D')
x
class((x))
x[2,3,3]

"Problem 3:  What is the command to install a package in R and how 
do you invoke it?"

install.packages("")
library()

"Problem 4: Create an if statement that prints the name of the team that won.
.	Where Team A scored 678 (out of 700), Team B scored 666 (out of 700).
"
Team_A <- 678
Team_B <- 666
if(Team_A>Team_B)
{
  print("Team A won")  
}else
{
  print("Team B won")
}

"Problem 5: Check whether the given number is positive and divisible by 5 or 
not using conditional statements. (Hint: Use both if and else statements) 
Given number: 468
"
num <- 468
if((num>0)&&(num%%5==0))
{
  print("The given number is positive and divisible by 5 ")  
}else if((num>0)&&(num%%5!=0))
{
  print("The given number is positive but not divisible by 5 ")
}else
{
  print("number is negative")
}

"Problem 6: Given is a formula of Normalization.
Create a user defined function 'z' such that you define the given formula within it. 
Where, using max(x) and min(x) in R gives you the minimum and maximum value of x.
"
z <- function(x){
  a=(x-min(x)) / (max(x)-min(x))
  return(a)
}
x <- c(1,2,3)
z(x)

"Problem 7: If 'a' is the given vector. What is the output when you apply the 
user defined Normalizing function 'z ()' to it? 
[Hint: This question is the continuation of Problem 6]
a<-c(33,434,242,434354,545,54,56,56,4534,5342,24,5,65,65,767,8,78,79,79,64,635,3,4,35,57,678,5,86,86,457,546,34,345,34,3,4,65,6,57, ,347) 
"
a<-c(33,434,242,434354,545,54,56,56,4534,5342,24,5,65,65,767,8,78,79,79,64,635,3,4,35,57,678,5,86,86,457,546,34,345,34,3,4,65,6,57,347) 
z(a)

"Problem 8: Achieve a Boxplot, Histogram and scatter plot on a given data 'Q1'. Use any column/columns to get the respective outputs."

q1 <- read.csv(file.choose())
q1

attach(q1)
View(q1)
hist(workex)
boxplot(workex)
plot(gmat,workex)

"Thank You -  waiting for Feedback"