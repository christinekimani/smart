def is_match(s, p):
    # If pattern is empty, return True if the string is also empty
    if not p:
        return not s

    # Check if the first character matches (or if pattern has '.')
    first_match = bool(s) and p[0] in {s[0], '.'}

    # If the pattern has '*' as the second character
    if len(p) >= 2 and p[1] == '*':
        # Match 0 characters, or 1 (and move forward in string)
        return (is_match(s, p[2:]) or
                (first_match and is_match(s[1:], p)))
    else:
        # If no '*', check for a regular match for the next character
        return first_match and is_match(s[1:], p[1:])
#this needs working its rubbing but not giving output