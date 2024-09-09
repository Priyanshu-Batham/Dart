class Parent {  
  Parent(String name) {
    print(name);
  }
}

class Child extends Parent {
  Child(String name): super(name) {
    
  }
}

void main() {
  Child obj = Child("Priyanshu");
}
