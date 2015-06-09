int y = 35;
int x = 0;
void setup() {
  size(300, 300);
  if ( key == CODED) {
    if (keyCode == LEFT) {
      x = -1;
    }
    else if(keyCode == RIGHT) {
      x = 1;
    }
  }
  else {
    x = 0;
  }
  rect( x,y, width/2, height/2);
  
}
