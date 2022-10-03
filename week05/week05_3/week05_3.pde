void setup() {
  size(500, 700);
  PFont font = createFont("標楷體",30);//設定文字
  textFont(font);
  textAlign(CENTER,CENTER);
}
int [][]board={
  {4, 5, 3, 2, 1, 2, 3, 5, 4},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0, 6, 0, 0, 0, 0, 0, 6, 0},
  {7, 0, 7, 0, 7, 0, 7, 0, 7},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},
};//將象棋個棋編碼
String []name={"將","士","象","馬","車","包","卒"};
void draw() {
  for (int x=50; x<=450; x+=50) {
    line( x, 50, x, 250);//上排(為了楚河漢界)
    line( x, 300, x, 500);//下排
  }
  for (int y=50; y<=500; y+=50) {
    line( 50, y, 450, y); //line(x1,y1,x2,y2);
  }
  for (int i=0; i<5; i++) {///印出象棋
    for (int j=0; j<9; j++) {
      int id= board[i][j];///設定id能對照數字，之後中文name陣列就可以讀取。
      if (id==0) continue;///因為陣列數不相同，我們必須扣掉0，不印的地方
      text( name[id-1], 50+j*50, 50+i*50);//左邊y,右邊x
    }
  }
}
