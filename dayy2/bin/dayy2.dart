import 'dart:io';

void main() {
  print('Simple Calculator');

  stdout.write('Enter first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter operation (+, -, *, /): ');
  String op = stdin.readLineSync()!;

  double result;

  if (op == '+') {
    result = num1 + num2;
  } else if (op == '-') {
    result = num1 - num2;
  } else if (op == '*') {
    result = num1 * num2;
  } else if (op == '/') {
    result = num1 / num2;
  } else {
    print('Invalid operation!');
    return;
  }

  print('Result: $result');
}
