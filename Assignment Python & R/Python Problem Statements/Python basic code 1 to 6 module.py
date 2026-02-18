# -*- coding: utf-8 -*-
"""
Created on Wed May 18 15:08:32 2022

@author: G. Rupak
"""

# -*- coding: utf-8 -*-
"""
Created on Mon Jan 11 13:58:56 2021

@author: SHBHAM
"""
  ###############Assigement 01 Data types ################
###########Q 1

list_a = [7, 8, 1.5, "apple", "lemon", 57j, 85j, True, False]

list_b =["peanut", "coffee", 7, 1.5, 87, 9, 77j, False]

#a
list_ab= list_a + list_b

list_ab

#b
def frequency(list_ab):
    ferq={}
    for ele in list_ab:
        if ele in ferq :
            ferq[ele] +=1
        else:
            ferq[ele]=1
    return ferq

frequency(list_ab)
 
#c 

def reverse(list_ab):
    new_list = list_ab[::-1]
    return new_list 

reverse(list_ab)
    
    
    
    
############Q 2


set_a={x for x in range(1,11)}
print(set_a)

set_b={x for x in range(5,16)}
print(set_b)    
  
####a 
common_elements = [ele for ele in set_a if ele in set_b]
print(common_elements)
    
####b   

uniq_elemets =[ele for ele in set_a if ele not in set_b] + [ele for ele in set_b if ele not in set_a]
print(uniq_elemets)


#####c
set_a.remove(7)
set_a

set_b.remove(7)
set_b

dic = {"State":('Kerala','Maharashtra','Uttar Pradesh','West Bengal','Chhattisgarh'),
       "covid-19 cases":(760933,640045,60000,550000,280000)}

  
  ###########   #Assigement 02 Operatores ################
      


##############Q1
###a

x=12345
y=543
z=399
 
s = (x - z )/y
s


x= 22* y + z
x      
       
###b

p=5/3
p

t=-5/3
t

##########Q2
       

a=5
b=3
c=10

#A
a/=b
a

#B
c*=5
c


#############Q3

###a

word = "Data Science"

word.count("S")

"Data Science".count('S')


###b
 
4**3


#MODULE 3 Variables

1. What will be the output of the following (can/cannot):

a. Age1=5

Ans = possible

b. 5age=55

Ans = we will get error. because 5 is number .we cannot assign numbers as variable.

2. What will be the output of following (can/cannot):

a. Age_1=100

Ans – possible

b. age@1=100

ans- we will get error because @ is operators .we cannot assign operators as variable.

3. How can you delete variables in Python ?

Ans - You can also delete Python variables using the command del "variable name".

There are two types of variables in Python, Global variable and Local variable. When you want to use the same variable for rest of your program or module you declare it as a global variable, while if you want to use the variable in a specific function or method, you use a local variable while Python variable declaration.



####python code module 4

#########Q1



def age(x):
    if x<=10:
        print ("Children")
    elif x>10 and x<=60:
        print("normal citizen")
    elif x>60:
        print("senior citizen")
    else:
        print("wrong age")

age(6)

age(11)

age(61)


###########Q2
sex = str(input('Sex [Male or Female ] : '))
age = int(input('please enter your age : '))

if sex == 'Male' and age>60 :
    print("70% of fare is applicable")
elif sex == "Female" and age>60:
    print("50% of fare is applicable.")
elif sex == 'Male' and age<=60 :
    print("100% of fare is applicable")
elif sex == "Female" and age<=60:
    print("70% of fare is applicable")
else:
    print("Please inter right informatations")




##########3
def number(x):
    if x%5==0 and x>0:
        print("number is positive and divisible by 5")
    else:
        print("number is not positive or not divisible by 5")
number(455410)
number(25255555501)






#####  Module 5

#############Q1

## A)list1=[1,5.5,(10+20j),’data science’].. Print default functions and parameters exists in list1.

list1=[1, 5.5, (10+20j), 'data science']
print(list1)

len(list1) #length of list

#Access values in the variable using index numbers
print(list1[0])



#### B)How do we create a sequence of numbers in Python.

num = list(range(0,11,1))
num

#### C)Read the input from keyboard and print a sequence of numbers up to that number

n= int(input('Please enter a number :'))
if n>0: 
    print (list(range(0,n+1)))
    
   
    
    
    
#############22.	Create 2 lists.. one list contains 10 numbers (list1=[0,1,2,3....9]) and other 
#list contains words of those 10 numbers (list2=['zero','one','two',.... ,'nine']).
# Create a dictionary such that list2 are keys and list 1 are values..

list1=list(range(0,10))
list1

list2=['zero','one','two','three','four','five','six','seven','eight','nine']
list2

dict_1={'List_1' : list1,
        'List_2' : list2}
dict_1

#############3Consider a list1 [3,4,5,6,7,8]. Create a new list2 such that Add 10 to the even number and multiply with 5 if it is odd number in the list1..

list1=[3,4,5,6,7,8]

list2 = [x+10 for x in list1 if x%2==0] + [x*5 for x in list1 if x%2==1]
list2



################4

#######i)) It should accept both name of person and message you want to deliver.

name=input('Please enter your name : ')
message=input('Message you want to deliver : ') 
sentance = "Hello "+ name + " your message : "+ message 
print(sentance)      
    



#######ii) If no message is provided, it should greet a default message ‘How are you’

name=input('Please enter your name : ')
message=input('Message you want to deliver : ') 

if message =="" :
    print( "Hello "+ name + " How are you ")

else:
    print("Hello "+ name + " your message : "+ message)




#####   Module 6

import pandas as pd 

ind_cty=pd.read_csv("D:\\BLR10AM\\Assi\\Python Problem Statements\\Python Problem Statements\\Indian_cities.csv")
ind_cty.columns
######a)	Find out top 10 states in female-male sex ratio


group_data1 = ind_cty.groupby('state_name').mean()

f_m_ratio =group_data1[['sex_ratio']].sort_values('sex_ratio', ascending=False).head(10)                                            
f_m_ratio



#######b)	Find out top 10 cities in total number of graduates


top_graduates = ind_cty.sort_values('total_graduates', ascending=False)

top_grad_city = top_graduates['name_of_city'].head(10)

top_grad_city


########c)	Find out top 10 cities and their locations in respect of  total effective_literacy_rate.



top_eff_lit = ind_cty.sort_values('effective_literacy_rate_total',ascending=False)


top_city_loc =top_eff_lit[['name_of_city','location']].head(10)
top_city_loc



###############2

##a)Construct histogram on literates_total and comment about the inferences


import matplotlib.pyplot  as plt

plt.hist(ind_cty['literates_total']);plt.show()  

##b)	Construct scatter  plot between  male graduates and female graduates       


plt.scatter(ind_cty['male_graduates'] ,ind_cty['female_graduates']) 
plt.show()


################3

#a)	Construct Boxplot on total effective literacy rate and draw inferences

plt.boxplot(ind_cty['effective_literacy_rate_total'])


#b)	Find out the number of null values in each column of the dataset and delete them.

ind_cty.isna().sum()




