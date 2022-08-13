import 'dart:math';

class Game {
  int ans = 0;

  Game() {
    var r = Random();
    ans = r.nextInt(100) + 1;
  }
  int count=1;
  int doguess(int num) {
    if (num > ans) {
      print("➜ $num is TOO HIGH!!");
      print("──────────────────────────────────────────────");
      count++;
      return 0;
    } else if (num < ans) {
      print("➜ $num is TOO LOW!!");
      print("──────────────────────────────────────────────");
      count++;
      return 0;
    } else {
      print("➜ $num is CORRECT ❤, total guesses: $count");
      count = 1;
      return 1;
    }
  }
}








