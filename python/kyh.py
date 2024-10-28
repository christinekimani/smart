import heapq

def kth_largest(nums, k):
    # Use heapq's nlargest function to find the k largest elements, then return the last one
    return heapq.nlargest(k, nums)[-1]

# Example usage:
nums = [3, 2, 1, 5, 6, 4]
k = 2
print(kth_largest(nums, k))  # Output: 5
def print_kth_largest(nums, k):
    # Call the kth_largest function and store the result
    result = kth_largest(nums, k)
    
    # Print the result in a clear format
    print(f"The {k}th largest element in {nums} is {result}.")

nums = [3, 2, 1, 5, 6, 4]
k = 2
print_kth_largest(nums, k)
