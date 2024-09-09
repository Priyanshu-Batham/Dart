// abstract class as interface
abstract class CalculateTotal {
  int total();
  void printing() {
    print("working");
  }
}

// abstract class as interface
abstract class CalculateAverage {
  double average();
}

class NormalClass {
  void normalFun() {
    print("asbcas;djc");
  }
}

// implements multiple interfaces
class Student implements CalculateTotal, CalculateAverage, NormalClass {
// properties
  int marks1, marks2, marks3;
// constructor
  Student(this.marks1, this.marks2, this.marks3);
// implementation of average()
  @override
  double average() {
    return total() / 3;
  }

  @override
  void printing() {
    print("Working in child class");
  }

  @override
  void normalFun() {
    print("asbcas;djc");
  }

// implementation of total()
  @override
  int total() {
    return marks1 + marks2 + marks3;
  }
}

void main() {
  Student student = Student(90, 80, 70);
  print('Total marks: ${student.total()}');
  print('Average marks: ${student.average()}');
}
