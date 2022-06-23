print("Hello world from python and pycharm")

array=[10, 5, 55, 2]

#This is random indexing
print(array[2])
print(array[1:3])
print(array[:-2])


print("array is this")
print(array)
max = array[0]

for num in array:
    if num > max:
        max = num
print("maximum")
print(max)

###For minimum

min = array[0]

for num in array:
    if num < min:
        min = num
print("minimum")
print(min)