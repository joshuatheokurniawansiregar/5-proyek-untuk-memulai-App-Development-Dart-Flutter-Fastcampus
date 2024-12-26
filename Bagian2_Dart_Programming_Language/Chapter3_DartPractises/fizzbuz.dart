List<String> fizzBuzz(int n) {
  List<String> returnedList = List.empty(growable: true);
  if (n == 0 || n == 1) {
    return returnedList;
  }
  for (int i = 0; i <= n; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      returnedList.add("FizzBuzz");
    } else if (i % 3 == 0) {
      returnedList.add("Fizz");
    } else if (i % 5 == 0) {
      returnedList.add("Buzz");
    } else {
      returnedList.add(i.toString());
    }
  }
  return returnedList;
}

void main() {
  int n = 100;
  List<String> fizzBuzz1 = [];
  fizzBuzz1 = List<String>.of(fizzBuzz(n));
  print(fizzBuzz(n));
}
