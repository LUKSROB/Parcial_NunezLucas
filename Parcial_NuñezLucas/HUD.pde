Player player;
Money[] money;
PImage background;
int countFloor = 0;
int countBag = 0;

public void setup() {
    size(696, 924);
    background = loadImage("Background.jpg");

    player = new Player(new PVector(width / 2, height - 80));
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
            countFloor++;
        }

        if (money[i].position.x > player.position.x - 50 &&
            money[i].position.x < player.position.x + 50 &&
            money[i].position.y > player.position.y - 20 &&
            money[i].position.y < player.position.y + 75) {
            countBag++;
            money[i].position.y = -50;
        }
        
        fill(0);
        textSize(20);
        text("Monedas no recogidas: " + countFloor, 50, 50);
        text("Monedas recogidas: " + countBag, 50, 80);
    }
    player.display();
    player.move();
}