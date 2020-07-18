class BWbackground {

  //frameRate(24);
  int nPicsback = 239;
  PImage[] bwbackground = new PImage[nPicsback];
  int currentImageback = 0;

  BWbackground() {

    for (int i = 0; i < nPicsback; i++) {
      bwbackground[i] = loadImage("background?0" + nf(i+1, 3) + ".jpg");
    }
  }

  void update() {
    //currentImageback = int(random(200, 239));
    currentImageback = int(random(100, 200));
  }

  void display() {
    //noStroke();
    fill(50,75,50, 50);
    //image(bwbackground[currentImageback], -100, -400, 2*width, 2*height);
    
    //tint(0, 153, 204, 126);
    image(bwbackground[currentImageback], 0, 0, width, height);
    
    rect(0, 0, width, height);
  }
}
