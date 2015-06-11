final int screenwidth = 800;
final int screenheight = 600;
final int playersTeam = 1;
final int enemiesTeam = 2;
int playerSpeed.imit = 8;
Shape_Factory factory;
PShape enemy;
PShape player;
ArrayList<Sprite> sprites = new ArrayList<Sprite>();
ArrayList<Sprite> enemies = new ArrayList<Sprite>(); 

void setup() {
  size(screenwidth, screenheight, P2D);
  factory = new Shape_Factory();
  enemy = factory.getBasicEnemy();
  player= spawnPlayer()
  noCursor();
}

void draw() {
  background(0);
  shape(enemy, 100,100);
  shape(player, mouseX, mouseY);
  for(int i = 0; i < sprites.size(); i++) {
    sprites.get(i).updatedAndDisplay
}
  
HostileSprite spawnPlayer() {
    PVector startingPosisition = new PVector( 0,5 * width, 0, 85 * height);
    PVector initialVelocity = new PVector(0,0); 
    PShape graphic = factory.getBasicPlayer();
    int radius = 40;
    return new HostileSprite(playersTeam, radius, graphic, startingPosition, initialVelocity);
}


