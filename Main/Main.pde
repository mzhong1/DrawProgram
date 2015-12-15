import processing.sound.*;
import g4p_controls.*;
import ddf.minim.*;

Minim minim;
AudioPlayer song;
AudioPlayer A;
AudioPlayer G;
AudioPlayer E;
AudioPlayer C;
AudioPlayer D;
AudioPlayer Tri;
AudioPlayer Drum;
AudioPlayer Cymbal;


int xMin = 10; //position of canvas from left
int xMax = 1014; //position of canvas from right
int yMin = 10;
int yMax = 710;
color col = #B136F5;
float weight = 4;
color red = #FF0303;
color yellow = #F5E236;
color green = #5FF536;
color blue = #36AAF5;
color purple = #B136F5;
color white = #FFFFFF;
int shape = 0;
int pressStart;
int pressEnd;
boolean pressFlag;
void setup () {
  size(1024, 720);
  background(0);
  noStroke();

  pressFlag = false;
  minim = new Minim(this);
  C = minim.loadFile("C.mp3");
  D = minim.loadFile("D.mp3");
  E = minim.loadFile("E.mp3");
  G = minim.loadFile("G.mp3");
  A = minim.loadFile("A.mp3");
  Tri = minim.loadFile("Triangle.mp3");
  Drum = minim.loadFile("Drum.mp3");
  Cymbal = minim.loadFile("Cymbal.mp3");
  rect(xMin, yMin, width - 2*xMin, height - 2*yMin);

  createGUI();
}

void draw() {

  stroke(col);
  strokeWeight(weight);
  smooth();

  if ((mouseX > xMin)&&(mouseX < xMax))
  {
    if ((mouseY > yMin)&&(mouseY < yMax))
    {
      if (pressFlag && millis() - pressStart > 150)
      {
        if (col == red) //red
        {
          A.play();
          A.setGain(weight-30);
        } else if (col == yellow) //yellow
        {
          C.play();
          C.setGain(weight-30);
        } else if (col == green) //green
        {
          D.play();
          D.setGain(weight-30);
        } else if (col == blue) //blue
        {
          E.play();
          E.setGain(weight-30);
        } else if (col == purple) //purple
        {
          G.play();
          G.setGain(weight-30);
        }

        line(pmouseX, pmouseY, mouseX, mouseY);
      }
      /*
      if (!pressFlag && pressEnd - pressStart > 150) 
       {
       if (col == red) //red
       {
       A.pause();
       } else if (col == yellow) //yellow
       {
       C.pause();
       } else if (col == green) //green
       {
       D.pause();
       } else if (col == blue) //blue
       {
       E.pause();
       } else if (col == purple) //purple
       {
       G.pause();
       }
       
       minim.stop();
       C = minim.loadFile("C.mp3");
       D = minim.loadFile("D.mp3");
       E = minim.loadFile("E.mp3");
       G = minim.loadFile("G.mp3");
       A = minim.loadFile("A.mp3");
       }*/
    }
  }
}

void mouseClicked()
{ /*
  if (shape == 1)
 {
 fill(col);
 rect(mouseX, mouseY, weight*2, weight*2);
 } 
 if (shape == 2)
 {
 fill(col);
 triangle(mouseX, mouseY, mouseX + (weight / 2), mouseY - weight, mouseX + weight, mouseY);
 Tri.rewind(); 
 Tri.play();
 } 
 if (shape == 3)
 {
 fill(col);
 ellipse(mouseX, mouseY, weight*2, weight*2);
 }
 */
}

void mousePressed() {
  pressStart = millis();
  pressFlag = true;
}

void mouseReleased() {
  pressEnd = millis();
  pressFlag = false;
  if (pressEnd - pressStart > 150) 
  {
    if (col == red) //red
    {
      A.pause();
    } else if (col == yellow) //yellow
    {
      C.pause();
    } else if (col == green) //green
    {
      D.pause();
    } else if (col == blue) //blue
    {
      E.pause();
    } else if (col == purple) //purple
    {
      G.pause();
    }

    minim.stop();
    C = minim.loadFile("C.mp3");
    D = minim.loadFile("D.mp3");
    E = minim.loadFile("E.mp3");
    G = minim.loadFile("G.mp3");
    A = minim.loadFile("A.mp3");
    Tri = minim.loadFile("Triangle.mp3");
    Drum = minim.loadFile("Drum.mp3");
  } else if (pressEnd - pressStart < 150) {
    if (shape == 1)
    {
      fill(col);
      rect(mouseX, mouseY, weight*2, weight*2);
      Drum.rewind();
      Drum.play();
    } 
    if (shape == 2)
    {
      fill(col);
      triangle(mouseX, mouseY, mouseX + (weight / 2), mouseY - weight, mouseX + weight, mouseY);
      Tri.rewind(); 
      Tri.play();
    } 
    if (shape == 3)
    {
      fill(col);
      ellipse(mouseX, mouseY, weight*2, weight*2);
      Cymbal.rewind();
      Cymbal.play();
    }
  }
}