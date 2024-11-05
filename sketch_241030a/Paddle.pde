class Paddle{
  float x=0;
  float y=0;
  float widht=20;
  float high=80;
  
  void moveUp(){   
    y=y-5;
    if(y<=0){
      y=0;
    }
  }
  void moveDown(){
    y=y+5;
    if(y>=520){
      y=520;
    }
  }
}
