class Game{
  int PointsLeft =0;
  int PointsRight =0;
  boolean start=false;
  String state="Drücke mit der Maus ins Feld um ein Spiel zu starten\n Der linke Spieler steuert mit W und S \n der rechte Spieler startet mit O und L";
  
  void AddPointL(){
    PointsLeft++;
  }
  
  void AddPointR(){
    PointsRight++;
  }
  
  void Winner(){
    if(PointsLeft>=5){
      state="Der Linke Spieler hat gewonnen\n Klicke wieder mit der Maus, \n um ein neues Spiel zu starten";
      PointsLeft =0;
      PointsRight =0;
      start=false;
    }else if(PointsRight>=5){
      state="Der Rechte Spieler hat gewonnen\n Klicke wieder mit der Maus, \n um ein neues Spiel zu starten";
      PointsLeft =0;
      PointsRight =0;
      start=false;
    }  
  
  }
  void startGame(){
    start=true;
  }
}
