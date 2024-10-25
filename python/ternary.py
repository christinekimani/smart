def ternary_search(arr, left, right, x):
    # Check if the current section of the array is valid (left index <= right index)
    if right >= left:
        # Divide the array into three parts
        mid1 = left + (right - left) // 3  # First middle point
        mid2 = right - (right - left) // 3  # Second middle point

        # Check if the element x is at either mid1 or mid2
        if arr[mid1] == x:
            return mid1
        if arr[mid2] == x:
            return mid2

        # If x is smaller than mid1, search the left part
        if x < arr[mid1]:
            return ternary_search(arr, left, mid1 - 1, x)
        # If x is larger than mid2, search the right part
        elif x > arr[mid2]:
            return ternary_search(arr, mid2 + 1, right, x)
        # Otherwise, search the middle part
        else:
            return ternary_search(arr, mid1 + 1, mid2 - 1, x)

    # If element is not found, return -1
    return -1
#this needs working its rubbing but not giving output