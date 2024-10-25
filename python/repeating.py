def longest_unique_substring(s):
    char_set = set()  # To store unique characters
    left = 0  # Left boundary of the current substring
    max_length = 0  # The length of the longest unique substring found

    # Loop through the string with the right pointer
    for right in range(len(s)):
        # If the character at 'right' is already in the set, move 'left' pointer
        while s[right] in char_set:
            char_set.remove(s[left])
            left += 1  # Move the left pointer to the right
        # Add the new unique character
        char_set.add(s[right])
        # Update the maximum length of the unique substring
        max_length = max(max_length, right - left + 1)

    return max_length  # Return the length of the longest unique substring
#this needs working its rubbing but not giving output