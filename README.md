# 2022-interaction
2022互動設計概論
# 第一週
##上課用processing-4.0b8版本。
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
