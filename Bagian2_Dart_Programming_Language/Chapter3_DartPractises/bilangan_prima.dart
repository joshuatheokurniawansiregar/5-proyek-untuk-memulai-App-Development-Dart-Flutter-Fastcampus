List<int> BilanganPrima(int fromNumber, toNumber) {
  List<int> ListOfBilanganPrima = [];
  while (fromNumber <= toNumber) {
    int counter = 0;
    for (int divider = 1; divider <= fromNumber; divider++) {
      print(divider);

      if (fromNumber % divider == 0) {
        counter++;
      }
    }
    if (counter == 2) {
      ListOfBilanganPrima.add(fromNumber);
    }
    fromNumber++;
  }
  return ListOfBilanganPrima;
}

void main() {
  print(BilanganPrima(1, 15));
}
