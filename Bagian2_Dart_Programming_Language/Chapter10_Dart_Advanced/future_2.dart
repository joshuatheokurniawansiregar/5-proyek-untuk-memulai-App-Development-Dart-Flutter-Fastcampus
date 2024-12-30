// Tambah future mau lakukan sesuatu saat menunggu process asynchronous
// Future<T> _asynMethod()async{
//   // asynchronous process
//   T data = await _asyncProcess();
//   return data;
// }

// T _asyncMethod()async{
//   T data = await _somAsyncProcess();
//   return data
// }

void main() {
  executeTask();
  print("Fetching favorite movie");
}

void executeTask() async {
  String result = await fetchFavoriuteMovie();
  print(result);
}

Future<String> fetchFavoriuteMovie() async {
  await Future.delayed(const Duration(seconds: 2));
  return "Imitation Game";
}
