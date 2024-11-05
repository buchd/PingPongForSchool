  Paddle Pleft= new Paddle();
  Paddle Pright= new Paddle();
  Game game=new Game();
  Ball b1 = new Ball();
  
void setup(){
  size(800,600);
  Pleft.x=50;
  Pleft.y=260;
  Pright.x=730;
  Pright.y=260;
}

void draw(){
  background(0); // Clear the window
  if(game.start){
    textSize(10);
    text("Punktestand: Spieler Links: "+game.PointsLeft+" Spieler Rechts "+game.PointsRight,220,10);
    rect(Pleft.x,Pleft.y,Pleft.widht,Pleft.high);
    rect(Pright.x,Pright.y,Pright.widht,Pright.high);
    circle(b1.x, b1.y, b1.diameter);
    b1.moveBall();
    if(b1.x>=50&&b1.x<=70 ){
      checkCollL();
    }
    if(b1.x>=730&& b1.x<=750){
      checkCollR();
    }
    checkPoints();
    game.Winner();
  }else{
    textSize(30);
    text(game.state,100,200);
  }
}
void checkPoints(){
     if(b1.x<=0){
      game.AddPointL();
      b1.reset();
    }
    if(b1.x>=800){
      game.AddPointR();
      b1.reset();
    }
}  

void keyPressed() {
  if(b1.speedX<=0){
     if (key == 'S' || key == 's') {
       Pleft.moveDown();
       Pleft.y=Pleft.y+5;
    } 
    if (key == 'W' || key == 'w') {
      Pleft.moveUp();
      Pleft.y=Pleft.y-5;
    }
  }else{
   if(key == 'O'|| key == 'o' ){
     Pright.moveUp();

    } 
    if (key == 'L'|| key == 'l') {    
      Pright.moveDown();
    } 
  }
}

void checkCollL(){
  if(b1.y>=Pleft.y && b1.y<=(Pleft.y+80)){
    b1.changeDirPlayer();
  }    
}

void checkCollR(){
  if(b1.y>=Pright.y&&b1.y<=(Pright.y+80)){
    b1.changeDirPlayer();
  }    
}

void mousePressed() {
    game.startGame();
    b1.startBall();
}
