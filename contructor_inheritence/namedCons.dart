class Parent {
  Parent.cons1() {
    print("Parent cons");
  }
}

class Child extends Parent {
  Child():super.cons1() {
    print("Child cons");
  }
}

void main() {
  Child obj = Child();
}
