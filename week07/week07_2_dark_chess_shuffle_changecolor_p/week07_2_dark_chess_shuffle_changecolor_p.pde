int [][]show={
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0,0}
};//覆蓋下面的牌
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
  for(int k=0;k<1000;k++){
     shuffle_one();
  }
}
void shuffle_one(){
  int i1=int(random(4)) ,j1=int(random(8)) ;
  int i2=int(random(4)) ,j2=int(random(8)) ;
  int temp=board[i1][j1];
  board[i1][j1]=board[i2][j2];
  board[i2][j2]=temp;
}
void draw()
{
  background(#FFDAA2);
  for (int x=50; x<=450; x+=50) {
    line( x, 50, x, 250);
  }
  for (int y=50; y<=250; y+=50) {
    line( 50, y, 450, y); //line(x1,y1,x2,y2);
  }
  for (int i=0; i<4; i++) {///印出象棋
    for (int j=0; j<8; j++) {
      if(show[i][j]==0){
         fill(#289D48);
         ellipse(50+25+j*50,50+25+i*50,40,40);
      }
      else{
        int id= board[i][j];
        drawChess(50+25+j*50, 50+25+i*50, id);
      }    
    }
  }
  if(moving){
    fill(0,255,255, 128);//半透明藍色
    ellipse(50+25+moveJ*50, 50+25+moveI*50, 40, 40);//原來的位置
    
    drawChess(mouseX,mouseY,moveID); //手上移動中的棋子
  }
}
int moveI = -1 ,moveJ = -1, moveID=0;
boolean moving=false;//目前沒有移動
void mousePressed(){
  for(int i=0;i<4;i++){
    for(int j=0;j<8;j++){
      if( dist(mouseX,mouseY,50+25+j*50,50+25+i*50)<20){
         if(show[i][j]==0) show[i][j]=1; 
         else{
           moveI = i; //我們要移動的棋子 的 i座標
           moveJ = j; //我們要移動的棋子 的 j座標
           moveID=board[i][j];
           moving = true;///正在移動
         }
      }
    }
  }
}

String []name={"將", "士", "象", "車", "馬", "包", "卒"};
String []name2={"帥", "仕", "相", "俥", "傌", "炮", "兵"};
void drawChess(int x, int y, int id ) {
  fill(255);
  ellipse(x, y, 40, 40);
  //if(id==9){
  //  fill(#AFFFFD);
  //  ellipse(x, y, 40, 40);
  //}
  //else 
  if (id>0) {
    fill(0);
    text(name[id-1], x, y-3);
  } else {
    fill(255, 0, 0);
    text(name2[-id-1], x, y-3);
  }
}
