int [][]board={
  {1, 2, 2, 3, 3, 4, 4, 5},
  {5, 6, 6, 7, 7, 7, 7, 7},
  {-1, -2, -2, -3, -3, -4, -4, -5},
  {-5, -6, -6, -7, -7, -7, -7, -7}
};
void setup() {
  size(500, 400);
  PFont font = createFont("標楷體", 30);//設定文字
  textFont(font);
  textAlign(CENTER, CENTER);
}
void draw()
{
  background(#FFDAA2);
  for (int x=50; x<=450; x+=50) {
    line( x, 50, x, 250);//上排(為了楚河漢界)
  }
  for (int y=50; y<=250; y+=50) {
    line( 50, y, 450, y); //line(x1,y1,x2,y2);
  }
  for (int i=0; i<4; i++) {///印出象棋
    for (int j=0; j<8; j++) {
      int id= board[i][j];
      drawChess(50+25+j*50, 50+25+i*50, id);
    }
  }
}
String []name={"將", "士", "象", "車", "馬", "包", "卒"};
String []name2={"帥", "仕", "相", "俥", "傌", "炮", "兵"};
void drawChess(int x, int y, int id ) {
  fill(255);
  ellipse(x, y, 40, 40);
  if (id>0) {
    fill(0);
    text(name[id-1], x, y-3);
  } else {
    fill(255, 0, 0);
    text(name2[-id-1], x, y-3);
  }
}
