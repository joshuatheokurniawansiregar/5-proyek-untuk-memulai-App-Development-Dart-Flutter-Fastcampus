import 'dart:math';

double triangelArea(int alas, int tinggi) {
  double result = (alas * tinggi) / 2;
  return result;
}

String hypotenuses(int alas, tinggi) {
  double result = sqrt((alas * alas) + (tinggi * tinggi));
  return result.toStringAsFixed(4);
}

void main() {
  int alas = 10;
  int tinggi = 10;
  print('luas segitiga = ${triangelArea(alas, tinggi)}');

  print('\nsisi miring segitiga siku-siku ${hypotenuses(alas, tinggi)}');
}
