void main() {
  fetchFavoriteMovie();
  print("Fetching user favorite movie...");
}

Future<void> fetchFavoriteMovie() {
  return Future.delayed(const Duration(seconds: 2))
      .then((_) => print("imitation game"));
}
