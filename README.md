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
## ◇:
```

```
```c

```
## ◇:
```

```
```c

```
## ◇:
```

```
```c

```

# 第四週
## ◇:
```

```
