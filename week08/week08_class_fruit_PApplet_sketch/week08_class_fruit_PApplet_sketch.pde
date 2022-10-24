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
