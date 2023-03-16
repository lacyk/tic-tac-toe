import 'dart:io';
import 'boardClass.dart';

startApp() {
  bool quit = false;

  while(!quit) {

    print('====================');
    print('Tic-Tac-Toe Main Menu');
    print('====================');
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
        print("3nd Case");
        break;
      case 4:
        quit = true;
        break;
      default:
        print('Invalid choice. Please enter a number between 1 and 4.');
        break;
    }
  }
}
