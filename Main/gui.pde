/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void Red_click(GButton source, GEvent event) { //_CODE_:Red:633822:
  col = red;
  shape = 0;
} //_CODE_:Red:633822:

public void Yellow_click(GButton source, GEvent event) { //_CODE_:Yellow:263855:
  col = yellow;
  shape = 0;
} //_CODE_:Yellow:263855:

public void Green_click(GButton source, GEvent event) { //_CODE_:Green:760754:
  col = green;
  shape = 0;
} //_CODE_:Green:760754:

public void Blue_click(GButton source, GEvent event) { //_CODE_:Blue:378273:
  col = blue;
  shape = 0;
} //_CODE_:Blue:378273:

public void Purple_click(GButton source, GEvent event) { //_CODE_:Purple:606470:
  col = purple;
  shape = 0;
} //_CODE_:Purple:606470:

public void Eraser_click(GButton source, GEvent event) { //_CODE_:Eraser:983116:
  col = white;
  shape = 0;
} //_CODE_:Eraser:983116:

public void Rectangle(GButton source, GEvent event) { 
  if (col == white)
  {
    col = purple;
  }
  shape = 1;
} 
public void Triangle(GButton source, GEvent event) { 
  if (col == white)
  {
    col = purple;
  }
  shape = 2;
} 


public void Size_change(GSlider source, GEvent event) { //_CODE_:Line_size:703256:
  weight = source.getValueF();
} //_CODE_:Line_size:703256:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(true);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Sketch Window");
  Red = new GButton(this, 10, 10, 70, 20);
  Red.setText("Red");
  Red.setLocalColorScheme(GCScheme.RED_SCHEME);
  Red.addEventHandler(this, "Red_click");
  Yellow = new GButton(this, 10, 40, 70, 20);
  Yellow.setText("Yellow");
  Yellow.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  Yellow.addEventHandler(this, "Yellow_click");
  Green = new GButton(this, 10, 70, 70, 20);
  Green.setText("Green");
  Green.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  Green.addEventHandler(this, "Green_click");
  Blue = new GButton(this, 10, 100, 70, 20);
  Blue.setText("Blue");
  Blue.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  Blue.addEventHandler(this, "Blue_click");
  Purple = new GButton(this, 10, 130, 70, 20);
  Purple.setText("Purple");
  Purple.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  Purple.addEventHandler(this, "Purple_click");
  Eraser = new GButton(this, 10, 163, 70, 20);
  Eraser.setText("Eraser");
  Eraser.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  Eraser.addEventHandler(this, "Eraser_click");
  Rectangle = new GButton(this, 10, 210, 70, 20);
  Rectangle.setText("Square");
  Rectangle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  Rectangle.addEventHandler(this, "Rectangle");
  Triangle = new GButton(this, 10, 240, 70, 20);
  Triangle.setText("Triangle");
  Triangle.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  Triangle.addEventHandler(this, "Triangle");
  Line_size = new GSlider(this, 102, 9, 100, 40, 10.0);
  Line_size.setShowValue(true);
  Line_size.setLimits(4.0, 0.0, 60.0);
  Line_size.setNbrTicks(60);
  Line_size.setNumberFormat(G4P.DECIMAL, 2);
  Line_size.setOpaque(true);
  Line_size.addEventHandler(this, "Size_change");
}

// Variable declarations 
// autogenerated do not edit
GButton Red; 
GButton Yellow; 
GButton Green; 
GButton Blue; 
GButton Purple; 
GButton Eraser;
GButton Rectangle;
GButton Triangle;
GSlider Line_size; 