//Parent Class
class ParentClass {
  int? parentProp;
  bool isPrime(int num) {
    if (num < 2) return true;
    for (int i = 2; i * i < num; i++) {
      if (num % i == 0) return false;
    }
    return true;
  }

  //Param Constructor
  ParentClass.parametrizedConstructor(int x) {
    parentProp = x;
  }

  //Default named Constructor
  ParentClass.defaultConstructor() {
    parentProp = 50;
  }

  //Default unnamed constructor
  ParentClass() {
    parentProp = 50;
  }
}

//Child Class
class ChildClass extends ParentClass {
  int? childProp;
  static int? staticVar;

  //calling a named constructor of parent class in child class
  ChildClass():super.parametrizedConstructor(50) {
    childProp = super.parentProp;
    staticVar = 10;
  }
}

void main() {
  ChildClass obj = new ChildClass();
  print(obj.parentProp);
  print(obj.isPrime(7));
}