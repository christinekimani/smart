// ANSI escape codes for colors
const String reset = '\x1B[0m';// resets the color after use
const String green = '\x1B[32m';// change color to green
const String red = '\x1B[31m';// change color to red

// Function to check if a string is a palindrome
bool isPalindrome(String input) {
  // Normalize input: lowercase and remove non-alphanumeric characters
  String normalized = input.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), ''); // changes texts to lowercase  and removes characters that are not letters for easier comparison 
  return normalized == normalized.split('').reversed.join('');// check the original and the reversed
}

// Main function
void main() {
  // Test cases
  List<String> tests = [
    "A man, a plan, a canal: Panama",
    "racecar",
    "hello",
    "Nixon",
  ];

  for (String test in tests) {
    bool result = isPalindrome(test);
    // Print result in color
    print('${result ? green : red}${test}: ${result ? '✔ Palindrome' : '✘ Not a Palindrome'}$reset');
  }

  // Test numeric palindrome
  List<num> numericTests = [12321, 12345, 1.1];
  for (num numTest in numericTests) {
    bool result = isPalindrome(numTest.toString());
    print('${result ? green : red}${numTest}: ${result ? '✔ Palindrome' : '✘ Not a Palindrome'}$reset');
  }
}
