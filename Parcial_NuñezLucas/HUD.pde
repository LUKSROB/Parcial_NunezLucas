Money[] money;
PImage background;

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
    }
    //counter();
}
/*
public void counter() {
    int count = 0;
    for (int i = 0; i < money.length; i++) {
        if (money[i].y > height) {
            count++;
        }
    }
    println(count);
}*/