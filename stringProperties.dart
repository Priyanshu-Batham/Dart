void main() {
  String name = "Priyanshu";

  // print(name.codeUnits);
  // print(name.hashCode);
  // print(name.isEmpty);
  // print(name.isNotEmpty);
  // print(name.length);
  // print(name.allMatches("Priyanshu"));
  // print(name.codeUnitAt(3));
  // print(name.compareTo("Batham"));
  // print(name.endsWith("yanshu"));
  // print(name.trimRight());
  // print(name.trimLeft());
  // print(name.toUpperCase());
  // print(name.toLowerCase());
  // print(name.padRight(2));
  // print(name.split(' '));
  //strFuns(name);

  //converting char to ascii
  print(name.codeUnitAt(0));
  //converting ascii to char
  print(String.fromCharCode(65));
  
}

//accessing element from index: str[i];
//accessing index from element: str.indexOf("i");
//assigning ke lie new string bnalo, nhi to replace method but not preferred

void strFuns(String str) {
  String newStr = "";
  newStr = str.replaceFirst("P", "B");
  print(newStr);
}
