def search_rotated(arr, target):
    left, right = 0, len(arr) - 1  # Start with the whole array

    while left <= right:
        mid = (left + right) // 2  # Calculate the middle index
        print(f"Left: {left}, Right: {right}, Mid: {mid}, arr[mid]: {arr[mid]}")  # Debug print

        # If the middle element is the target, return its index
        if arr[mid] == target:
            return mid
        
        # Check if the left part is sorted
        if arr[left] <= arr[mid]:
            # If target is in the left sorted part, search there
            if arr[left] <= target < arr[mid]:
                right = mid - 1
            else:
                left = mid + 1
        # Otherwise, the right part is sorted
        else:
            # If target is in the right sorted part, search there
            if arr[mid] < target <= arr[right]:
                left = mid + 1
            else:
                right = mid - 1

    return -1  # Return -1 if target is not found

# Example rotated sorted array of letters
rotated_array = ['g', 'h', 'i', 'j', 'k', 'a', 'b', 'c', 'd', 'e', 'f']

# Test cases
targets = ['d', 'g', 'k', 'x']  # Include a target that does not exist

for target in targets:
    index = search_rotated(rotated_array, target)
    print(f"Searching for '{target}' in {rotated_array}:")
    if index != -1:
        print(f"Letter '{target}' found at index {index}.")
    else:
        print(f"Letter '{target}' not found in the array.")
