Money[] money;
PImage background;
int count = 0;

public void setup() {
    size(696, 924);
    background = loadImage("Background.jpg");

    money = new Money[10];
        for (int i = 0; i < money.length; i++) {
            money[i] = new Money(new PVector(random(50, width - 50), random(-height - 50, - 50)));
        }
    
}

public void draw() {
    imageMode(CORNER);
    image(background, 0, 0, width, height);

    for (int i = 0; i < money.length; i++) {
        money[i].display();
        money[i].move();

        if (money[i].position.y > height + 50) {
            count++;
        }
        fill(0);
        textSize(20);
        text("Monedas no recogidas: " + count, 50, 50);
    }
}