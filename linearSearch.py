import numpy as np



arr=[1,5,9,200,4,8,7]
x = 200


def search(arr, x):
    for i in range(len(arr)):
        if arr[i] == x:
            return i
        
    return -1
