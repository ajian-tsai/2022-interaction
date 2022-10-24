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
