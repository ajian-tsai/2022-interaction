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


# 第五週
## ◇象棋:
```
  1. 先用迴圈畫棋盤線。
  2. 將橫線分半，製造出楚河漢界。(上排從50~250，下排300~500)
  3.建立象棋陣列(board)，把棋子編號。(ex: 1:將 2:士.....。記得要放在globe的區域)
  4.利用雙迴圈印出陣列象棋位置。(利用text做，記得text 左邊為y-直的,右邊為x-橫的)  
  5.在設定一個陣列String []name={"將","士","象","馬","車","包","卒"};為了能印出來中文
  6.  設定id 為board陣列，當id為0時我們需要跳過他(因為不印東西)
  7.將text的地方，改成name[id-1]。(減一是因為要確保兩個陣列數一樣，不然會出錯)
  8.之後再set地方設定字型(用PFont、createFont、textFont、textAlign)。
    因為原本的字型是設定在左下角，所以我們要用textAlign(centet,center);改為中間。
```
```c
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
```

## ◇ 象棋棋子:
```
  1. 利用ellipse() 畫出圓形，因為字體會不在圓圈中間，所以text的y需要做修正(減3)。
  2. 將board陣列新增例外一半棋，並且另外一半棋子的編號為負!!
  3.再設定一個String 放入紅棋個中文。String []name2={"帥", "仕", "相","俥" ,"傌", "炮", "兵"};。
  4.設定if-else，當id大於0時，設定為白底黑字。
                當id小於0時，設定為白底紅字。
```
```c
void setup() {
  size(500, 700);
  PFont font = createFont("標楷體", 30);//設定文字
  textFont(font);
  textAlign(CENTER, CENTER);
}
int [][]board={
  {4, 5, 3, 2, 1, 2, 3, 5, 4},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0, 6, 0, 0, 0, 0, 0, 6, 0},
  {7, 0, 7, 0, 7, 0, 7, 0, 7},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},
  {-7, 0, -7, 0, -7, 0, -7, 0, -7},
  {0, -6, 0, 0, 0, 0, 0, -6, 0},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},
  {-4, -5, -3, -2, -1, -2, -3, -5, -4},
};//將象棋個棋編碼
String []name={"將", "士", "象", "車", "馬", "包", "卒"};
String []name2={"帥", "仕", "相","俥" ,"傌", "炮", "兵"};
void draw() {
  background(#FFDAA2);
  for (int x=50; x<=450; x+=50) {
    line( x, 50, x, 250);//上排(為了楚河漢界)
    line( x, 300, x, 500);//下排
  }
  for (int y=50; y<=500; y+=50) {
    line( 50, y, 450, y); //line(x1,y1,x2,y2);
  }
  for (int i=0; i<10; i++) {///印出象棋
    for (int j=0; j<9; j++) {
      int id= board[i][j];///設定id能對照數字，之後中文name陣列就可以讀取。
      if (id==0) continue;///因為陣列數不相同，我們必須扣掉0，不印的地方
      if (id>0) {
        fill(255);
        ellipse(50+j*50, 50+i*50, 40, 40);
        fill(0);
        text( name[id-1], 50+j*50, 50+i*50-3);//左邊y,右邊x
      }
      if (id<0) {
        fill(255);
        ellipse(50+j*50, 50+i*50, 40, 40);
        fill(255, 0, 0);
        text( name2[-id-1], 50+j*50, 50+i*50-3);//左邊y,右邊x
      }
    }
  }
}
```

## ◇ 滑鼠控制棋子:
```
  1. 設定一個void mousePressed()
  2. 用雙迴圈的方式來找棋盤對應格子，再設定
     if ( dist(mouseX,mouseY,50+j*50, 50+i*50)<20 ) //當滑鼠到那個圓圈的位置時。
    (可用dist來測量位置!!)
 ///上面拿棋，下面放棋
  3.設定void mouseReleased() (放開的指令)，再設定一個int hand=0。
  4.並設定位置int i= (mouseY+25-50)/50;//Y是50+j*50。去做換算
             int j= (mouseX+25-50)/50;//X是50+j*50。
    且設定好放棋子board[i][j]=hand;//放棋
                 hand=0; ///清空手
  5.修改mousePressed()裡的程式。
       hand=board[i][j];///拿棋
       board[i][j]=0; ///清空那格棋
  6.顯示手上的棋子。if(hand!=0) ellipse(mouseX,mouseY,40,40); (放draw裡的雙迴圈)
```
```c
void setup() {
  size(500, 700);
  PFont font = createFont("標楷體", 30);//設定文字
  textFont(font);
  textAlign(CENTER, CENTER);
}
int [][]board={
  {4, 5, 3, 2, 1, 2, 3, 5, 4},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0, 6, 0, 0, 0, 0, 0, 6, 0},
  {7, 0, 7, 0, 7, 0, 7, 0, 7},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},
  {-7, 0, -7, 0, -7, 0, -7, 0, -7},
  {0, -6, 0, 0, 0, 0, 0, -6, 0},
  {0, 0, 0, 0, 0, 0, 0, 0, 0},
  {-4, -5, -3, -2, -1, -2, -3, -5, -4},
};//將象棋個棋編碼
String []name={"將", "士", "象", "車", "馬", "包", "卒"};
String []name2={"帥", "仕", "相","俥" ,"傌", "炮", "兵"};
void draw() {
  background(#FFDAA2);
  for (int x=50; x<=450; x+=50) {
    line( x, 50, x, 250);//上排(為了楚河漢界)
    line( x, 300, x, 500);//下排
  }
  for (int y=50; y<=500; y+=50) {
    line( 50, y, 450, y); //line(x1,y1,x2,y2);
  }
  for (int i=0; i<10; i++) {///印出象棋
    for (int j=0; j<9; j++) {
      int id= board[i][j];///設定id能對照數字，之後中文name陣列就可以讀取。
      if (id==0) continue;///因為陣列數不相同，我們必須扣掉0，不印的地方
      if (id>0) {
        fill(255);
        ellipse(50+j*50, 50+i*50, 40, 40);
        fill(0);
        text( name[id-1], 50+j*50, 50+i*50-3);//左邊y,右邊x
      }
      if (id<0) {
        fill(255);
        ellipse(50+j*50, 50+i*50, 40, 40);
        fill(255, 0, 0);
        text( name2[-id-1], 50+j*50, 50+i*50-3);//左邊y,右邊x
      }
      if(hand!=0) ellipse(mouseX,mouseY,40,40);
    }
  }
  
}
int hand=0;
void mousePressed(){
  for (int i=0; i<10; i++) {
    for (int j=0; j<9; j++) {
       if(dist(mouseX,mouseY,50+j*50, 50+i*50)<20){
           hand=board[i][j];///拿棋
           board[i][j]=0; ///清空那格棋
       }
    }
  }
}
void mouseReleased(){
   int i= (mouseY+25-50)/50;//Y是50+j*50。去做換算
   int j= (mouseX+25-50)/50;//X是50+j*50。
   board[i][j]=hand;//放棋
   hand=0; ///清空手
}
```

## ◇暗棋:
```
利用上面的程式進行修改
  1.將board程式修改成4*8的大小，並修改裡面的值
  2. void setup裡的設定整個搬過來，將size修改成(500,400)。String name也要複製過來
  3.設立一個drawChess函式，修改原本的黑紅棋。
```
```c
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
```

# 第七週
## ◇暗棋の亂數洗牌 :
```
  1. mousePressed 的迴圈，上面要改成4，下面改成8。不然會出錯
  2.在setup()裡，洗牌，用for迴圈洗1000次，宣告兩個變數，隨機取0~3 or 0~7，之後用temp互換。
    for(int k=0;k<1000;k++){
         int i1=int(random(4)) ,j1=int(random(8)) ;
         int i2=int(random(4)) ,j2=int(random(8)) ;
         int temp=board[i1][j1];
         board[i1][j1]=board[i2][j2];
         board[i2][j2]=temp;
    }
    可以建立一個void shuffle_one函式，將剛剛for迴圈裡的東西丟進去，之後迴圈呼叫shuffle_one就OKAY!!
  3.設定變數
    int moveI = -1 ,moveJ = -1; ///用來記錄要移動的棋子位置，-1表示目前沒有。
    boolean moving=false;//目前沒有移動
 4. 在mousePressed() 裡再新增一個else，寫入
     moveI = i; //我們要移動的棋子 的 i座標
     moveJ = j; //我們要移動的棋子 的 j座標
     moving = true;///正在移動
 5.在draw()裡，設定如果moving，就畫棋子。
   drawChess(50+25+moveJ*50, 50+25+moveI*50, 9);//放到外面第九個
 6.在drawChess() 設定我們點選要移動的棋子後，那顆棋子要變色。
   if(id==9){ //當id為9，就印藍色的圓
      fill(#AFFFFD);
      ellipse(x, y, 40, 40);
  }
 7.將上一步的drawChess()註解掉。之後在全域新增一個moveID=0 (紀錄我們拿起來的棋子)，
   並在else裡增加moveID=board[i][j];
 8.在draw()裡，如果moving改掉，在原本位置留下透明藍色的圓，並且我們滑鼠上有要移動的棋子。 fill第四個值為透明度。
 9. 設定mouseReleased函式放置棋子!! drawChess()函式裡要新增if(id==0) return;
```
```c
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
void mouseReleased(){///滑鼠放開
  for(int i=0;i<4;i++){
    for(int j=0;j<8;j++){///去偵測所有位置。
      if( dist(mouseX,mouseY,50+25+j*50,50+25+i*50)<20){
         if(moving){
           board[moveI][moveJ]=0;///將手上的棋子清空
           board[i][j]=moveID;///將我們移到的位置改為手上那個棋子。
           moving = false;//結束移動。
         }
      }
    }
  }
}
String []name={"將", "士", "象", "車", "馬", "包", "卒"};
String []name2={"帥", "仕", "相", "俥", "傌", "炮", "兵"};
void drawChess(int x, int y, int id ) {
  if(id==0) return;
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
```
## ◇加入音樂 :
```
1.先存檔，將音樂檔拉入， ctrl+k可以打開程式目錄。 裡面的data資料夾可以看到我們丟進去的音樂。
  查看音樂程式碼：協助 >點參考文件 > 點library >sound  
2.進 程式素描本 > 使用程式函式庫 > Manage libraries > 安裝sound的函式庫
3.讀入音樂檔：SoundFile File = new SoundFile(this,"檔名.mp3");
  撥放音樂檔：File.play();
4.可以在一開始先設立 SoundFile 變數，並一次讀取完，之後再撥放。
```
```c
///先存檔，將音樂檔拉入， ctrl+k可以打開程式目錄。
import processing.sound.*;
SoundFile File,File2,File3;
void setup(){
  File = new SoundFile(this,"Intro Song_Final.mp3"); //都先讀取檔案
  File2 = new SoundFile(this,"Bomb Explode.mp3");
  File3 = new SoundFile(this,"Fruit Missed.mp3");
  File.play();
}
void draw(){
  
}
void mousePressed(){
  File2.play();
}
void keyPressed(){
  File3.play();
}
```
# 第八週
## ◇聲音播放:
```
1.先SoundFile  sound1,sound2;設定變數。
2.讀取音檔 sound1=new SoundFile(this,"xxx.mp3");
3.撥放音樂sound1.play();
4.設定變數int stage切換場景。
5.利用mousePressed + if-else，設定切換場景和停止與撥放音樂
  暫停音樂sound1.stop();
6.draw的時候去設定兩個舞台，在舞台上寫上stage狀態：
  text( "stage 1",100,100); //在畫面上100,100的地方印出stage 1
  並在setup的地方設定字型大小和顏色:
  textSize(50);//設定字型size
  fill(255,0,0);///字型顏色
```
```c
void setup()
{
  size(400,300);
}
float fruitX=200,fruitY=150;//水果位置位置
float fruitVX=1,fruitVY=-1;//加速度
boolean flying=true;//控制現在使否往上飛
void draw(){
  background(#FFF798);
  ellipse(fruitX,fruitY,50,50);//畫圓
  if(flying){
    fruitX+=fruitVX;
    fruitY+=fruitVY;
  }
}
void keyPressed(){
  flying=false;
}
```
## ◇切水果勇士:
```
1.設定float變數 fruitX/Y控制它的位置，和加速度float fruitVX=1,fruitVY=-1;
2.利用boolean控制現在使否往上：boolean flying=true;
3.在draw 畫背景、圓形ellipse(fruitX,fruitY,50,50);和如果現在是flying移動位置。
4.利用keyPressed，當按下時，停止，flying=false; 
5.把fruitY改為300，從底部起飛。fruitVX 改 2,fruitVY 改 -13。
  fruitVX會控制到球是往右還往左飛(負的往左，正的往右)
6.在draw 的if(flying)裡放入 fruitVY+=0.98/3; ///重力往下
7.設定一個fruitReset()，讓我們按下後會再飛新的水果出來。//keyPressed要放。
  fruitX=random(100,300); ///讓X隨機100~300之間的位置生成。
  fruitVX=random(-2,2);///讓它隨機切換往左or右飛。
  fruitY和fruitVX依照原本的值。 flying改為True。
```
```c

```
## ◇利用class修改水果勇士：
```
1.設定一個Class Fruit，設定好x,y,vx,vy,boolean變數。
2.先呼叫PApplet sketch; 這個函式庫，在\class呼叫自己 Fruit(PApplet _sketch)再
  (PApplet sketch;是為了後面要可以用random函式)，裡面要用random要寫成sketch.random( )。
3.設定好reset和update的函式，主程式的地方改成用Fruit的Class。
```
```c
class Fruit{
   float x,y, vx, vy;
   boolean flying;
   PApplet sketch;///在class呼叫PApplet sketch的class為了Random可以使用
   Fruit(PApplet _sketch){///呼叫自己，來產生另外一顆水果
      sketch = _sketch;//設立sketch。
      reset(); 
   }
   void reset(){///設定水果位置
     x=sketch.random(100,300);
     y=300;
     vx=sketch.random(-2,2);
     vy=-13;
     flying=true;
   }
   void update(){///水果在飛的變化路徑
     x+=vx;
     y+=vy;
     vy+=0.98/3;
   }
}
Fruit fruit; //一個fruit是Fruit的東西
void setup(){
  size(400,300);
  fruit = new Fruit(this);   
}
void draw(){
  background(#FFF798);
  ellipse(fruit.x,fruit.y,50,50);//畫圓,去拿class裡的x,y
  fruit.update();//去拿class裡的update做變化
}
void keyPressed(){
  fruit.reset(); //去拿class裡的reset做變化
}
```
## ◇ ** Class簡化頁面 **:
```
檔案的右邊有▼，點開選新增分頁，取名為Fruit，再把Class的程式碼整個貼過來。
** 一次呼叫三個水果出來 和 字母對照**
Class部分:
    1. 新增一個String陣列 放入 所有英文字母。再建立一個char變數放水果上的字串。
    2.利用c=line.charAt(i); 去對到陣列第 i 個字母。
主程式部分:
   1. 宣告fruit時，改為陣列 ：
      Fruit [] fruits;
      fruits = new Fruit[3];。//放setup
   2.利用for迴圈去偵測那3個fruit (記得fruit都要改成fruits[i]，在setup,draw,keyPressed都要)
   3. draw裡要多設定字體大小、字體顏色、字體置中、和印出字
      textSize(30);//字體大小
      textAlign(CENTER, CENTER);///置中
      fill(0);//顏色
      text(fruits[i].c, fruits[i].x, fruits[i].y);//印字
   4.利用keyCode 去偵測鍵盤的字，查看是否跟fruits[i].c一樣，如果一樣就reset();
```
```c
Fruit [] fruits; //變成陣列
void setup() {
  size(400, 300);
  fruits = new Fruit[3];
  for (int i=0; i<3; i++) {
    fruits[i]=new Fruit(this);
  }
}
void draw() {
  background(#FFF798);
  for (int i=0; i<3; i++) {
    fill(255);
    ellipse(fruits[i].x, fruits[i].y, 50, 50);
    textSize(30);//字體大小
    textAlign(CENTER, CENTER);///置中
    fill(0);
    text(fruits[i].c, fruits[i].x, fruits[i].y);//畫圓,去拿class裡的x,y
    fruits[i].update();//去拿class裡的update做變化
  }
}
void keyPressed() {
    for (int i=0; i<3; i++) {
      if ( keyCode == fruits[i].c) {  ///利用keyCode讀取鍵盤的字，去看是否一樣。
        fruits[i].reset(); //去拿class裡的reset做變化
      }
    }
}
```


# 第十週
## ◇ :
```

```
```c

```
## ◇ :
```

```
```c

```
