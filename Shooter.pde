class Shooter extends Invader{
    long mark, wait = 1200;

    Shooter(float x, float y){
        super(x,y);
        mark = millis();
    }

    @Override
    void update(){
        super.update();
        PVector aim = new PVector(_SM.player.pos.x - this.pos.x, _SM.player.pos.y - this.pos.y);
        aim = aim.normalize().mult(8);

        if(millis() - mark > wait){
            mark = millis();
            _SM.spawn(new Bullet(pos, aim, team));
        }
    }
}