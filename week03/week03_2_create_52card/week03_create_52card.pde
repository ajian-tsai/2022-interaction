void setup(){
 size(700,700); 
 background( #E5FFF1 );
}
void draw(){
  for(int i=0 ;i<52 ; i++){
     int x= (i%10)*60;
     int y= int(i/10)*120;
     rect(x,y,60,120);
  }
}
