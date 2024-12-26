void main() {
  List<int> list1 = [2, 4, 5, 11, 09, 29];
  List<int> list2 = [1, 2, 10, 11, 22, 10];

  List<int> list3 = List<int>.empty(growable: true);

  for (int i = 0; i < list1.length; i++) {
    list3.add(list1[i] + list2[i]);
  }

  print(list3);
}
