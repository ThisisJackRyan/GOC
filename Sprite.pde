class Sprite {
  PVector pos, vel, size;
  
  Sprite(float x, float y, float w, float h){
    pos = new PVector(x, y);
    vel = new PVector(0, 0);
    size = new PVector(w, h);
  }
  
  void update(){
    
  }
  
  void display(){
    ellipse(pos.x, pos.y, size.x, size.y);
  }
}
