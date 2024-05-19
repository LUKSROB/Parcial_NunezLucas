Money[] money;

public void setup() {
    size(800, 800);
    money = new Money[10];
        for (int i = 0; i < money.length; i++) {
            money[i] = new Money(new PVector(random(50, width - 50), random(-height - 50, - 50)));
        }
    
}

public void draw() {
    background(200);
    for (int i = 0; i < money.length; i++) {
        money[i].display();
        money[i].move();
    }
}