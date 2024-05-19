class Money extends SpawnMoney{
    PImage image;
    PVector position;

    public Money() {
        chargeImage();
    }

    public Money(PVector position) {
        chargeImage();
        this.position = position;
    }

    public void chargeImage() {
        image = loadImage("Money.png");
    }

    public void display() {
        imageMode(CENTER);
        image(this.image, this.position.x, this.position.y, 84, 76);
    }

    public void move() {
        if (this.position.y > 850) {
            this.position.y = - 50;
            this.position.x = (int) random(50, width - 50);
        }

        this.position.y += 5;
    }
}