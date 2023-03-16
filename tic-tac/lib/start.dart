import 'dart:io';
import 'package:colorize/colorize.dart';

import 'boardClass.dart';

startApp() {
  bool quit = false;

  while(!quit) {

    print(Colorize('====================').yellow());
    print(Colorize('Tic-Tac-Toe Main Menu').lightMagenta());
    print(Colorize('====================').yellow());
    print('1. Start a New Game');
    print('2. About');
    print('3. Quit');
    stdout.write('\nEnter your choice (1-3): ');

    String input = stdin.readLineSync()!;
    int choice = int.parse(input);

    void showAbout() {
      // Code to show game information
      print('This game was created by Lacyk in a few days.');
    }

    switch (choice) {
      case 1:
        Board board = Board();
        board.play();
        break;
      case 2:
        showAbout();
        break;
      case 3:
        quit = true;
        break;
      default:
        print('Invalid choice. Please enter a number between 1 and 4.');
        break;
    }
  }
}
