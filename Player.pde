class Player extends Sprite {
    boolean left, right, up, down;
    
    Player(float x, float y) {
        // super refers to the parent
        // ... I use it here as a constructor
        super(x, y, 40, 40); // in this case, Sprite
        team = 1;
    }
    @Override
    void update() {
        float speed = 1.2;
        if (left)  vel.add(new PVector( -speed, 0));
        if (right) vel.add(new PVector(speed, 0));
        if (up)    vel.add(new PVector(0, -speed));
        if (down)  vel.add(new PVector(0, speed));
        // update the position by velocity
        pos.add(vel);

        if(pos.x < 0 + size.x/2) pos.x = size.x/2;
        if(pos.x > width - size.x/2) pos.x = width - size.x/2;
        if(pos.y < 0 + size.x/2) pos.y = size.y/2;
        if(pos.y > height - size.y/2) pos.y = height - size.y/2;

        // always try to decelerate
        vel.mult(0.9);
    }


    void display() {
        fill(200,0,200);
        ellipse(pos.x, pos.y, size.x, size.y);
    }

    @Override
    void handleCollision(){
      //don't die
    }


    void keyUp() {
        switch(key) { // key is a global value
            case 'a':
            case 'A' : left = false; break;
            case 's':
            case 'S' : down = false; break;
            case 'd':
            case 'D' : right = false; break;
            case 'w':
            case 'W' : up = false; break;
        }
    }
    void keyDown() {
        switch(key) { // key is a global value
            case 'a':
            case 'A' : left = true; break;
            case 's':
            case 'S' : down = true; break;
            case 'd':
            case 'D' : right = true; break;
            case 'w':
            case 'W' : up = true; break;
            case 'f': fire(); break;
        }
    }

    void fire(){
        PVector aim = new PVector(0, -10); //up
        _SM.spawn(new Bullet(pos, aim, team));
    }
}