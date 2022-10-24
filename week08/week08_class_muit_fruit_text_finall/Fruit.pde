String line="ABCDEFGHIJKLMNOPQRSTUPWXYZ"; ///字的陣列
class Fruit{
   float x,y, vx, vy;
   boolean flying;
   char c;///水果對應到的字母
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
     int i=int(random(26));
     c=line.charAt(i); ///c變數去對到陣列某個字母，要用charAt
   }
   void update(){///水果在飛的變化路徑
     x+=vx;
     y+=vy;
     vy+=0.98/3;
   }
}
