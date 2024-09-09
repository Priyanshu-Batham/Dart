//1. Basic Function
int add(int a, int b) {
  return a + b;
}

// 2. Function with Optional Parameters
String greet(String name, [String greeting = 'Hello']) {
  return '$greeting, $name!';
}

//3. Named Parameters
String describePerson({String? name = null, int? age = null}) {
  return '$name is $age years old.';
}

//5 Arrow Functions
int square(int x) => x * x;

//6. Higher-Order Functions
void applyOperation(int a, int b, int Function(int, int) operation) {
  int result = operation(a, b);
  print('Result: $result');
}

//7. Function as a Return Value
Function makeAdder(int addBy) {
  return (int a) => a + addBy;
}

void main() {
  int result = add(5, 10);
  //1
  print('Sum: $result'); // Output: Sum: 15

  //2
  print(greet('Priyanshu'));
  print(greet('Priyanshu', 'Welcome'));

  //3
  print(describePerson(age: 21, name: 'Priyanshu'));

  //4 Anonymous function as a variable
  var multiply = (int a, int b) {
    return a * b;
  };
  print('Product: ${multiply(4, 5)}'); // Output: Product: 20
  // Anonymous function passed as an argument to another function
  List<int> numbers = [1, 2, 3, 4, 5];
  //4.a
  List<int> doubledNumbers = numbers.map((number) {
    return number * 2;
  }).toList();
  //4.b
  int reducedNum = numbers.reduce((int a, int acc) => acc + a);
  //4.c
  int foldedNum = numbers.fold(5, (int item, int acc) => acc + item);
  print('Reduce: ${reducedNum}');
  print('Fold: ${foldedNum}');
  print('Doubled: $doubledNumbers'); // Output: Doubled: [2, 4, 6, 8, 10]

  //5
  print('Square of 6: ${square(6)}');

  //6
  //Passing a named function
  applyOperation(3, 4, add); // Output: Result: 7
  //Passing an anonymous function
  applyOperation(3, 4, (int a, int b) {
    return a - b;
  }); // Output: Result: -1
  // Passing an arrow function
  applyOperation(3, 4, (a, b) => a * b); // Output: Result: 12

  //7
  var add5 = makeAdder(5);
  print(add5(2)); // Output: 7
  print(add5(10)); // Output: 15
}
