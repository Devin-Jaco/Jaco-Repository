abstract class AbstractSprite implements Sprite {
  PVector position;
  PVector velocity;
  PShape graphic;
  int radius;
  
  AbstratSprite(PVector position, PVector velocity) {
    this.position = position;
    this.velocity = velocity;
  }
  
  void create(PShape graphic, int radius) { 
    this.graphic = graphic;
    this.radius = radius;    
  }
  
  void destroy() {
    sprites.remove(this);
    enemies.remove(this)
  }
  
  void update() {
    position.add(velocity);
  }
  
  void display() {
    shape(graphic, positon x, position y);
  }
  
  void updateAndDisplay() {
    update();
    display();
  }
  
  boolean is Colliding(ProjectileSprite projectile, HostileSprite hostile) {
    return false; 
  }
  
  
  
  
  
  
  
  
  
  
