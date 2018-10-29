//Fane Li Li
//Door & Window

////////////////////////////////
int w = 255;

//Doorknob
float r = 0;
float g = 0;
float b = 0;

//Window out
float q = 179;
float l = 219;
float e = 224; 

//window shade
float h = 120;
float j = 181; 
float k = 188;

//door color
float v = 240;
float n = 238; 
float m = 237;

void setup(){
//size of the canvas
  size (1000,720);

//title
  fill (w);
  textSize(52);
  text("Door & Window", 20, 50); 
}
void draw(){
  if (mouseX < width/2 && mouseY < height/2) 
  {
//BEIGE
  background (240,224,208);
  fill(q,l,e);
}
else if (mouseX > width/2 && mouseY < height/2) 
{
//BLUE
  background(51,71,87);
}
else if (mouseX < width/2 && mouseY > height/2 ) 
{
//RED
  background (126,62,62);
}
else if (mouseX > width/2 && mouseY > height/2) 
{
//GREEN
  background(108,191,132);
}
//door
  noStroke();
  fill(v,n,m);
  rect(200,400,150,360);
//shade
  fill(185,183,180);
  noStroke();
  rect(220,430,45,105);
  rect(290,430,45,105);
//bright
  fill(255);
  rect(220,420,40,100);
  rect(290,420,40,100);
//door knob
  fill(r,g,b);
  ellipse(320,570,20,20);
//down door
  fill(185,183,180);
  rect(220,600,115,105);
  fill(255);
  rect(220,590,110,100);
  
//WINDOW START
//window blue
  fill(q,l,e);
  ellipse(550,250,200,200);
//window lines shade
  stroke (h,j,k);
  strokeWeight(10);
  line(550,345,550,155);
  line(550,250,645,250);
//white lines
  stroke(255);
  line(540,345,540,155);
  line(540,240,645,240);
//window out white
  stroke(w);
  noFill();
  ellipse(550,250,200,200);
}

  
void keyPressed() {
//DOOR KNOB
  r=random(171);
  g=random(71,117);
  b=random(71,103);
//dor
//door
  v=random(82,170);
  n=random(89,90); 
  m=random(82,90);
}

void mousePressed(){
//window out
  q=random(212,230);
  l=random(190,195);
  e=random(117,122);
//window shade
  h=208;
  j=154;
  k=88;
}
