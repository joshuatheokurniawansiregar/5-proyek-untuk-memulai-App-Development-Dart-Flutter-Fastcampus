import 'dart:io';

void main() {
  print("Start execute program");
  executeTasks(); //blocking End Program and user input below.
  print("End program");

  print("Enter your name: ");
  String? name = stdin.readLineSync(); //blocking Welcom to the beach, $name

  print("Welcome to the beach, $name");
}

void executeTasks() {
  for (int i = 1; i <= 5; i++) {
    print("Execute task $i");
  }

  sleep(Duration(seconds: 2));
}
