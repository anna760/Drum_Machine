// import Minim
import ddf.minim.*;
Minim minim;
AudioSample d1;
AudioSample d2;
AudioSample d3;
AudioSample d4;
AudioOutput out;
// track when a drum has been struck
boolean drum1struck;
boolean drum2struck;
boolean drum3struck;
boolean drum4struck;
void setup() {
// initialize the screen
size(210, 220);
smooth();
// initialize sound
minim = new Minim(this);
out = minim.getLineOut();
d1 = minim.loadSample("bongo1.wav");
d2 = minim.loadSample("bongo7.wav");
d3 = minim.loadSample("cymb.wav");
d4 = minim.loadSample("SD.wav");
// set boolean variables to initialize the graphics
drum1struck = false;
drum2struck = false;
drum3struck = false;
drum4struck = false;
}
void draw() {
background(230,255,230);
// draw the drums: if a drum has just been struck
// then fill its ellipse with color as visual feedback for the user
// drum 1
if (drum1struck == true) {
fill(255,50,50);
drum1struck = false;
} else {
fill(255);
}
ellipse(50, 55, 100, 100);
// drum 2
if (drum2struck == true) {
fill(255,255,50);
drum2struck = false;
} else {
fill(255);
}
ellipse(160, 55, 100, 100);
// drum 3
  if (drum3struck == true) {
fill(50,255,50);
drum3struck = false;
} else {
fill(255);
}
ellipse(50, 165, 100, 100);
// drum 4
if (drum4struck == true) {
fill(50,50,255);
drum4struck = false;
} else {
fill(255);
}
ellipse(160, 165, 100, 100);
}
void keyPressed() {
if (key == 'a' || key == 'A') { //note you may have to retype the
drum1struck = true;             //single quote marks after copying
d1.trigger();
}
else if (key == 'b' || key == 'B') {
drum2struck = true;
d2.trigger();
}
else if (key == 'c' || key == 'C') {
drum3struck = true;
d3.trigger();
}
else if (key == 'd' || key == 'D') {
drum4struck = true;
d4.trigger();
}
}
 
void mousePressed() {
if(mouseX>105 && mouseY>110){
//code here to trigger the first drum
//set Boolean for drum1 to true
drum4struck = true;
d4.trigger();
}
else if(mouseX>105 && mouseY<110)
{
//code here to trigger the second drum
//set Boolean for drum1 to true
drum2struck = true;
d2.trigger();
}
else if(mouseX<105 && mouseY<110)
{
//code here to trigger the second drum
//set Boolean for drum1 to true
drum1struck = true;
d1.trigger();
}
else
{
//code here to trigger the second drum
//set Boolean for drum1 to true
drum3struck = true;
d3.trigger();
}
}
