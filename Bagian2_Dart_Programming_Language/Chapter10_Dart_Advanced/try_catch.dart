void main() {
  try {
    var result = dividedByZero(8, 0);
    print(result);
  } catch (e) {
    print("Caught exception: $e");
  } finally {
    print("End of program");
  }
}

num dividedByZero(int value, int divider) {
  if (divider == 0) {
    throw Exception("Can't divided by zero");
  } else {
    return value / divider;
  }
}
