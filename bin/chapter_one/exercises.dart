// exercises to help students practice variables, data types, and operators in Dart:
void main() {
  sumNum();
  stringLength();
  concate();
  checks();
  increment();
  square();
  swap();
  whichOne();
}

// 1. Write a program that takes two numbers as input and calculates their sum, difference, product, and quotient.

void sumNum() {
  int num1 = 10;
  int num2 = 5;

  int sum = num1 + num2;
  int difference = num1 - num2;
  int product = num1 * num2;
  double quotient = num1 / num2;

  print('Sum: $sum');
  print('Difference: $difference');
  print('Product: $product');
  print('Quotient: $quotient');
}

// 2. Write a program that takes a string as input and calculates its length.

void stringLength() {
  String inputString = 'Hello, Dart!';
  int length = inputString.length;

  print('Length of the string: $length');
}

// 3. Write a program that takes a string as input and concatenates it with another string.
void concate() {
  String inputString1 = 'Something';
  String inputString2 = 'Cool';

  String concatenation = "$inputString1 $inputString2";
  print(concatenation);
}

// 4. Write a program that takes two strings as input and checks if they are equal.
void checks() {
  String input1 = 'input';
  String input2 = 'input two';

  if (input1 == input2) {
    print('They are equal');
  } else {
    print('They are not equal');
  }
}

// 5. Write a program that takes a number as input and increments it by 1.
void increment() {
  num input = 1;
  input++;
  print(input);
}

// 6. Write a program that takes a number as input and calculates its square.
void square() {
  num number = 3;
  num sqr = number * number;
  print(sqr);
}

// 7. Write a program that takes two numbers as input and swaps their values without using a temporary variable.
void swap() {
  int a = 5;
  int b = 10;

  print("Before swap: a = $a, b = $b");

  a = a + b; // a = 15
  b = a - b; // b = 5
  a = a - b; // a = 10

  print("After swap: a = $a, b = $b");
}

// 8. Write a program that takes a number as input and converts it from Celsius to Fahrenheit.

// 9. Write a program that takes a number as input and checks if it is positive, negative, or zero.

void whichOne() {
  int num = 5;

  if (num > 0) {
    print('pos');
  } else if (num < 0) {
    print('neg');
  } else {
    print('zero');
  }
}

// 10. Write a program that takes two numbers as input and calculates the area and perimeter of a rectangle.
