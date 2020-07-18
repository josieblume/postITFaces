/*INSTRUCTIONS: click mouse and press space bar.

This is an extension from my original collected post-it dataset, 
after learning more about processing and how I can make the piece more interactive and present the data in different ways.

info on original dataset project:
===================================================
data collected APRIL 13TH, 3 weeks into Quarantine


For my data set here, I decided to collect data of my anxiety. 
I have had anxiety attacks more frequently lately and more out of the blue.
I usually doodle on post it notes, and wanted to see how my doodles of the same simple 
face change—do the lines become more lose? does the drawing cover more surface area 
as a direct correlation between the level of anxiety? Do more drawings get made
pre, during or post anxiety attack? Are there similar faces that are drawn, 
and when do these 'clones' arise? Does the face lose/gain more features at 
max or min anxiety? 
the audience I had in mind was a personal project for myself,
as an act of self reflection; to understand further how my anxiety affects
my day to day life and serves as a distraction from my objective reality.
I would not call this project final, I want to figure out some more variables,
and possibly collect data more efficiently.
these drawings follow the level of anxiety and anxious thoughts throughout the day 
over approximately 12 hours.
The drawings are in order of day, overlapped.*/
PShape[] shapes = new PShape[56];
Jitter[] bug = new Jitter[56];
Overlay six;
BWbackground bwya;

import processing.sound.*;
SoundFile file;

int x = 0;
int y = 0;
int t = 30;

int backcolor = 255;
int count = 0;

int rx2 = 1;
int ry2 = 5;
int screen = 1;

int timeElapsed = 0;
boolean pause = false;


color high = color(18, 0, 0);
color low = color(255,0, 0);
color blu = color(0, 0, 255);

void setup() {
  fullScreen();
  //size(1000, 1000);
  file = new SoundFile(this, "Justice - Stress -.mp3");
  //file.play();
  bwya= new BWbackground();
  six = new Overlay();
  for (int i = 0; i < bug.length; i++) {
    bug[i] = new Jitter(random(rx2, ry2));
  }
  for (int i = 0; i < shapes.length; i++) {
    shapes[i] = new PShape();
    shapes[i]= loadShape((i+1)+".svg");
    shapes[i].disableStyle();
  }
  //bwya.update();  
  //bwya.display();
  noTint();
  background(69, 80, 92);
}


void draw() {
  //bwya.update();  
  //bwya.display();  
  //noTint();
  println(screen);
  if (screen == 1) {
    drawScreen1();
  } else if (screen == 2) {
    drawScreen2();
  } else if (screen == 3) {
    drawScreen3();
  } else if (screen == 4) {
    drawScreen4();
  } else if (screen == 5) {
    drawScreen5();
  } else if (screen == 6) {
    drawScreen6();
  } else if (screen == 7) {
    drawScreen7();
  }
  //fill(255, t);
  ////stroke(0, 2, 250);
  //stroke(0, 20);

  //fill(255, 10);
  //noStroke();

  //t+=30;
}



void keyPressed() {
  if (key == ' ') {
    screen++;
  }
}
void mousePressed() {
  if (screen == 5) {
    pause = !pause;
  }
}
