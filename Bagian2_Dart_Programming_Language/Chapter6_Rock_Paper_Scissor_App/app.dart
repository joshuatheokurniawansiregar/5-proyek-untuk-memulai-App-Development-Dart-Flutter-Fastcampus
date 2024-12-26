import 'dart:io';
import 'dart:math';

const CHARS = "RrPpSs";
String getRandomString(int length) =>
    List.generate(length, (index) => CHARS[Random().nextInt(CHARS.length)])
        .join()
        .toString();

void rockPaperScissorSolution() {
  do {
    String player = getPlayerMove();
    if (player == "Quit") {
      return;
    }
    print("Kamu: $player");

    String computer = getComputerMove();

    print("Computer: $computer");
    String result = "";
    if (player == computer) {
      result = "Seri";
    } else if (player == "Rock" && computer == "Scissor") {
      result = "Kamu Menang";
    } else if (player == "Scissor" && computer == "Paper") {
      result = "Kamu Menang";
    } else if (player == "Paper" && computer == "Rock") {
      result = "Kamu Menang";
    } else {
      result = "Computer Menang";
    }

    print("Result: $result");
    print("===========================================");
    print("=================New Game==========================");
  } while (true);
}

String getPlayerMove() {
  String userInput;
  print("Rock Paper Scissor App");
  String player = "";
  print("\nPilih:");
  print("\n(R/r) Rock");
  print("\n(P/p) Paper");
  print("\n(S/s) Scissor");
  print("\n(S/s) Others: Quit");
  userInput = stdin.readLineSync()!.toUpperCase();

  switch (userInput) {
    case "P":
      return "Paper";
    case "R":
      return "Rock";
    case "S":
      return "Scissor";
    default:
      return "Quit";
  }
}

String getComputerMove() {
  int computerRandomInput = Random().nextInt(3);

  switch (computerRandomInput) {
    case 0:
      return "Paper";
    case 1:
      return "Rock";
    default:
      return "Scissor";
  }
}

void main() {
  rockPaperScissorSolution();
}
