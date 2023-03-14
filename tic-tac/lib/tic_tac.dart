import 'dart:io';
import 'boardClass.dart';

Board board = Board();

main() {

  while (!board.gameIsEnded) {
    // check if the board is full
    if ((board.fields.indexWhere((element) => element == " ") == -1)) {
      print("It's a draw !");
      board.gameIsEnded = true;
    }
    else {
      board.applyMove(board.fields);
      board.drawBoard(board.fields);
      board.checker();
    }
  }
}