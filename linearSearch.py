
import numpy as np
arr=[1,5,9,200,4,8,7]
x = 200
arrp = np.array([4,8,9,1])

print(np.average(arrp))

def search(arr, x):
    for i in range(len(arr)):
        if arr[i] == x:
            return i
        
    return -1
    
