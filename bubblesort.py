def bubble_sort(arr):
    a = len(arr)
    for i in range(a):
        for m in range(0,a-i-1):
            if arr[m] > arr[m+1]:
                arr[m],arr[m+1] = arr[m+1],arr[m]

given = ['Q', 'S', 'A', 'M', 'Z', 'R']
print("Original Liste: ", given)    
bubble_sort(given)
print("Sorted Listed: ", given)