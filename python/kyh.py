import heapq

def kth_largest(nums, k):
    # Use heapq's nlargest function to find the k largest elements, then return the last one
    return heapq.nlargest(k, nums)[-1]

# Example usage:
nums = [3, 2, 1, 5, 6, 4]
k = 2
print(kth_largest(nums, k))  # Output: 5
#This is running but not giving output