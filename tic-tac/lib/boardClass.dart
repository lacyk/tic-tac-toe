import 'dart:io';
import 'package:colorize/colorize.dart';

import 'playerClass.dart';

class Board {

  int count = 1;
  bool gameIsEnded = false;
  List<dynamic> fields = List.generate(9, (item) => " ");

  Player playerX = Player(Colorize("x"));
  Player playerO = Player(Colorize("O"));

  void checker() {
    List rows = [
      [fields[0], fields[1], fields[2]],
      [fields[3], fields[4], fields[5]],
      [fields[6], fields[7], fields[8]]
    ];
    List columns = [
      [fields[0], fields[3], fields[6]],
      [fields[1], fields[4], fields[7]],
      [fields[2], fields[5], fields[8]]
    ];
    List diagonals = [
      [fields[0], fields[4], fields[8]],
      [fields[2], fields[4], fields[6]]
    ];

    void checkWin(dimension) {
      for (List element in dimension) {
        if (element[0] != " " && element[0] == element[1] && element[0] == element[2]) {
          // element[0] = playerX.playerSymbol.bgCyan();
          // drawBoard(fields);

          print("Player ${element[0]} won the game !");
          gameIsEnded = true;
        }
      }
    }

    checkWin(rows);
    checkWin(columns);
    checkWin(diagonals);
  }

  void drawBoard(fields) {
    print('''
    ${fields[0]} | ${fields[1]} | ${fields[2]}
    --+---+--
    ${fields[3]} | ${fields[4]} | ${fields[5]}
    --+---+--
    ${fields[6]} | ${fields[7]} | ${fields[8]}
    ''');
  }

  int makeMove() {
    print("Make a move (0..8):");
    int move = int.parse(stdin.readLineSync()!);
    return move;
  }

  void applyMove(fields) {
    int move = makeMove();

    if (fields[move] == ' ') {
      if (count % 2 == 1) {
        fields[move] = playerX.playerSymbol.red();
      } else {
        fields[move] = playerO.playerSymbol.yellow();
      }
      count++;
    } else {
      print("Try again !");
    }
  }

  void play() {
    while (!gameIsEnded) {
      // check if the board is full
      if ((fields.indexWhere((element) => element == " ") == -1)) {
        print("It's a draw !");
        gameIsEnded = true;
      }
      else {
        try {
          applyMove(fields);
        }
        catch(e) {
          print(e);
        }
        drawBoard(fields);
        checker();
      }
    }
  }

}

