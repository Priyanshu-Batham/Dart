void main(){
  String name = "Priyanshu";

  print(name.codeUnits);
  print(name.hashCode);
  print(name.isEmpty);
  print(name.isNotEmpty);
  print(name.length);
  print(name.allMatches("Priyanshu"));
  print(name.codeUnitAt(3));
  print(name.compareTo("Batham"));
  print(name.endsWith("yanshu"));
  print(name.trimRight());
  print(name.trimLeft());
  print(name.toUpperCase());
  print(name.toLowerCase());
  print(name.padRight(2));
  print(name.split(' '));
}