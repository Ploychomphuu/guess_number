import 'dart:io';

import 'game.dart';

//int? a; //intเฉยๆห้ามเป็น null  // int a; ผิด   // int? a; เป็น null ได้

void main() {
  var game = Game();
  int result = 0;
  print("++++++++++++++++++++++++++++++++++++++++++++++");
  print("                PLAY THE GAME                 ");
  print("++++++++++++++++++++++++++++++++++++++++++++++");
  do {
    stdout.write("Please guess the number between 1 and 100: ");
    var input = stdin.readLineSync(); // รับมาเป็นString
    var guess = int.tryParse(input!); //แปลงString เป็น int เพื่อเทียบมาก-น้อย  //ใส่ ! ตามหลัง = ไม่เป็นnull แน่นอน
    // guess = จำนวนเต็ม ถ้าguess= null < > จะใช้ไม่ได้

    if (guess == null) {

      continue;
    }
    result = game.doguess(guess);

  } while (result != 1);//ทายเลขไม่ถูก ทายวนใหม่เรื่อยๆ

  }
