class Overlay {

  Overlay() {
  }
  void display(color b) {
    fill(b, 10);
    noStroke();
    //stroke(b,10);
    bug[0].move();
    bug[0].display(count);

    if (mousePressed) {
      count +=1;
      if (count == 56) {
        count =0;
      }
    }
  }
}
