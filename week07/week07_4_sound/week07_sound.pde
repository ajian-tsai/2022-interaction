///先存檔，將音樂檔拉入， ctrl+k可以打開程式目錄。
import processing.sound.*;
SoundFile File,File2,File3;
void setup(){
  File = new SoundFile(this,"Intro Song_Final.mp3");
  File2 = new SoundFile(this,"Bomb Explode.mp3");
  File3 = new SoundFile(this,"Fruit Missed.mp3");
  File.play();
}
void draw(){
  
}
void mousePressed(){
  File2.play();
}
void keyPressed(){
  File3.play();
}
