void setup(){
 size(500,500);
 PFont font = createFont("標楷體",40); ///設定一個字形變數，並建立一個標楷體
 textFont(font);//將字形套用
}
int a=20;
void draw(){
  drawPokerCard(100,100,"黑桃1");
  drawPokerCard(130,130,"紅心2");
  drawPokerCard(160,160,"方塊3");
  drawPokerCard(190,190,"梅花K");
}
void drawPokerCard(int x, int y, String face){
  fill(#FFF7E8);//大，米色
  rect( x-a/2, y-a/2, 120+a, 220+a, 10);
  fill( #FC4242);//小，紅色
  rect( x, y, 120, 220, 10);
  if( face.indexOf("黑桃") == -1 && face.indexOf("梅花") == -1) fill(#FF0000);
  else fill(0);
  textSize(20);
  text(face ,x+3 ,y+20);
}
