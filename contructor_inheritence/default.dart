class Parent {
  Parent() {
    print("Parent cons");
  }
}

class Child extends Parent {
  Child() {
    print("Child cons");
  }
}

void main() {
  Child obj = Child();
}
