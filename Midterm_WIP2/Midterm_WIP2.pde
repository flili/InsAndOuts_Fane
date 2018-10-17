//creating a simple heshe with 3 heshe states: intro, heshe, heshe over
//click the mouse to advance the states

String state= "intro";
PFont product;
PFont title;

void setup() {
  size (1000, 1000);
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
    text("blue", width/4, height/2);
    text("pink", width/2+200, height/2);
  }
  //else if (state == "blue") {
    //state = "game over";
  //}
  else if (state =="game over") {
    gameOver();
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
    state= "blue";
  }
  else if (state=="pink") {
    state= "pink";
  }
  else if (state == "blue" || state == "pink") {
    state = "game over";
  }
  else if (state=="game over") {
    state= "intro";
  }
  
  
}





//FUNCTIONS TO THE heshe STATES
void intro(){
  background(0);
  textFont(title,100);
  text("Madlib Game", width/2, height/2+50);
  text("click to start the Game", width/2, height/2);
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

}
void pink (){
  //pink
    background(250,184,216);
    textFont(product);
    text("Please select one:", width/2, 100);
}


void gameOver(){
  background(255, 0, 0);
  text("everyone loses.", width/2, height/2);
  text("click to play again.", width/2, height/2 + 50);}
