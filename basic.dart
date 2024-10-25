import 'dart:io'; // 📂 Import the 'dart:io' library to interact with system input/output

// 🐍 Function to run a Python script from Dart
Future<void> runPythonScript() async {
  // Run a Python script using 'python3' and pass the name of the script ('display_message.py')
  // You can change 'display_message.py' to any valid Python script file on your system
  ProcessResult result = await Process.run('python', ['emoji.py']);

  // 🖥️ Print the output (stdout) of the Python script to the console
  print(result.stdout);

  // ⚠️ If there were any errors (stderr), print them to the console
  if (result.stderr.isNotEmpty) {
    print('⚠️ Error: ${result.stderr}');
  }
}

// 🧮 Function to perform basic calculator operations: addition (+), subtraction (-), multiplication (*),
// division (/), and modulo (%). Takes two numbers and an operator as input.
double basicCalculator(double num1, double num2, String operator) {
  // Print the operation being performed to the console for clarity
  print("➡️ Performing: $num1 $operator $num2");

  // Use a switch statement to handle different operators
  switch (operator) {
    case '+':
      return num1 + num2; // ➕ Addition
    case '-':
      return num1 - num2; // ➖ Subtraction
    case '*':
      return num1 * num2; // ✖ Multiplication
    case '/':
      // ⚠️ Check if dividing by zero and handle it, since division by zero is undefined
      if (num2 == 0) {
        print("❌ Error: Division by zero is not allowed");
        return double.nan; // Return 'NaN' (Not a Number) to indicate an error
      }
      return num1 / num2; // ➗ Division
    case '%':
      // ⚠️ Handle modulo by zero, which is also undefined
      if (num2 == 0) {
        print("❌ Error: Modulo by zero is not allowed");
        return double.nan; // Return 'NaN' for error
      }
      return num1 % num2; // ➗ Modulo (remainder of division)
    default:
      // ❓ If the operator is not recognized, print an error message and return 'NaN'
      print("❓ Invalid operator");
      return double.nan;
  }
}

void main() {
  // Run the Python script
  print("== 🎯 Running Python from Dart 🎯 ==");
  runPythonScript();  // Run the Python script asynchronously(it won't block other parts of the progrm while its running)

  print("\n== 🧮 Basic Calculator 🧮 ==");
  print("");

  // Test cases for the calculator
  print("Result: ${basicCalculator(10, 5, '+')}"); // ➕ Addition
  print("Result: ${basicCalculator(10, 5, '-')}"); // ➖ Subtraction
  print("Result: ${basicCalculator(10, 0, '*')}"); //  ✖ Multiplication
  print("Result: ${basicCalculator(10, 2, '/')}"); // ➗ Division
  print("Result: ${basicCalculator(9, 2, '%')}");  // ➗ Modulo

  print("");
  print("✨ End of Calculator Operations ✨");
}