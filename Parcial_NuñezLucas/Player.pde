class Player{
    PImage image;
    PVector position;
    
    public Player() {
        chargeImage();
    }

    public Player(PVector position) {
        chargeImage();
        this.position = position;
    }

    public void chargeImage() {
        imageMode(CENTER);
        image = loadImage("Bag.png");
    }

    public void display() {
        image(this.image, this.position.x, this.position.y, 200, 200);
    }

    public void move() {
        if (keyPressed) {
            if (key == 'a' || key == 'A') {
                this.position.x -= 15;
            }
            if (key == 'd' || key == 'D') {
                this.position.x += 15;
            }
        }
    }
}