void drawScreen5() {
  //noLoop();

  //bwya.update();  
  //bwya.display();  

  background(0);
  fill(255, 100);
  noStroke();


  if (mousePressed) {
    //loop();
    bug[0].move();
    bug[0].display(count);
    count +=1;
    if (count == 56) {
      count =0;
    }
  }
}
