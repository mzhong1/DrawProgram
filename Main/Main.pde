import processing.sound.*;
import g4p_controls.*;
import ddf.minim.*;

Minim minim;
AudioPlayer song;
AudioPlayer A;
AudioPlayer C;
AudioPlayer D;
AudioPlayer E;
AudioPlayer G;


int xMin = 10; //position of canvas from left
int xMax = 1014; //position of canvas from right
int yMin = 10;
int yMax = 710;
color col = #CD30FA;
float weight = 4;
color red = #FF0303;
color yellow = #F5E236;
color green = #5FF536;
color blue = #36AAF5;
color purple = #B136F5;
color white = #FFFFFF;
color kill = #001100;
color bg = white;

boolean mouseP = false;
PImage savedFrame;
String path = "data/";
String filename = "savedFrame.png";

void setup () {
  size(1024, 720);
  background(0);
  noStroke();


  minim = new Minim(this);
  A = minim.loadFile("A.mp3");
  C = minim.loadFile("C.mp3");
  D = minim.loadFile("D.mp3");
  E = minim.loadFile("E.mp3");
  G = minim.loadFile("G.mp3");
  
  
  rect(xMin, yMin, width - 2*xMin, height - 2*yMin);

  createGUI();
  
}

void draw() {
  
  stroke(col);
  strokeWeight(weight);
  smooth();
  if((mouseX > xMin)&&(mouseX < xMax))
  {
    if((mouseY > yMin)&&(mouseY < yMax))
    {
      if(mousePressed)
      {
        if(!mouseP)
        {
          saveFrame(path + filename);
          savedFrame = loadImage(filename);
          mouseP = true;
        }
        color temp = savedFrame.get(mouseX, mouseY);
        if(bg != temp)
        {
          pauseSound(bg);
          bg = temp;
        }
        playSound(bg);
        playSound(col);

        line(pmouseX, pmouseY, mouseX, mouseY);
      }
      if(!mousePressed)
      {
        pauseSound(kill);
        mouseP = false;
      }
    }
  }
}

void playSound(color c)
{
  int pos;
  if(c == red)
  {
    if((pos = A.position()) < 1000 || pos > 19000)
    {
      A.cue(1000);
    }
    A.play();
    A.setGain(weight-30);
  }
  else if(c == yellow)
  {
    if((pos = C.position()) < 1000 || pos > 19000)
    {
      C.cue(1000);
    }
    C.play();
    C.setGain(weight-30);
  }
  else if(c == green)
  {
    if((pos = D.position()) < 1000 || pos > 19000)
    {
      D.cue(1000);
    }
    D.play();
    D.setGain(weight-30);
  }
  else if(c == blue)
  {
    if((pos = E.position()) < 1000 || pos > 19000)
    {
      E.cue(1000);
    }
    E.play();
    E.setGain(weight-30);
  }
  else if(c == purple)
  {
    if((pos = G.position()) < 1000 || pos > 19000)
    {
      G.cue(1000);
    }
    G.play();
    G.setGain(weight-30);
  }  
}

void pauseSound(color c)
{
  if(c == red)
  {
    A.pause();
    A.cue(1000);
  }
  else if(c == yellow)
  {
    C.pause();
    C.cue(1000);
  }
  else if(c == green)
  {
    D.pause();
    D.cue(1000);
  }
  else if(c == blue)
  {
    E.pause();
    E.cue(1000);
  }
  else if(c == purple)
  {
    G.pause();
    G.cue(1000);
  }
  else if(c == kill)
  {
    A.pause();
    C.pause();
    D.pause();
    E.pause();
    G.pause();
    A.cue(1000);
    C.cue(1000);
    D.cue(1000);
    E.cue(1000);
    G.cue(1000);
  }
}