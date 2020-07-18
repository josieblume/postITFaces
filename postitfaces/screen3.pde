void drawScreen3() {
  //backcolor = 0;
  fill(high, 10);
  noStroke();

  bug[0].move();
  bug[0].display(count);

  if (mousePressed) {
    count +=1;
    if (count == 56) {
      count =0;
    }
  }

  //timeElapsed = 100;

  if (mousePressed == true /*&& timeElapsed ==100*/) {
    drawScreen4();
  }
}
