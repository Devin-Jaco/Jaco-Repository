final int screenwidth = 800;
final int screenheight = 600;
Shape_Factory factory;
PShape enemy;
PShape player;

void setup() {
  size(screenwidth, screenheight, P2D);
  factory = new Shape_Factory();
  enemy = factory.getBasicEnemy();
  player= factory.getBasicPlayer();
  noCursor();
}

void draw() {
  background(0);
  shape(enemy, 100,100);
  shape(player, mouseX, mouseY);
}
