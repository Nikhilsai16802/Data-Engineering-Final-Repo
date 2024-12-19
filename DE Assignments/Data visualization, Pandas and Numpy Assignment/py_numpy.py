import numpy as np
a= np.array([1,2,3,4])   #the term "print" will be taken as a default.
b=np.array([[1,2,3,4,5],[5,6,7,8,9]])  #multi-dimentional array.
c=np.array([[1,2,3],[4,5,6],[7,8,9],[10,11,12]])  #multi-dimentional array.
print(a)
print(b)
print(c)

print(b.ndim)
print(c.shape)   
print(a.size)    

cvalues=[20.1, 20.8, 21.9,22.5,22.7,22.3,21.2,20.9,20.1]
c=np.array(cvalues)
print(c)
print(c*3)
print(c.dtype)
print(type(c))
b=np.arange(1,10)
print(b)

a=np.arange(2.2,5.6,1.0, int)
print(a)

print(np.linspace(1,100,5)) #1 and 100 are the start and end values.
                            #5 is the number of values, including the start and end points.

print(np.linspace(1,100,5, endpoint=False))
print(np.linspace(1,100,5, endpoint=True))





