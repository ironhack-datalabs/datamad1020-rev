#1. Import the NUMPY package under the name np.
import numpy as np


#2. Print the NUMPY version and the configuration.
#print(np.__version__)
#print(np.show_config())


#3. Generate a 2x3x5 3-dimensional array with random values. Assign the array to variable "a"
# Challenge: there are at least three easy ways that use numpy to generate random arrays. How many ways can you find?
a = np.random.rand(2,3,5)
#method 2: create random array of size 2x3x5 of floats between 1 and 10
#np.random.randint(1, 10, (2, 3, 5), "float")


#4. Print a.
print("a = ",a)


#5. Create a 5x2x3 3-dimensional array with all values equaling 1.
#Assign the array to variable "b"
b = np.ones((5,2,3), "int")


#6. Print b.
print("b = ",b)

#7. Do a and b have the same size? How do you prove that in Python code?
print("Do a and b have the same size? (number of elements)")
print(np.size(a) == np.size(b))

print("Do a and b have the same shape? (distribution of elements)")
print(np.shape(a) == np.shape(b))



#8. Are you able to add a and b? Why or why not?
#print(a+b)
#Gives error, they dont have the same shape so they cant be added as elements dont have 1 to 1 correspondance


#9. Transpose b so that it has the same structure of a (i.e. become a 2x3x5 array). Assign the transposed array to varialbe "c".
c = np.transpose(b,(1,2,0))


#10. Try to add a and c. Now it should work. Assign the sum to varialbe "d". But why does it work now?
d = np.array(a + c)



#11. Print a and d. Notice the difference and relation of the two array in terms of the values? Explain.
print("a = ", a)

print("d = ", d)
#d is equivalent to a + 1 as we have added a to c which was np.ones


#12. Multiply a and c. Assign the result to e.
e = a * c


#13. Does e equal to a? Why or why not?
#use np.array_equal as "==" will just check if a and e are equal value by value whereas np.array_qual checks the whole thing
print(np.array_equal(a,e))



#14. Identify the max, min, and mean values in d. Assign those values to variables "d_max", "d_min", and "d_mean"
max_d = np.max(d)
min_d = np.min(d)
mean_d = np.mean(d)

print("max value of d is:", max_d)
print("min value of d is:", min_d)
print("mean value of d is:", mean_d)


#15. Now we want to label the values in d. First create an empty array "f" with the same shape (i.e. 2x3x5) as d using `np.empty`.
f = np.empty([2, 3,5], dtype=float)




"""
#16. Populate the values in f. For each value in d, if it's larger than d_min but smaller than d_mean, assign 25 to the corresponding value in f.
If a value in d is larger than d_mean but smaller than d_max, assign 75 to the corresponding value in f.
If a value equals to d_mean, assign 50 to the corresponding value in f.
Assign 0 to the corresponding value(s) in f for d_min in d.
Assign 100 to the corresponding value(s) in f for d_max in d.
In the end, f should have only the following values: 0, 25, 50, 75, and 100.
Note: you don't have to use Numpy in this question.
"""
for x in range(len(d)):
  for y in range(len(d[0])):
    for z in range(len(d[0,0])):
      curr = d[x,y,z]
      if(curr>min_d) and (curr<mean_d):
        f[x,y,z] = 25
      elif(curr>mean_d) and (curr<max_d):
        f[x,y,z] = 75  
      elif curr == mean_d:
        f[x,y,z] = 50
      elif curr == min_d:
        f[x,y,z] = 0
      else:
        f[x,y,z] = 100





"""
#17. Print d and f. Do you have your expected f?
For instance, if your d is:
array([[[1.85836099, 1.67064465, 1.62576044, 1.40243961, 1.88454931],
        [1.75354326, 1.69403643, 1.36729252, 1.61415071, 1.12104981],
        [1.72201435, 1.1862918 , 1.87078449, 1.7726778 , 1.88180042]],

       [[1.44747908, 1.31673383, 1.02000951, 1.52218947, 1.97066381],
        [1.79129243, 1.74983003, 1.96028037, 1.85166831, 1.65450881],
        [1.18068344, 1.9587381 , 1.00656599, 1.93402165, 1.73514584]]])

Your f should be:
array([[[ 75.,  75.,  75.,  25.,  75.],
        [ 75.,  75.,  25.,  25.,  25.],
        [ 75.,  25.,  75.,  75.,  75.]],

       [[ 25.,  25.,  25.,  25., 100.],
        [ 75.,  75.,  75.,  75.,  75.],
        [ 25.,  75.,   0.,  75.,  75.]]])
"""
print(d)
print(f)  


"""
#18. Bonus question: instead of using numbers (i.e. 0, 25, 50, 75, and 100), how to use string values 
("A", "B", "C", "D", and "E") to label the array elements? You are expecting the result to be:
array([[[ 'D',  'D',  'D',  'B',  'D'],
        [ 'D',  'D',  'B',  'B',  'B'],
        [ 'D',  'B',  'D',  'D',  'D']],

       [[ 'B',  'B',  'B',  'B',  'E'],
        [ 'D',  'D',  'D',  'D',  'D'],
        [ 'B',  'D',   'A',  'D', 'D']]])
Again, you don't need Numpy in this question.
"""
charar = np.chararray((2, 3, 5))
for x in range(len(d)):
  for y in range(len(d[0])):
    for z in range(len(d[0,0])):
      curr = d[x,y,z]
      if(curr>min_d) and (curr<mean_d):
        charar[x,y,z] = "A"
      elif(curr>mean_d) and (curr<max_d):
        charar[x,y,z] = "D"  
      elif curr == mean_d:
        charar[x,y,z] = "C"
      elif curr == min_d:
        charar[x,y,z] = "A"
      else:
        charar[x,y,z] = "B"

print(d)
print(charar)
