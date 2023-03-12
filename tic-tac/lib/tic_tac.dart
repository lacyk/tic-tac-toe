import 'dart:io';

int count = 1;


main() {
  List<String> fields = List.generate(9, (i) => " ");

  checker(){
    List rows = [[fields[0],fields[1],fields[2]],[fields[3],fields[4],fields[5]],[fields[6],fields[7],fields[8]]];
    List columns = [[fields[0],fields[3],fields[6]],[fields[1],fields[4],fields[7]],[fields[2],fields[5],fields[8]]];
    List diagonals = [[fields[0],fields[4],fields[8]],[fields[2],fields[4],fields[6]]];

    void checkWin(dimension){
      for (List element in dimension) {
        if (element[0] != " " && element[0] == element[1] && element[0] == element[2]){
          print("that's it");
        }
      }
    }

    checkWin(rows);
    checkWin(columns);
    checkWin(diagonals);
  }


  bool gameIsEnded = false;

  while (!gameIsEnded) {
    if ((fields.indexWhere((element) => element == " ") == -1)) {
      return gameIsEnded == true;
      // check diagonals
    } else if (fields[0] != ' ' && fields[0] == fields[3] && fields[0] == fields[6]) {
      print("Player ${fields[0]} won the game !");
      return;
    }
    else {
      applyMove(fields);
      drawBoard(fields);
      checker();
    }
  }
}



void drawBoard(fields){
    print('''
    ${fields[0]} | ${fields[1]} | ${fields[2]}
    --+---+--
    ${fields[3]} | ${fields[4]} | ${fields[5]}
    --+---+--
    ${fields[6]} | ${fields[7]} | ${fields[8]}
    ''');
}

int makeMove(){
  print("please make a move");
  int move = int.parse(stdin.readLineSync()!);
  return move;
}

void applyMove(fields){
  int move = makeMove();

  if (fields[move] == ' '){
    if (count % 2 == 1){
      fields[move] = "X";
    } else {
      fields[move] = "O";
    }
    count++;
  } else {
    print("try again");
  }

}