/*FANE LI
  THIS IS A MIDTERM FOR THE CLASS MTEC2280 - FALL2018
  MADLIB GAME - MIDTERM 
      CLEAN VERSION
      */

//-------------------------------------------------------------------------------------------------------------------------------//
//sound import
import processing.sound.*;


//-------------------------------------------------------------------------------------------------------------------------------//
//greeting
String[] words = { "Helloooo!", "Hey", "Do you want to play?!", "Play this game"};
int greeting = int(random(words.length));


String [] quote1 = {"You can do it!", "The lack of money is the root of all evil.", "All generalizations are false, including this one.",
                    "When angry, count to four; when very angry, swear.", "There’s no present. There’s only the immediate future and the recent past."};
int quotedoor1 = int(random(quote1.length));


String [] num = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};
int lucky = int(random(num.length));

String [] num2 = {"0", "9", "8", "7", "6", "5", "4", "3", "2", "1"};
int lucky2 = int(random(num.length));

//-------------------------------------------------------------------------------------------------------------------------------//
//SOUND FILE
SoundFile file;

String inst = "data/instrumental.mp3";
String path;


//-------------------------------------------------------------------------------------------------------------------------------//
//states
String state= "intro";


//-------------------------------------------------------------------------------------------------------------------------------//
//font
PFont product;




//-------------------------------------------------------------------------------------------------------------------------------//
//setup run once
void setup() {

//-------------------------------------------------------------------------------------------------------------------------------//
//sound
  path = sketchPath(inst);
  file = new SoundFile (this, path);
  file.loop();
  
  
//-------------------------------------------------------------------------------------------------------------------------------//
//size of the canvas
  size (800, 800);
  //fullScreen();


//-------------------------------------------------------------------------------------------------------------------------------//
//text
  textAlign(CENTER);
  
  
//-------------------------------------------------------------------------------------------------------------------------------//  
//load font
  product = createFont("ProductR.ttf",30);
}


//-------------------------------------------------------------------------------------------------------------------------------//
//display on the screen
void draw() {
  if (state=="intro") {
    intro();
  }
  else if (state=="choice1") {
    choice1();
    doorBlue();
    doorPink();
    fill(255);
    textFont(product);
    text("Do you want to find out your ", width/2, height/4-80);
    text("quote of the day?", width/2, height/4-30);
    text("Please select one:", width/2, height/4+70);
    text("Door01", width/4, height/2-50);
    text("Door02", width/2+width/4, height/2-50);
  }
  else if(state=="door1"){
    door1();
  }
  else if(state=="door2"){
    door2();
  }
  else if (state=="choice2"){
    choice2();
    text("Do you want to find out your ", width/2, height/4-80);
    text("lucky number of the day?", width/2, height/4-30);
    text("Please select one:", width/2, height/4+70);
    text("window01", width/4, height/2-50);
    text("window02", width/2+width/4, height/2-50);
  }
  else if(state=="window1"){
    window1();
  }
  else if(state=="window2"){
    window2();
  }
  
  else if (state == "reset"){
    reset();
  
  }
  
  println(state);
  println("mouseX", mouseX);
  println("mouseY", mouseY);
  println(lucky);
  println(lucky2);
}


//-------------------------------------------------------------------------------------------------------------------------------//
//Display on the screen and the println when mouse pressed change display
void mousePressed() {
  if (state== "intro") {
    state="choice1";
}
  else if (state=="choice1") {
    if (mousePressed && mouseX < width/2 ){
    state= "door1";
  }
    else if (mousePressed && mouseX > width/2){
    state = "door2";
  }
}
  else if (state == "door1" || state == "door2") {
    state = "choice2";
}
  else if (state=="choice2") {
    if (mousePressed && mouseX < width/2 ){
    state= "window1";
  }
    else if (mousePressed && mouseX > width/2){
    state = "window2";
  }
}
else if (state == "window1" || state == "window2") {
    state = "reset";
}
    else if (state == "reset"){
    state = "intro";
}
}


//-------------------------------------------------------------------------------------------------------------------------------//
//keypressed to return to the intro state.
void keyPressed(){
  if (key == 'R' || key == 'r'){
    state = "intro";
  }
}


//-------------------------------------------------------------------------------------------------------------------------------//
//FUNCTIONS TO THE STATES
// INTRO
void intro(){
  background(255);
  clickPlay();
  fill(0);
  text(words[greeting],width/2,height/2-60);   
}
//-------------------------------------------------------------------------------------------------------------------------------//
//INTRO CLICK PLAY BOX
void clickPlay(){
  textFont(product);
  stroke(0);
  strokeWeight(4);
  fill(255);
  rect(220,355,350,60);
  fill(0);
  text("Click to start the game", width/2, height/2);
}


//-------------------------------------------------------------------------------------------------------------------------------//
//CHOICE 1
void choice1(){
  fill(255);
  if (mouseX <= width/2){
    //dark greyish blue
    background(46,46,54); 
  }else if (mouseX >= width/2){
    //pink
    background(168,88,106);
  }
}

//-------------------------------------------------------------------------------------------------------------------------------//
// DISPLAY THE DOORS IN CHOICE1 
void doorBlue(){
  //door BLUE
  noStroke();
  fill(160,158,158);
  rect(125,380,150,340);
//shade
  fill(184,225,255);
  noStroke();
  rect(145,410,45,105);
  rect(215,410,45,105);
//bright
  fill(90);
  rect(145,400,40,100);
  rect(215,400,40,100);
//door knob
  fill(184,225,255);
  ellipse(245,550,20,20);
//down door
  fill(184,225,250);
  rect(145,580,115,105);
  fill(90);
  rect(145,570,110,100);
}
void doorPink(){
  //door PINK
  noStroke();
  fill(160,158,158);
  rect(525,380,150,340);
//shade
  fill(255,184,216);
  noStroke();
  rect(545,410,45,105);
  rect(615,410,45,105);
//bright
  fill(90);
  rect(545,400,40,100);
  rect(615,400,40,100);
//door knob
  fill(255,184,216);
  ellipse(645,550,20,20);
//down door
  fill(255,184,216);
  rect(545,580,115,105);
  fill(90);
  rect(545,570,110,100);
}


//-------------------------------------------------------------------------------------------------------------------------------//
//BLUE OPTION
void door1(){
  //blue
    fill(255);
    background(46,46,54);
    text("Your quote of the day is:", width/2, height/2-100);
    textFont(product);
    text(quote1[quotedoor1],width/2,height/2-50);   
}


//-------------------------------------------------------------------------------------------------------------------------------//
//PINK OPTION
void door2 (){
  //pink
    background(168,88,106);    
    text("Your quote of the day is:", width/2, height/2-100);
    textFont(product);
    text(quote1[quotedoor1],width/2,height/2-50); 
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




//-------------------------------------------------------------------------------------------------------------------------------//
//BLUE OPTION
void window1(){
  //blue
    fill(0);
    background(255);
    text("Your lucky number of the day is:", width/2, height/2-100);
    textFont(product);
    text(num[lucky]+num2[lucky2],width/2,height/2-50);   
}


//-------------------------------------------------------------------------------------------------------------------------------//
//PINK OPTION
void window2(){
  //pink
    background(0);    
    text("Your lucky number of the day is:", width/2, height/2-100);
    textFont(product);
    text(num[lucky]+num2[lucky2],width/2,height/2-50); 
}




//-------------------------------------------------------------------------------------------------------------------------------//
//PLAYAGAIN OPTION
void reset(){
  textSize(36);
  background(255);
  fill(0);
  text("Click to play again", width/2, height/2);
}
