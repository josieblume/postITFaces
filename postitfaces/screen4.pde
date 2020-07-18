void drawScreen4() {
  background(high);
  fill(low);
  noStroke();
  bug[0].move();
  bug[0].display(count);
  pause = false;
  //rect(100,100,300,100);
}
