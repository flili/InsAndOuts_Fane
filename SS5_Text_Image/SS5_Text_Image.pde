//Create a PImage object to store image
PImage roll; 
PImage force;  
PImage ups;
PImage pois;

void setup() {
  size (1000, 1000);
  background (255);
  imageMode(CENTER); 
  textSize(50);


  //Assign image to object using loadImage() method
  roll= loadImage("roll.png");
  force= loadImage ("force.png");
  ups = loadImage ("ups.png");
  pois = loadImage ("pois.png");
}  

void draw() {
  background(255);  
  
  if(mouseX< height/2){
    background(255);
    fill(0, 102, 153);
    text("upss...", 10, 60);
    image(ups ,width/2+12, height/2);
    
  }
  else if(mouseY < width/2){
    fill(0, 102, 153);
    text("I feel bad", width/2, 60);
    image(pois, width/2, height/2);
  }
  else{}
  
  
  if (mousePressed) {
    background(255);
    image (force, width/2, height/2);
  } else if(keyPressed) {
    fill(0, 102, 153);
    text("ok...", 10, 60);
    image (roll, width/2, height/2);  
}
  
}
