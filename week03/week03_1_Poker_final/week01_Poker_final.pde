void setup(){
 size(500,500);
 PFont font = createFont("標楷體",40); ///設定一個字形變數，並建立一個標楷體
 textFont(font);//將字形套用
 myShuffle();
}
String [] face ={"黑桃A" ,"黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
          "梅花A" ,"梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K",
          "方塊A" ,"方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",
          "紅心A" ,"紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K"};  //設定花色陣列，記得後面要分號。
void myShuffle(){
 for( int k=0 ; k<10000 ; k++){
   int a = int(random(52)); 
   int b = int(random(52));
   String temp = face[a];
   face[a]=face[b];
   face[b]=temp; 
 }
 face1 = face[0];
 face2 = face[1]; 
 face3 = face[2]; 
 face4 = face[3]; 
}
void mousePressed(){
 myShuffle();
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
