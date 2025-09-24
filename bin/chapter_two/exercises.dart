import 'dart:io';

// exercises to help students practice control structures in Dart:

void main() {
  oddOrEven();
  oneToTen();
  between();
}

// 1. Write a program that takes a number as input and prints whether it is odd or even.
void oddOrEven() {
  num a = 5;
  if (a % 2 == 0) {
    print('odd');
  } else {
    print('even');
  }
}

// 2. Write a program that takes a number as input and prints all the numbers from 1 to that number.

void oneToTen() {
  print('enter a number');
  String? input = stdin.readLineSync();
  int n = int.parse(input!);

  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

// 3. Write a program that takes two numbers as input and prints all the numbers between them (inclusive).

void between() {
  print('enter a number');
  String? input1 = stdin.readLineSync();
  int n1 = int.parse(input1!);

  String? input2 = stdin.readLineSync();
  int n2 = int.parse(input2!);

  for (int i = n1; i <= n2; i++) {
    print(i);
  }
}

// 4. Write a program that takes a number as input and calculates its factorial.

// 5. Write a program that takes a number as input and prints all its divisors.

// 6. Write a program that takes a list of numbers as input and finds the largest and smallest number.

void smallNLarge() {
  List<int> nums = [1, 2, 3, 4];
  int smallest = nums.reduce((a, b) => a < b ? a : b);
  int largest = nums.reduce((a, b) => a > b ? a : b);

  print("smallest $smallest");
  print("largest $largest");
}

// 7. Write a program that takes a list of numbers as input and sorts them in ascending order.

// 8. Write a program that takes a string as input and prints all its unique characters.

// 9. Write a program that takes a string as input and checks if it is a palindrome (a string that reads the same forwards and backwards).

// 10. Write a program that takes a string as input and calculates the frequency of each character in the string.


// exercises for practicing functions in Dart:

// 11. Write a function that takes two numbers as arguments and returns their product.

// 12. Write a function that takes a list of numbers as an argument and returns the sum of all the numbers in the list.

// 13. Write a function that takes a string as an argument and returns the number of vowels in the string.

// 14. Write a function that takes two strings as arguments and returns the concatenation of the two strings.

// 15. Write a function that takes a string as an argument and returns a list of the words in the string.

// 16. Write a function that takes a string and a character as arguments and returns the number of occurrences of the character in the string.

// 17. Write a function that takes two numbers as arguments and returns the smaller of the two numbers.

// 18. Write a function that takes a number as an argument and returns true if the number is even and false if the number is odd.