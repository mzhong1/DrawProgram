import processing.sound.*;
import g4p_controls.*;
import ddf.minim.*;

Minim minim;
AudioPlayer song;

//SoundFile A;
//SoundFile G;
//SoundFile E;
//SoundFile C;
//SoundFile D;
int xMin = 10; //position of canvas from left
int xMax = 1014; //position of canvas from right
int yMin = 10;
int yMax = 710;
color col = #CD30FA;
float weight = 4;
void setup () {
  size(1024, 720);
  background(0);
  noStroke();
  color red = #FF0303;
  color yellow = #F5E236;
  color green = #5FF536;
  color blue = #36AAF5;
  color purple = #B136F5;

  //C = new SoundFile(this, path);
  //D = new SoundFile(this, path);
  //E = new SoundFile(this, path);
  //G = new SoundFile(this, path);
  //A = new SoundFile(this, path);

  minim = new Minim(this);
  song = minim.loadFile("airhorn.mp3");

  rect(xMin, yMin, width - 2*xMin, height - 2*yMin);

  createGUI();
}

void draw() {

  //A = new SoundFile(this, "airhorn.mp3");
  
  stroke(col);
  strokeWeight(weight);
  smooth();
  if((mouseX > xMin)&&(mouseX < xMax))
  {
    if((mouseY > yMin)&&(mouseY < yMax))
    {
      if(mousePressed)
      {
        song.loop();
        //song.loop();
        line(pmouseX, pmouseY, mouseX, mouseY);
      }
      if(!mousePressed)
      {
        song.pause();
        minim.stop();

        song = minim.loadFile("airhorn.mp3");

      }
      
    }
  }
}