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

// Function to perform Quick Sort on a list of integers
List<int> quickSort(List<int> list) {
  // 🧪 Base case: if the list has 1 or fewer elements, return it as it's already sorted
  if (list.length <= 1) {
    return list;
  }

  // 🎯 Choose the pivot (middle of the list)
  int pivot = list[list.length ~/ 2];

  // Create lists to hold elements less than, greater than, and equal to the pivot
  List<int> less = [];
  List<int> greater = [];
  List<int> equal = [];

  // 🔄 Distribute numbers into less, greater, and equal lists
  for (var number in list) {
    if (number < pivot) {
      less.add(number);    // 👈 Add to 'less'
    } else if (number > pivot) {
      greater.add(number); // 👉 Add to 'greater'
    } else {
      equal.add(number);   // 🔗 Add to 'equal'
    }
  }

  // 🔁 Recursively sort and combine the lists
  return quickSort(less) + equal + quickSort(greater);
}

void main() {
  // 🎯 Run the Python script
  print("== 🎯 Running Python Script from Dart 🎯 ==");
  runPythonScript();

  // ⚡ Quick Sort Example
  print("\n== ⚡ Quick Sort Example ⚡ ==");
  print("----------------------------------");

  // Unsorted list of numbers
  List<int> numbers = [3, 6, 8, 10, 1, 2, 1]; 
  print("🔢 Original List: $numbers");

  // Perform Quick Sort
  List<int> sortedNumbers = quickSort(numbers);
  print("✅ Sorted List: $sortedNumbers");
  
  print("----------------------------------");
  print("✨ Quick Sort Completed ✨");
}
