class Bullet extends Sprite {
    
    Bullet(int x, int y, PVector velocity, int team) {
        super(x, y, 10, 10);
        vel = velocity;
        this.team = team;
    }
    
    @Override
    void update() {
        pos.add(vel);
    }
}