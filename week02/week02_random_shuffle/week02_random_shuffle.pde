void setup(){
 size(500,500);
 PFont font = createFont("標楷體",40); ///設定一個字形變數，並建立一個標楷體
 textFont(font);//將字形套用
 String [] flower={"黑桃","紅心","梅花","方塊"};
 face1=flower[int(random(4))] + int(random(13)+1);//random出來是float，所以要強制轉換成int，因為會出現0所以要加1。
 face2=flower[int(random(4))] + int(random(13)+1);
 face3=flower[int(random(4))] + int(random(13)+1);
 face4=flower[int(random(4))] + int(random(13)+1);
}
String face1,face2,face3,face4;
void draw(){
  drawPokerCard(100,100,face1);
  drawPokerCard(130,130,face2);
  drawPokerCard(160,160,face3);
  drawPokerCard(190,190,face4);
}
void drawPokerCard(int x, int y, String face){
  int a=20;
  fill(#FFF7E8);//大，米色
  rect( x-a/2, y-a/2, 120+a, 220+a, 10);
  fill( #FC4242);//小，紅色
  rect( x, y, 120, 220, 10);
  if( face.indexOf("黑桃") == -1 && face.indexOf("梅花") == -1) fill(#FF0000);
  else fill(0);
  textSize(20);
  text(face ,x+3 ,y+20);
}
