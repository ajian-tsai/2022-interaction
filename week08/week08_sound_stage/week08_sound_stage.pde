import processing.sound.*;
SoundFile sound1,sound2,sound3;
void setup()
{
   size(400,300);
   textSize(50);//設定字行size
   fill(255,0,0);///字行顏色
   sound1=new SoundFile(this,"In Game Music.mp3");
   sound2=new SoundFile(this,"Intro Song_Final.mp3");
   sound1.play();
}
int stage=1;//設定舞台控制變數。
void draw(){
  background(#FFF798);
  if(stage==1){
    text( "stage 1",100,100); //在畫面上100,100的地方印出stage 1
  }
  else if(stage==2){
    text( "stage 2",100,100);//在畫面上100,100的地方印出stage 2
  }
}
void mousePressed()
{
  if(stage==1){  
    stage=2;///切換場景
    sound1.stop();//停掉第一個音樂
    sound2.play();//撥放第二個音樂
  }
  else if(stage==2){
    stage=1;
    sound2.stop();
    sound1.play();
  }
}
