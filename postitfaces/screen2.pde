void drawScreen2() {
  background(high);
  fill(low);
  noStroke();
  bug[0].move();
  bug[0].display(count);

  if (mousePressed) {
    count +=1;
    if (count == 56) {
      count =0;
    }
  }
}
