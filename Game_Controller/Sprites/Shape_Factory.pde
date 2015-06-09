class Shape_Factory {
  PShape basicPlayer;
  PShape basicEnemy;
  int getnumPlayers;
  
  Shape_Factory() {
    buildBasicEnemy();
    buildBasicPlayer();
  }
  
  PShape getBasicPlayer() {
    return basicPlayer;
  }
  
  PShape getBasicEnemy() {
    return basicEnemy;
  }
  
  void buildBasicPlayer() {
    basicPlayer = createShape(GROUP);
    PShape chassis = createShape();
    chassis.beginShape();
    chassis.vertex(0,-20);
    chassis.vertex(50,-50);
    chassis.vertex(50, 0);
    chassis.vertex(0,50);
    chassis.vertex(-50,0);
    chassis.vertex(-50,-50);
    chassis.vertex(0,-20);
    chassis.endShape();
    PShape orb = createShape(ELLIPSE, -15, -10, 30, 40);
    PShape rwing = createShape();
    rwing.beginShape();
    rwing.vertex(50,-50);
    rwing.vertex(40, -50);
    rwing.vertex(50,0);
    rwing.vertex(50,-50);
    rwing.endShape();
    PShape lwing = createShape();
    lwing.beginShape(); 
    lwing.vertex(-50,-50);
    lwing.vertex(-40,-50);
    lwing.vertex(-50,0);
    lwing.vertex(-50,-50);
    lwing.endShape();
    PShape tail = createShape();
    tail.beginShape();
    tail.vertex(0, -20);
    tail.vertex(-30,-40);
    tail.vertex(0,-90);
    tail.vertex(30, -40);
    tail.vertex(0,-20);
    tail.endShape();
    basicPlayer.addChild(chassis);
    basicPlayer.addChild(orb);
    basicPlayer.addChild(rwing);
    basicPlayer.addChild(lwing);
    basicPlayer.addChild(tail); 
      
  }
  
  void buildBasicEnemy() {
    basicEnemy = createShape(GROUP);
    PShape chassis = createShape();
    chassis. beginShape();
    chassis.fill(125,125,0);
    chassis.vertex(-25,-25);
    chassis.vertex(25,-25);
    chassis.vertex(25,25);
    chassis.vertex(-25,25);
    chassis.vertex(-25,-25);
    chassis.endShape();
    basicEnemy.addChild(chassis);
  }
  
}
    

