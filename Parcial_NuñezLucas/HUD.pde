Money money;

public void setup() {
  size(800, 800);
  money = new Money(new PVector(width/2, height/2));
}

public void draw() {
  background(200);
  money.display();
  money.move();
}