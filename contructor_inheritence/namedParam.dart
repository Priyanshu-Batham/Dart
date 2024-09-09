class Parent {
  Parent({String? name, int? id}) {
    print("name: ${name}");
    print("id: ${id}");
  }
}

class Child extends Parent {
  Child({String? name, int? id}) : super(name: name, id: id) {
    print("Child cons");
  }
}

void main() {
  Child obj = Child(id: 1, name: "Priyanshu");
}
