import 'dart:io'; 

// 🐍 A function to run a Python program from this Dart program
Future<void> runPythonScript() async {
  // tells the computer to run a Python file named 'display_message.py'
  ProcessResult result = await Process.run('python', ['emoji.py']);

  // 🖥️  gives us the result (output) from running the Python file, and we print it out
  print(result.stdout);

  // ⚠️ If the Python program has any mistakes (errors), we print these too
  if (result.stderr.isNotEmpty) {
    print('⚠️ Error: ${result.stderr}');
  }
}

// 🧮 This is a function that sorts a list of numbers using Quick Sort
List<int> quickSort(List<int> list) {
  // 🎯 If the list has 1 or 0 numbers, it's already sorted, so we don't need to do anything
  if (list.length <= 1) {
    return list; // Just give it back the way it is!
  }

  // 🎯 Let's pick a "pivot" number to compare everything against 
  int pivot = list[list.length ~/ 2];

  // make three groups: 
  // 1️⃣ Numbers smaller than the pivot, 2️⃣ numbers bigger than the pivot, and 3️⃣ numbers equal to the pivot
  List<int> less = [];    // 🏃‍♂️ These will be the numbers less than the pivot
  List<int> greater = []; // 🚀 These will be the numbers greater than the pivot
  List<int> equal = [];   // 😎 These will be the numbers equal to the pivot

  // 🔄 Now we go through the list and put each number in one of the three groups
  for (var number in list) {
    if (number < pivot) {
      less.add(number);    // 👈 If the number is smaller than the pivot, we put it in the "less" group
    } else if (number > pivot) {
      greater.add(number); // 👉 If it's bigger, it goes in the "greater" group
    } else {
      equal.add(number);   // 😎 If it's the same as the pivot, it goes in the "equal" group
    }
  }

  // 🔁 Now we sort the 'less' and 'greater' groups by calling this function again on those groups (recursion!)
  return quickSort(less) + equal + quickSort(greater); // We return everything together as a sorted list
}

void main() {
  // 🎯 Let's first run the Python program from Dart
  print("== 🎯 Running Python Script from Dart 🎯 ==");
  runPythonScript(); // This calls the function we made to run Python

  // ⚡ Now we're going to do Quick Sort on some numbers!
  print("\n== ⚡ Quick Sort Example ⚡ ==");
  print("----------------------------------");

  // Here is a list of random numbers that we want to sort
  List<int> numbers = [3, 6, 8, 10, 1, 2, 1]; 
  print("🔢 Original List: $numbers"); // Print the unsorted list

  // 🧮 We sort the list using Quick Sort
  List<int> sortedNumbers = quickSort(numbers);
  print("✅ Sorted List: $sortedNumbers"); // Now print the sorted list
  
  print("----------------------------------");
  print("✨ Quick Sort Completed ✨"); 
}
