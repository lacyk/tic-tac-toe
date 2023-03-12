import 'dart:io';

main(){
  print(fields);

  drawBoard(fields);
}

List<int> fields = List.generate(9, (i) => 0);

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