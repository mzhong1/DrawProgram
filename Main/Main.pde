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
//  song = minim.loadFile("A.mp3");
  C = minim.loadFile("C.mp3");
  D = minim.loadFile("D.mp3");
  E = minim.loadFile("E.mp3");
  G = minim.loadFile("G.mp3");
  A = minim.loadFile("A.mp3");
  
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
        if (col == #FA3030) //red
        {
          A.play();          
        }
        else if (col == #FAE330) //yellow
        {
          C.play();          
        }
        else if (col == #61FA30) //green
        {
          D.play();          
        }
        else if (col == #30FADD) //blue
        {
          E.play();          
        }
        else if (col == #CD30FA) //purple
        {
          G.play();
        }
        //song.play();
        //song.rewind();
        line(pmouseX, pmouseY, mouseX, mouseY);
      }
      if(!mousePressed)
      {
        if (col == #FA3030) //red
        {
          A.pause();
        }
        else if (col == #FAE330) //yellow
        {
          C.pause();
        }
        else if (col == #61FA30) //green
        {
          D.pause();
        }
        else if (col == #30FADD) //blue
        {
          E.pause();
        }
        else if (col == #CD30FA) //purple
        {
          G.pause();
        }
        
        //song.pause();
        minim.stop();
        C = minim.loadFile("C.mp3");
        D = minim.loadFile("D.mp3");
        E = minim.loadFile("E.mp3");
        G = minim.loadFile("G.mp3");
        A = minim.loadFile("A.mp3");
        
        //song = minim.loadFile("A.mp3");

      }
      
    }
  }
}