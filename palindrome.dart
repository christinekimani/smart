import 'dart:io';

// 🐍 Function to run a Python script from Dart
Future<void> runPythonScript() async {
  // Replace 'path_to_python_script.py' with the actual path to your Python script
  ProcessResult result = await Process.run('python3', ['display_message.py']);

  // 🖥️ Print the output of the Python script
  print(result.stdout);
  if (result.stderr.isNotEmpty) {
    print('⚠️ Error: ${result.stderr}');
  }
}


// Function to perform basic calculator operations (+, -, *, /, %)
double basicCalculator(double num1, double num2, String operator) {
  // 🧮 Display the operation being performed
  print("➡️ Performing: $num1 $operator $num2");

  // 🔄 Use a switch-case to determine the operation
  switch (operator) {
    case '+':
      return num1 + num2; // ➕ Addition
    case '-':
      return num1 - num2; // ➖ Subtraction
    case '*':
      return num1 * num2; // ✖ Multiplication
    case '/':
      // ⚠️ Handle division by zero
      if (num2 == 0) {
        print("❌ Error: Division by zero");
        return double.nan;
      }
      return num1 / num2; // ➗ Division
    case '%':
      // ⚠️ Handle division by zero
      if (num2 == 0) {
        print("❌ Error: Division by zero");
        return double.nan;
      }
      return num1 % num2; // ➗ Modulo (remainder)
    default:
      // ❓ Invalid operator
      print("❓ Invalid operator");
      return double.nan;
  }
}

void main() {
  // Run the Python script
  print("== 🎯 Running Python Script from Dart 🎯 ==");
  runPythonScript();

  print("\n== 🧮 Basic Calculator 🧮 ==");
  print("----------------------------------");

  // Test cases for the calculator
  print("Result: ${basicCalculator(10, 5, '+')}"); // ➕ Addition
  print("Result: ${basicCalculator(10, 0, '/')}"); // ➗ Division by zero
  print("Result: ${basicCalculator(9, 2, '%')}");  // Modulo

  print("----------------------------------");
  print("✨ End of Calculator Operations ✨");
}




void name() {
  String smiley = '\u{1f600}'; // Corrected: added a semicolon
  print(smiley); // This will print the smiley face emoji
}
