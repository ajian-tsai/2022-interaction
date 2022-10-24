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
