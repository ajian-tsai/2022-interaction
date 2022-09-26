void setup(){
 size(500,500);
}
float x=250,y=250;
float vx=2.0,vy=-1.5;
float boardx,boardy=470,boardW=100,boardH=15;
int score=0;
void draw(){
 background(#FFEAD1);
 boardx=mouseX- boardW/2; //使滑鼠
 rect( boardx ,boardy,boardW,boardH,5);
 ellipse(x ,y ,10, 10); //橢圓
 //rect( 200,15 , 100 ,20,3); //上方動態島
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
