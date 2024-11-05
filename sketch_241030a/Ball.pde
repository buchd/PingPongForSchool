class Ball {
  float x=390;
  float y=290;
  float speedX=random(-3,3);
  float speedY=random(-3,3);
  int diameter=20;
  
   
  void changeDirPlayer(){
    if(speedX<0){
      speedX= -speedX+0.2;
    }else{
      speedX= -speedX-0.2;
    }
    if(speedY<0){
      speedY= speedY+0.2;
    }else{
      speedY= speedY-0.2;
    }      
  }
  
  void startBall(){
    while(speedX<1 && speedX>=-1){
      speedX=random(-3,3);
    }
    while(speedY<1 && speedY>=-1){
      speedY=random(-3,3);
    }  
  }  
  
  void changeDirWall(){
    if(speedY<0){
      speedY=-(speedY-0.2);
    } else{
      speedY=-(speedY+0.2);
    } 
    if(speedX<0){
      speedX = speedX-0.2;
    }else{
      speedX=speedX+0.2;
    }     
  }
  
  void moveBall(){
    x = x+speedX;
    y= y+speedY;
    if(y>580){
      y=580;
      changeDirWall();
    }
    if(y<20){
      y=20;
      changeDirWall();
    }  
  }
  
  void reset(){
    x=390;
    y=290;
    speedX=0;
    speedY=0;
    startBall();
  }  
}
