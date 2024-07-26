import "dart:io";

void main() {
  // stringInput();
  // writeFunctions();
  // typeCasting();
  moduloTest();
}

void stringInput() {
  print("Enter a string: ");
  String? str = stdin.readLineSync();
  print("You entered: $str");
}

void writeFunctions() {
  String str = "wow";

  // write function prints on the same line
  stdout.write(str);
  // writeLn function prints on the next line
  stdout.writeln(str);

  //idk
  // stdout.addStream(stream);

  //idk
  // stdout.writeAll();
}

void typeCasting() {
  /*
    '!' is used to make a variable non-nullable
    '?' is used to make a variable nullable
   */
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);
  print("val: $num");
}

void moduloTest() {
  stdout.write("Enter a decimal number: ");
  double num = double.parse(stdin.readLineSync()!);
  num %= 2;
  print(num);
}
