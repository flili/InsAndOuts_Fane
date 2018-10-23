/*FANE LI
  THIS IS A MIDTERM FOR THE CLASS MTEC2280 - FALL2018
  MADLIB GAME - MIDTERM FINALLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL 
*/

PImage red;
PImage b;
PImage yellow;
PImage roll;
PImage force;
PImage pois;
PImage ups;

//sound import
import processing.sound.*;

//greeting
String[] words = { "Helloooo!", "Hey", "Hola", "Have a nice day!", "Play this game"};
int greeting = int(random(words.length));

SoundFile file;

String inst = "data/instrumental.mp3";
String path;
//end sound

//states
String state= "intro";
String option = "option";

//font
PFont product;
PFont title;

void setup() {
//Assign image 
  red = loadImage ("red.jpg");
  b = loadImage ("b.png");
  yellow = loadImage ("yellow.jpg");
  roll = loadImage ("roll.png");
  force = loadImage("force.png");
  pois = loadImage("pois.png");
  ups = loadImage("ups.png");
//sound
  path = sketchPath(inst);
  file = new SoundFile (this, path);
  file.loop();
  
//size of the canvas
  size (1000, 1000);

//text
  textAlign(CENTER);
  textSize(36);
  
  
  //load font
  product = createFont("ProductR.ttf",42);
  title = createFont ("dhs.ttf",50);
}


void draw() {
  if (state=="intro") {
    intro();
  }
  else if (state=="choice1") {
    choice1();
    textFont(product);
    text("Please move the mouse around and choose one:", width/2, height/4);
    text("blue", width/4, height/2);
    text("pink", width/2+200, height/2);
  }
  else if(state=="blue"){
    blue();
  }
  else if(state=="pink"){
    pink();
  }
  else if (state=="choice2"){
    choice2();
    text("emoji", width/4, height/2);
    text("bye", width/2+200, height/2);
  }
  else if(state=="emoji") {
    emoji();
  }
  else if (state =="emoji" || state == "bye") {
    bye();
  }
  else if (state == "bye"){
    intro();
  
  }
  
  println(state);
  println("mouseX", mouseX);
  println("mouseY", mouseY);
}



void mousePressed() {
  if (state== "intro") {
    state="choice1";
} 
  else if (state=="choice1") {
    if (mousePressed && mouseX < width/2 ){
    state= "blue";
  }
    else if (mousePressed && mouseX > width/2){
    state = "pink";
  }
}
  else if (state == "blue" || state == "pink") {
    state = "choice2";
}
  else if (state=="choice2") {
    if (mousePressed && mouseX < width/2 ){
    state= "emoji";
  }
    else if (state== "emoji" && mousePressed && mouseX > width/2){
    state = "bye";
  }
}
  else if (state=="emoji" || state=="bye"){
    state="bye";
 
  }
    else if (state == "bye"){
    state = "intro";
}

}





//FUNCTIONS TO THE STATES
void intro(){
  background(0);
  textFont(title,100);
  text(words[greeting],width/2,height/3);  
  text("Click to start the game", width/2, height/2);
}
void choice1(){
  if (mouseX <= width/2){
    //blue
    background(184,225,250);    
  }else if (mouseX >= width/2){
    //pink
    background(250,184,216);
  }
}
void blue (){
  //blue
    background(184,225,250);
    textFont(product);
    text("Please select one:", width/2, 100);
    red();
    b();
    yellow();
}
void pink (){
  //pink
    background(250,184,216);
    textFont(product);
    text("Please select one:", width/2, 100);
    red();
    b();
    yellow();
}


//void gameOver(){
  //background(255, 0, 0);
  //text("everyone loses.", width/2, height/2);
  //text("click to play again.", width/2, height/2 + 50);
//}
  
void red(){
  imageMode(CENTER);
  image (red, width/4, height/3,50,50);
  //text("this is red", width/2, height/2);
}
void b(){
  imageMode(CENTER);
  image (b, width/2, height/3,50,50);
}
void yellow(){
  imageMode(CENTER);
  image (yellow, width/2+250, height/3,50,50);
}


void choice2(){
  if (mouseX <= width/2){
    //
    fill(0);
    background(255);    
  }else if (mouseX >= width/2){
    //
    fill(255);
    background(0);
  }
  
}

void emoji(){
  background(0);
  fill (255);
  text ("Hey",200,200);
   imageMode(CENTER);
   image (roll, width/2, height/3,150,150);
}

void bye(){
  background(255);
  fill(0);
  text("play again", width/2, height/2);
}
