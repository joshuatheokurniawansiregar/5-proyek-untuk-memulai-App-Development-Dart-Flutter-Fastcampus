void main() {
  int result = 10 ~/ 1;
  print(result);

  var value1 = numDividedByZero(10, 2);
  print(value1);
  var value2 = numDividedByZero(0, 19);
  print(value2);
}

num numDividedByZero(int value, int divider) {
  if (divider == 0) {
    throw Exception("Can't divided by zero");
  } else {
    return value / divider;
  }
}
