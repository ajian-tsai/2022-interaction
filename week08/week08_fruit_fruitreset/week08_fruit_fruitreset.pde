void setup()
{
  size(400,300);
}
float fruitX=200,fruitY=300;//水果位置位置
float fruitVX=2,fruitVY=-13;//加速度
boolean flying=true;//控制現在使否往上飛
void draw(){
  background(#FFF798);
  ellipse(fruitX,fruitY,50,50);//畫圓
  if(flying){
    fruitX+=fruitVX;
    fruitY+=fruitVY;
    fruitVY+=0.98/3;///重力往下
  }
}
void keyPressed(){
  flying=false;
  fruitReset();//按下後再發一顆水果
}
void fruitReset(){
  fruitX=random(100,300);//隨機100~300之間的位置生成。
  fruitY=300;///底部為起始點
  fruitVX=random(-2,2);//加速度在2~-2 切換往左or右飛
  fruitVY=-13;
  flying=true;//又在飛
}
