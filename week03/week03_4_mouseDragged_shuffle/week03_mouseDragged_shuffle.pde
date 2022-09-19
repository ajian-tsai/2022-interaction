void setup(){
 size(800,600); 
 background( #E5FFF1 );
 PFont font = createFont("標楷體",15 );  ///創造字形
 textFont(font);  //設定字形為font
}
String [] face ={"黑桃A" ,"黑桃2","黑桃3","黑桃4","黑桃5","黑桃6","黑桃7","黑桃8","黑桃9","黑桃10","黑桃J","黑桃Q","黑桃K",
          "梅花A" ,"梅花2","梅花3","梅花4","梅花5","梅花6","梅花7","梅花8","梅花9","梅花10","梅花J","梅花Q","梅花K",
          "方塊A" ,"方塊2","方塊3","方塊4","方塊5","方塊6","方塊7","方塊8","方塊9","方塊10","方塊J","方塊Q","方塊K",
          "紅心A" ,"紅心2","紅心3","紅心4","紅心5","紅心6","紅心7","紅心8","紅心9","紅心10","紅心J","紅心Q","紅心K"};  //設定花色陣列，記得後面要分號。
void draw(){
  for(int i=0 ;i<52 ; i++){
     int x= (i%13)*60;
     int y= int(i/13)*120;
     fill(255);  rect(x,y,60,120);
     if( face[i].indexOf("紅心")==-1 && face[i].indexOf("方塊")==-1 ) fill(#4675FF);
     else fill(255,0,0);
     text( face[i],x+15,y+80); //印出字形
  }
}
void mouseDragged(){  //用滑鼠滾輪
   int a = int(random(52)); 
   int b = int(random(52));
   String temp = face[a];
   face[a]=face[b];
   face[b]=temp;
}
