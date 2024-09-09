void main()
{
  
  int num = 100;
  
  //how to set infinite value
  int inf = double.maxFinite.toInt();
  print("Infinite value: ${inf}");

  //Properties
  print(num.isEven);
  print(num.isOdd);
  print(num.sign);
  print(num.hashCode);
  print(num.isFinite);
  print(num.isInfinite);
  print(num.isNegative);

  //Functions
  print(num.abs());
  print(num.ceil());
  print(num.ceilToDouble());
  print(num.compareTo(200));
  print(num.round());
  print(num.toString());
  print(num.toInt());
}