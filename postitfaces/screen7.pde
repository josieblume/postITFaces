void drawScreen7() {
  background(255);
  fill(255);
  color navblue = color(0, 0, 255);
  stroke(navblue);
  for (PShape s : shapes) {
    shape(s);
  }
  textSize(100);
  fill(navblue);
  textLeading(125);
  textAlign(RIGHT);
  text(" think\n    ing\n i don't\n know", width-50, height-350);
  //text("thinking \n i dont \n know", 2*width/3+1, 100+height/2+1);
 
  
  //textSize(198);
  //fill(255, 100);
  //textLeading(200);
  //text(" think\n    ing\n i don't\n know", 2*width/3, height/2);
}
