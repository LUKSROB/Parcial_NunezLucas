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
        image = loadImage("Bag.png");
    }

    public void display() {
        image(this.image, this.position.x, this.position.y, 200, 200);
    }
}