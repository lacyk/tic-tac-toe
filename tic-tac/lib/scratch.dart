main (){
  List rows = [[0,1,2],[3,4,5],[6,7,8]];
  List columns = [[0,3,6],[1,4,7],[2,5,8]];
  List diagonals = [[0,4,8],[2,4,6]];


  void checkWin(dimension){
    for (List element in dimension) {
      if (element[0] != " " && element[0] == element[1] && element[0] == element[2]){
        print("that's it");
      }
    }
  }

  checkWin(diagonals);

}