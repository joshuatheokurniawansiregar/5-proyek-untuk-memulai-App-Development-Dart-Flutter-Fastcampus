import 'pair.dart';

void main() {
  Pair pairList = Pair<List<int>>(<int>[1, 2, 3], <int>[4, 5, 6]);
  List<int> listInt1 = pairList.data1;

  for (int i = 0; i < listInt1.length; i++) {
    print(listInt1[i]);
  }
}
