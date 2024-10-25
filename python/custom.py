def custom_sort(arr, key):
    # Use Python's built-in 'sorted' function, sorting by the specified key
    return sorted(arr, key=lambda x: x[key])

# Example usage:
arr = [{'name': 'apple', 'price': 10}, {'name': 'banana', 'price': 5}]
print(custom_sort(arr, 'price'))
