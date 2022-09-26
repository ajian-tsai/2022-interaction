# 2022-interaction
2022互動設計概論
# 第一週
上課用processing-4.0b8版本。
## ◇基礎技巧:
    1.size( 寬 ,  長 );  //調整視窗。
    2.background( 顏色 );  //調整背景顏色。
    (可以從工具(TOOL)選顏色選擇器)
    3.fill( 顏色 );  //填充顏色。
    4.rect( x1 , y1 , x2 , y2);  //畫出四邊形。
```c
size(500,500); //設定畫面大小
background(#79FFC4); //更改畫面背景顏色，可以從工具(TOOL)選顏色選擇器
fill(#FEFFCB); //填充四方型顏色
rect(100,200,100,200); //畫出四邊形
```
## ◇互動設定(在網頁上互動):
  1. void setup(){     }  //設定一次。
  2. void draw(){     }  //每一秒畫60次。
  3. mouseX , mouse Y 可以追蹤滑鼠定位。
```c
void setup(){  //設定一次
  size(500,500);
}
void draw(){  //每一秒畫60次
  background(#79FFC4);
  fill(#FEFFCB);
  rect(100,200,100,200);
  rect(mouseX,mouseY,100,200);
}
```
## ◇設定到網頁上使用:

1.右上角java 下拉按Manage Modes.... 下載p5.js安裝，並點選。

2.到 https://pde2js.herokuapp.com/ 轉換程式碼。
 
☆如果存檔後，無法執行到網頁上，可以選p5.js  -> Re-create  index.html  重寫，因為index.html讀檔錯誤☆
## ◇小畫家:
 1. mousePressed 感測按下滑鼠時、keyPressed 是感測鍵盤。
 2. line( ); 是畫線。
 3. pmouseX , pmouseY 是指滑鼠之前在的座標。
 4. stroke(顏色);  是改變筆觸的顏色。
```c
void setup(){
  size(500,500); 
  background(#ACB3C6);
  stroke(#050101);
}
void draw(){
 if (mousePressed){
    line(mouseX,mouseY,pmouseX,pmouseY); 
 }
}
void keyPressed(){
  if( key == '1') stroke(#FEFF31);
  if( key == '2') stroke(#FFB731);
  if( key == '3') stroke(#33FF31);
  if( key == '4') stroke(#31D1FF);
  if( key == '5') stroke(#3151FF);
  if( key == '6') stroke(#FE31FF);
  if( key == '7') stroke(#FF315A);
}
```

# 第二週
## ◇製作卡片遊戲:
1. rect( x, y , 寬,高, 邊框圓滑度);

   也可以rect ( x ,  y , 寬, 高,  左上圓滑, 右上圓滑, 右下圓滑, 左下圓滑); 對各邊設定

2.建立一個drawCard函式、和變數呼叫多張卡牌。

## ◇Poker製作:
```
  1. textSize( 大小 );     
     設定字體大小。
  2. text( 文字 , 位置x , 位置 y );     
     設定文字 和 文字擺放位置。
  3. 在 drawPokerCard()
     設定一個 字串(String)  face。
  4. PFont  font     
     建立一個字形的變數。(PFont是變數名稱)
  5. createFont( " 字體 " , 大小 );    
     設定內建的一個字型。
     另一種讀字體檔的方法loadFont("字體檔案"); 
  6. textFont(" 字體變數 ");    
     套用字型。
  7. 變數 . indexOf(" 字 ")    
     可以測變數裡面有沒有這個字。
     變數.indexOf( "  字 ") == -1    
     表示變數裡沒有這個字。
```

## ◇亂數取牌:
```
  1. random( );   random出來的值是flaot，這裡要整數所以直接專換成int。    
  2. String flower   設定放花色的陣列。
  3. String face1 .....;   設定每張牌的變數。
  4. face1  是來放亂數取好後放入的變數。
  5.可以再新增一個void mousePressed(){}就可以按一下就洗牌。
```
```c
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
void mousePressed(){
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
```


# 第三週
## ◇Poker - 按一下洗牌 (接續上次程式):
```
  1. 創造void myShuffle(); 和 void mousePressed(); 函式，並把洗牌的程式碼放進myShuffle();。
  2.void setup 和 void mousePressed 裡要呼叫 myShuffle();
```
```c
void setup(){
 size(500,500);
 PFont font = createFont("標楷體",40); ///設定一個字形變數，並建立一個標楷體
 textFont(font);//將字形套用
 myShuffle();
}
void myShuffle(){
 String [] flower={"黑桃","紅心","梅花","方塊"};
 face1=flower[int(random(4))] + int(random(13)+1);//random出來是float，所以要強制轉換成int，因為會出現0所以要加1。
 face2=flower[int(random(4))] + int(random(13)+1);
 face3=flower[int(random(4))] + int(random(13)+1);
 face4=flower[int(random(4))] + int(random(13)+1);
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
```
## ◇ Poker:
```
 1. 設定大一點的視窗  size(700,700); 和 背景顏色 (background)
 2.在draw裡，創造52張牌的for迴圈。
     設定變數x,y取間隔，(i/10)除10是為了一排可以放10張牌。i/10會有小數，所以在前面加int強制轉成整數。
 3.在setup 設定好字形，為了可以印出中文
      PFont font = createFont("標楷體",15 ); //創造字形。
      textFont(font); //設定字形為font。
 4.建立花色的陣列。 可以用noteped++ 按搜尋→取代 ( ctrl + H )快速取代字。
 5.在for迴圈 運用 text 指令印出花色。
 6.將畫面設大size(800,600)，並i改為除13，一排放13張牌。
 7.用if -else 改變顏色， 並用到 indexOf( )找裡面的字，使紅心和方塊為紅色。
```
```c
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
```
## ◇Poker洗牌 (上面的接續) :
```
1. 新增一個mousePressed() 函式。
2.設定變數 a,b 並取0~52亂數。
   int a = int(random(52)); 
   int b = int(random(52));
3.利用temp做交換。 記得temp 是字串要用String，我們要交換字。
   String temp = face[a];  
   face[a]=face[b];
   face[b]=temp;
4.將mousePressed() 改成 mouseDragged() 。使用滑鼠滾輪。
```
```c
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
```
## ◇Poker洗牌與上禮拜程式合成 :
```
1.將上面的花色陣列複製過去上禮拜的。
2.在 myShuffle() 設定迴圈 讓他自動多洗，並將Poker洗牌的程式塞進去。
  for( int k=0 ; k<10000 ; k++){  //讓他洗10000次
    int a = int(random(52)); 
    int b = int(random(52));
    String temp = face[a];
    face[a]=face[b];
    face[b]=temp; 
 }
3.洗好排後，設定好4張牌的face。
 face1 = face[0];
 face2 = face[1]; 
 face3 = face[2]; 
 face4 = face[3]; 
```
```c
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
```


# 第四週
## ◇彈力球:
```
  1. 設好畫面大小，及x,y變數。 //x,y 設為float可以更精細
  2. ellipse( x , y , 寬 , 長);    //畫出橢圓，
     並讓x,y移植慢慢增加。
  3.多設兩個變數 vx ,vy (要用float)、 x,y也要改成float
  4.並設定if-else ，當x超過畫面就換方向 且 y超過上面就會反彈。
  5.在void draw 設定 background 使他每次執行都會蓋過上一個球。
  6. 用rect 設定板子 ， 並設定int boardx= mouseX; ，rect( mouseX , 470 , 寬 , 長 , 弧度); //使方塊能跟滑鼠一起動。
  7.設定球碰到板子反彈，到板子的y位置和 x~x+100的位置就會反彈。
  8.將boardx改為 mouseX- boardW/2 這樣就會在板子中間控制。
  9.利用(mouseX - pmouseX)/2 算出滑鼠的移動量，並加到vx。
  10.設定當按下右鍵/左鍵 板子會放大縮小(運用mousePressed  和 mouseButton)。
```
```c
void setup(){
 size(500,500);
}
float x=250,y=250;
float vx=2.0,vy=-1.5;
float boardx,boardy=470,boardW=100,boardH=15;
void draw(){
 background(#FFEAD1);
 boardx=mouseX- boardW/2; //使滑鼠
 rect( boardx ,boardy,boardW,boardH,5);
 ellipse(x ,y ,10, 10); //橢圓
 x=x+vx;
 y=y+vy;
 if(x >500 || x<0 ) vx=-vx;
 if(y < 0 ) vy=-vy;
 if( ( y>boardy && y<boardy+30 ) && ( x>boardx && x<boardx+boardW)) {
   ///當球到470的位置而且要在邊框內，並且在板子X~ X+100內就反彈。
   vy=-vy;
   vx += (mouseX- pmouseX)/2; //加上滑鼠的移動數度
 }
 if(mousePressed && mouseButton==LEFT) boardW *= 1.01; ///按並是左鍵
 if(mousePressed && mouseButton==RIGHT) boardW *= 0.99;///按並是右鍵
}
```
## ◇ 圍棋:
```
  1. 設定好視窗大小，並建立９＊９陣列 (裡面暫時都放0)。
  2.在draw裡面利用雙迴圈，去偵測陣列裡面的值。
  3. 用if -else判斷，如果值為1就填充黑色，為0為白色。
  4.利用雙層迴圈畫線條， 利用line( x1 , y1, x2, y2); 。
  5.將偵測棋子的if-else指令修改，當為1時，下黑棋，為2時，下白旗。
    當兩個都不是就不下棋。
  6.設一個mousePressed() 。 
  7.設定 int j = (mouseX-25)/50;    為了辨識我們在哪個位置
         int i = (mouseY-25)/50;
  8.切換黑白棋，先設定int N=0 利用go[i][j]=(N%2==0) ? 1: 2; // 如果(N%2==0) 用1，否則2，並放進陣列那個位置。再去判別現在要黑還白，之後N++。
```
```c
void setup(){
 size(500,500); 
}
int [][] go={
  {0,0,0,0,0,0,0,0,0}, 
  {0,0,0,0,0,0,0,0,0}, 
  {0,0,0,0,0,0,0,0,0}, 
  {0,0,0,0,0,0,0,0,0}, 
  {0,0,0,0,0,0,0,0,0}, 
  {0,0,0,0,0,0,0,0,0}, 
  {0,0,0,0,0,0,0,0,0}, 
  {0,0,0,0,0,0,0,0,0}, 
  {0,0,0,0,0,0,0,0,0}, 
};///建立9*9的陣列
int N=0;
void mousePressed(){
   int j = (mouseX-25)/50;//因為前面我們空了50，我們取一半(為了偵測位置)，除50就會知道現在是第幾格
   int i = (mouseY-25)/50;
   go[i][j]=(N%2==0) ? 1: 2; // 如果(N%2==0) 用1，否則2
   N++;
}
void draw(){
   background(#EABB74);
   for(int i=1;i<=9;i++){
     for(int j=1;j<=9;j++){
       line( 50 , 50*i , 450 , 50*i);//橫線
       line(50*i,   50 , 50*i, 450 );//直線
     }
   }
   for(int i=0 ; i<9 ; i++){
     for( int j=0 ; j<9 ; j++){
       if(go[i][j]==1){
         fill(0);//當讀到1時畫黑棋
         ellipse( 50+j*50 , 50+i*50 , 50, 50); 
       }
       else if(go[i][j]==2){
         fill(255);
         ellipse( 50+j*50 , 50+i*50 , 50, 50);
       }///除了1,2以外的值都不畫。
     }
   }
}
```
## ◇ :
```

```
```c

```



# 第五週
## ◇ :
```

```
```c

```
