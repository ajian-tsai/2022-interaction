void setup(){
 size(500,500);
}
int a=20;
void draw(float random){
  drawCard(100,100);
  drawCard(120,120);
  drawCard(140,140);
}
void drawCard(int x, int y){
  fill(#FFF7E8);//大，米色
  rect( x-a/2, y-a/2, 120+a, 220+a, 10);
  fill( #FC4242);//小，紅色
  rect( x, y, 120, 220, 10);
}
