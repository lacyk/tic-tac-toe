import 'package:colorize/colorize.dart';

// file for testing purpose

main (){
  // checkWin(diagonals);
  bool isLooping = true;
  int i = 0;

  while (isLooping) {
    Colorize pl = Colorize("This is my string");
    pl.lightBlue();
    print(pl);
    i ++;
    if (i == 5) {
      isLooping = false; // Set the boolean parameter to false to exit the loop
    }
  }

}