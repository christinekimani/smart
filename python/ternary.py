def ternary_search(arr, left, right, x, limit):
    # Check if the current section of the array is valid (left index <= right index) and limit is not exceeded
    if right >= left and limit > 0:
        # Divide the array into three parts
        mid1 = left + (right - left) // 3  # First middle point
        mid2 = right - (right - left) // 3  # Second middle point

        # Check if the element x is at either mid1 or mid2
        if arr[mid1] == x:
            return mid1
        if arr[mid2] == x:
            return mid2

        # If x is smaller than mid1, search the left part with a reduced limit
        if x < arr[mid1]:
            return ternary_search(arr, left, mid1 - 1, x, limit - 1)
        # If x is larger than mid2, search the right part with a reduced limit
        elif x > arr[mid2]:
            return ternary_search(arr, mid2 + 1, right, x, limit - 1)
        # Otherwise, search the middle part with a reduced limit
        else:
            return ternary_search(arr, mid1 + 1, mid2 - 1, x, limit - 1)

    # If element is not found or limit is reached, return -1
    return -1

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
x = 7  # The element we want to search for
limit = 5  # Maximum number of recursive calls

result = ternary_search(arr, 0, len(arr) - 1, x, limit)

if result != -1:
    print(f"Element {x} found at index {result}.")
else:
    print(f"Element {x} not found within {limit} recursive calls.")
