class Sprite {
    PVector pos, vel, size;
    int team = 2;
    
    Sprite(float x, float y, float w, float h) {
        pos = new PVector(x, y);
        vel = new PVector(0, 0);
        size = new PVector(w, h);
    }
    
    void update() {
        
    }
    
    void display() {
        fill(255);
        ellipse(pos.x, pos.y, size.x, size.y);
    }
    
    void handleCollision() {
        _SM.destroy(this);
    }
}