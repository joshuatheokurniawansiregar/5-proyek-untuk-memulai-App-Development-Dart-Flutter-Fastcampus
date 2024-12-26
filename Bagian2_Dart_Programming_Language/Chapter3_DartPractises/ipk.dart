import 'dart:io';

String ipkNumberToString() {
  print("Masukan IPK anda");
  double ipk = double.parse(stdin.readLineSync()!);
  Map<String, List<double>> ipks = {
    "A": [4.0],
    "A/B": [3.5, 3.6, 3.7, 3.8, 3.9],
    "B": [3.0, 3.1, 3.2, 3.3, 3.4],
    "B/C": [2.5, 2.6, 2.7, 2.8, 2.9],
    "C": [2.0, 2.1, 2.2, 2.3, 2.4],
    "C/D": [1.5, 1.6, 1.7, 1.8, 1.9],
    "D": [1.0, 1.1, 1.2, 1.3, 1.4],
    "D/E": [0.5, 0.6, 0.7, 0.8, 0.9],
    "E": [0.0, 0.1, 0.2, 0.3, 0.4]
  };
  String resultInCharacter = "";

  ipks.forEach((gradeInAlphabet, value) {
    num eachValueLength = value.length;
    for (num i = 0; i < eachValueLength; i++) {
      // num ipkValue = ipk
      if (value.contains(ipk)) {
        resultInCharacter = gradeInAlphabet;
      }
    }
  });

  return resultInCharacter;
}

void main() {
  print(ipkNumberToString());
}
