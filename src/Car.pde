class Car {
  // Member Variables aka data
  color c = color(0);
  float x;
  float y;
  float speed;
  boolean r;

  // Constructor
  Car(color c) {
    this.c = c;
    x = random(width);
    y = random(height);
    speed = random(1, 5);
    int rand = int(random(2));
    if (rand == 0) {
      r = true;
    } else {
      r = false;
    }
  }

  // Member Methods
  void display() {
    if (r == true) {
      strokeWeight(2);
      fill(0);
      rect(x-12, y, 7, 21);
      rect(x+12, y, 7, 21);
      fill(c);
      rectMode(CENTER);
      rect(x, y, 35, 15, 5);
      fill(200);
      rect(x+7, y, 12, 15);
    } else {
      strokeWeight(2);
      fill(0);
      rect(x-12, y, 7, 21);
      rect(x+12, y, 7, 21);
      fill(c);
      rectMode(CENTER);
      rect(x, y, 35, 15, 5);
      fill(200);
      rect(x-7, y, 12, 15);
    }
  }

  void move() {
    if (r == true) {
      x+=speed;
      if (x>width) {
        x = 0;
      }
    } else {
      x-=speed;
      if (x<0) {
        x = width;
      }
    }
  }
}
