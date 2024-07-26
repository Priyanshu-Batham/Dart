void main() {
  forLoop();
  whileLoop();
  doWhileLoop();
}

void forLoop() {
  print("For Loop");
  for (int i = 0; i < 10; i++) {
    print("value of i: ${i + 1}");
  }
}

void whileLoop() {
  print("While Loop");
  int i = 0;
  while (i < 10) print("value of i: ${++i}");
}

void doWhileLoop() {
  print("Do-While Loop");
  int i = 0;
  do print("value of i: ${++i}"); while (i < 10);
}
