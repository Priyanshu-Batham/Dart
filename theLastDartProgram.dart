import 'dart:io';

void main() {
  //first question
  //printLessThan5();

  //secondQuestion quick getter setter revise
  // Student stu = new Student();
  // stu
  //   ..id = "123"
  //   ..name = "HellGod";
  // print(stu.id);

  //thirdQuestion pallindrome
  pallindrome();
}

void printLessThan5() {
  print("Enter no of elements: ");
  int size = int.parse(stdin.readLineSync()!);
  List<int> arr = [];

  for (int i = 0; i < size; i++) {
    arr.add(int.parse(stdin.readLineSync()!));
  }

  for (int i = 0; i < size; i++) {
    if (arr[i] < 5) {
      print(arr[i]);
    }
  }
}

class Student {
  String? _id;
  String? name;

  String? get id {
    return _id;
  }

  set id(value) {
    _id = value;
  }
}

void pallindrome() {
  print("Enter first string: ");
  String str = stdin.readLineSync()!;

  int i = 0, j = str.length - 1;

  while (i <= j) {
    if (str[i] != str[j]) {
      print("Not pallindrome");
      return;
    }
    i++;
    j--;
  }

  print("Pallindrome");
}
