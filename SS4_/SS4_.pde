//FANE LI LI
//ASSIGNMENT 3
//SEPTEMBER 24TH, 2018

//RGB 
  float r = 255;
  float g = 255;
  float b = 255;
  
  float y=0;
  float speed = 0; // speed of square
  float gravity = 0.1;
  
void setup() {
  size(1000, 1000);
}
void draw() {
  background(255);
// Draw the ball
  r=0;
  g=0;
  b=0;
  
  fill(r,g,b);
  noStroke();
  ellipse(width/3, y-100, 100, 100);
  ellipse(width/2, y-50, 100, 100);
  ellipse(width   , y-60, 100, 100);
  
  y = y + speed;
  speed = speed + gravity;
  
  for (int i = 0; i <= 5; i = i+1){
    if(speed < 10 ){
    fill(100);
    ellipse(width/2, y , 50, 50);
    i++;
  }
}

// Bounce back up!
  if (y > height) {
  speed = speed * -0.75;
  y = height;
}


//GUIDE
println("speed: " + speed);
println("gravity: " + gravity);
}

void keyPressed(){
  background(200);
}
