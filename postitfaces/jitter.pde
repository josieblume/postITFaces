class Jitter {
  float x = 150;
  float y = 150;
  float speed;

  Jitter(float tempSpeed) {
    speed = tempSpeed;
  }

  void move() {
    x += random(-speed, speed);
    y += random(-speed, speed);
  }

  void display(int shapenum) {
    int displaynum = shapenum;
    shape(shapes[displaynum], x, y);
  }
}
