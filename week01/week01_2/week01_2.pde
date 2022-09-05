void setup(){  //設定一次
  size(500,500);
}
void draw(){  //每一秒畫60次
  background(#79FFC4);
  fill(#FEFFCB);
  rect(100,200,mouseX,mouseY);
  rect(mouseX,mouseY,100,200);
}
