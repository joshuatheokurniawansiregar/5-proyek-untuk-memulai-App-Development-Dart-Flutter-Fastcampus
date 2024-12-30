void main() {
  print("Start execute program");
  executeTasks();
  print("End Program");
}

void executeTasks() async {
  for (int i = 1; i <= 5; i++) {
    print("Execute task $i");
  }

  await Future.delayed(Duration(seconds: 1))
      .then((_) => print("asynchronous with future"));
}
