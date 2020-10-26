# para el pull request
#1. Import the NUMPY package under the name np.

import numpy as np

#2. Print the NUMPY version and the configuration.

print(np.version.version)

"""
1.19.2

"""


#3. Generate a 2x3x5 3-dimensional array with random values. Assign the array to variable "a"
# Challenge: there are at least three easy ways that use numpy to generate random arrays. How many ways can you find?

a = np.random.randint(0,100,(2,3,5))


#4. Print a.

a


"""
array([[[94, 93, 33, 62, 89],
        [53, 13, 60, 65, 37],
        [89, 19, 13, 13, 63]],

       [[63,  4, 65, 32, 35],
        [88, 78, 71, 74, 58],
        [45, 35, 50, 53, 57]]])
"""




#5. Create a 5x2x3 3-dimensional array with all values equaling 1.
#Assign the array to variable "b"

b = np.ones([5,3,2])

#6. Print b.

b

"""
[[[1. 1.]
  [1. 1.]
  [1. 1.]]

 [[1. 1.]
  [1. 1.]
  [1. 1.]]

 [[1. 1.]
  [1. 1.]
  [1. 1.]]

 [[1. 1.]
  [1. 1.]
  [1. 1.]]

 [[1. 1.]
  [1. 1.]
  [1. 1.]]]
"""

#7. Do a and b have the same size? How do you prove that in Python code?

b.shape == a.shape

"""
False

"""


#8. Are you able to add a and b? Why or why not?

a + b 

"""
error. a and b do not have the same shape
"""

#9. Transpose b so that it has the same structure of a (i.e. become a 2x3x5 array). Assign the transposed array to varialbe "c".

c = np.transpose(b)

#10. Try to add a and c. Now it should work. Assign the sum to varialbe "d". But why does it work now?

d = a + c

#Both arrays have the same shape now

#11. Print a and d. Notice the difference and relation of the two array in terms of the values? Explain.

a 
"""
array([[[94, 93, 33, 62, 89],
        [53, 13, 60, 65, 37],
        [89, 19, 13, 13, 63]],

       [[63,  4, 65, 32, 35],
        [88, 78, 71, 74, 58],
        [45, 35, 50, 53, 57]]])
"""
d
"""
array([[[95., 94., 34., 63., 90.],
        [54., 14., 61., 66., 38.],
        [90., 20., 14., 14., 64.]],

       [[64.,  5., 66., 33., 36.],
        [89., 79., 72., 75., 59.],
        [46., 36., 51., 54., 58.]]])
"""
"""
Same shape but array d is bigger by 1 in every element
"""

#12. Multiply a and c. Assign the result to e.

e = a * c

#13. Does e equal to a? Why or why not?

e
"""
array([[[94., 93., 33., 62., 89.],
        [53., 13., 60., 65., 37.],
        [89., 19., 13., 13., 63.]],

       [[63.,  4., 65., 32., 35.],
        [88., 78., 71., 74., 58.],
        [45., 35., 50., 53., 57.]]])
"""
a == e

"""
array([[[ True,  True,  True,  True,  True],
        [ True,  True,  True,  True,  True],
        [ True,  True,  True,  True,  True]],

       [[ True,  True,  True,  True,  True],
        [ True,  True,  True,  True,  True],
        [ True,  True,  True,  True,  True]]])
"""
"""
This is true because any number apart from 0: n * 1 = n
"""

#14. Identify the max, min, and mean values in d. Assign those values to variables "d_max", "d_min", and "d_mean"

d_max = np.max(d)
"""
95.0
"""
d_min = np.min(d)
"""
5.0
"""
d_mean = np.mean(d)
"""
54.46666666666667
"""



#15. Now we want to label the values in d. First create an empty array "f" with the same shape (i.e. 2x3x5) as d using `np.empty`.

f = np.empty([2,3,5])


"""
#16. Populate the values in f. For each value in d, if it's larger than d_min but smaller than d_mean, assign 25 to the corresponding value in f.
If a value in d is larger than d_mean but smaller than d_max, assign 75 to the corresponding value in f.
If a value equals to d_mean, assign 50 to the corresponding value in f.
Assign 0 to the corresponding value(s) in f for d_min in d.
Assign 100 to the corresponding value(s) in f for d_max in d.
In the end, f should have only the following values: 0, 25, 50, 75, and 100.
Note: you don't have to use Numpy in this question.
"""
for x in range(f.shape[0]):
        for y in range (f.shape[1]):
                for z in range (f.shape[2]):

                        if d[x][y][z] == d_min:
                                f[x][y][z] = 0
                        elif d[x][y][z] == d_max:
                                f[x][y][z]= 100
                        elif d[x][y][z] == d_mean:
                                f[x][y][z] = 50
                        elif d_min < d[x][y][z] < d_mean:
                               f[x][y][z] = 25
                        else:
                                f[x][y][z] = 75



"""
#17. Print d and f. Do you have your expected f?

d

"""
array([[[95., 94., 34., 63., 90.],
        [54., 14., 61., 66., 38.],
        [90., 20., 14., 14., 64.]],

       [[64.,  5., 66., 33., 36.],
        [89., 79., 72., 75., 59.],
        [46., 36., 51., 54., 58.]]])
"""
f

"""
array([[[100.,  75.,  25.,  75.,  75.],
        [ 25.,  25.,  75.,  75.,  25.],
        [ 75.,  25.,  25.,  25.,  75.]],

       [[ 75.,   0.,  75.,  25.,  25.],
        [ 75.,  75.,  75.,  75.,  75.],
        [ 25.,  25.,  25.,  25.,  75.]]])
"""
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