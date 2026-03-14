void main() {
  List<int> numbers = [12, 5, 8, 21, 14, 7, 3];

  print("Numbers: $numbers");

  print("Sum: ${calculateSum(numbers)}");
  print("Average: ${calculateAverage(numbers)}");
  print("Largest: ${findLargest(numbers)}");
  print("Smallest: ${findSmallest(numbers)}");

  print("Even Numbers: ${findEven(numbers)}");
  print("Odd Numbers: ${findOdd(numbers)}");
}

int calculateSum(List<int> numbers) {
  int sum = 0;

  for (int n in numbers) {
    sum += n;
  }

  return sum;
}

double calculateAverage(List<int> numbers) {
  int sum = calculateSum(numbers);
  return sum / numbers.length;
}

int findLargest(List<int> numbers) {
  int largest = numbers[0];

  for (int n in numbers) {
    if (n > largest) {
      largest = n;
    }
  }

  return largest;
}

int findSmallest(List<int> numbers) {
  int smallest = numbers[0];

  for (int n in numbers) {
    if (n < smallest) {
      smallest = n;
    }
  }

  return smallest;
}

List<int> findEven(List<int> numbers) {
  List<int> even = [];

  for (int n in numbers) {
    if (n % 2 == 0) {
      even.add(n);
    }
  }

  return even;
}

List<int> findOdd(List<int> numbers) {
  List<int> odd = [];

  for (int n in numbers) {
    if (n % 2 != 0) {
      odd.add(n);
    }
  }

  return odd;
}
