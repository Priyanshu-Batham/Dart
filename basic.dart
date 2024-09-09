void main() {
  printPrimes(5);
}

//returns true if number is even else odd
bool isEven(int number) => number % 2 == 0;

// Function to check if a given number is a prime number
bool isPrime(int number) {
  if (number <= 1) return false;

  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) return false;
  }

  return true;
}

// Returns factorial of a given number
int factorial(int number) {
  if (number == 0 || number == 1) return 1;
  return number * factorial(number - 1);
}

//calculates and returns interest based on principle/rate/time
double calcInterest(double principal, double rate, double time) {
  return (principal * rate * time) / 100;
}

//converts Celsius to Fahrenheit
double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

// Prints the first n Fibonacci numbers
void printFibonacci(int n) {
  int a = 0, b = 1, next;

  print('Fibonacci Series up to $n terms:');
  for (int i = 0; i < n; i++) {
    print('$a');
    next = a + b;
    a = b;
    b = next;
  }
}

// Prints the first n prime numbers
void printPrimes(int n) {
  int count = 0, num = 2;

  print('First $n prime numbers:');
  while (count < n) {
    if (isPrime(num)) {
      print('$num');
      count++;
    }
    num++;
  }
}