import 'dart:async';

class Calculator {
  Future<double> add(double a, double b) async {
    await Future.delayed(Duration(seconds: 1));
    return a + b;
  }

  Future<double> subtract(double a, double b) async {
    await Future.delayed(Duration(seconds: 1));
    return a - b;
  }

  Future<double> multiply(double a, double b) async {
    await Future.delayed(Duration(seconds: 1));
    return a * b;
  }

  Future<double> divide(double a, double b) async {
    await Future.delayed(Duration(seconds: 1));

    if (b == 0) {
      throw Exception("Cannot divide by zero!");
    }

    return a / b;
  }
}

Future<void> main() async {
  Calculator calc = Calculator();

  try {
    double sum = await calc.add(10, 5);
    print("Addition: $sum");

    double sub = await calc.subtract(10, 5);
    print("Subtraction: $sub");

    double mul = await calc.multiply(10, 5);
    print("Multiplication: $mul");

    double div = await calc.divide(10, 2);
    print("Division: $div");

  } catch (e) {
    print("Error: $e");
  } finally {
    print("Calculation finished.");
  }
}
