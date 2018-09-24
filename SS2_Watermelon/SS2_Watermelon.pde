//FANE LI LI 
//WATERMELON
void setup() 
{
  size(800, 500);
  background(157,210,216);
  
 //WATERMELON green
  fill(58,134,76);
  noStroke();
  arc(350, 80, 800, 800, 0, HALF_PI+QUARTER_PI,PIE);
  
// white
  fill(255);
  arc(350, 80, 700, 700, 0, HALF_PI+QUARTER_PI,PIE);
//Red
  fill(245,101,111);
  arc(350, 80, 680, 680, 0, HALF_PI+QUARTER_PI,PIE);

}

void draw() {
  //title
  fill(255);
  textSize(32);
  text("1. Add seeds", 20, 50);

}
void mousePressed() {
stroke(0);
fill(0);
ellipseMode(CENTER);
ellipse(mouseX, mouseY, 10, 10);
}
void keyPressed() 
{
//title
  fill(255);
  textSize(52);
  text("1. ADD SEEDS", 20, 50); 
//Background erase/clear
  background(157,210,216);
  
  //WATERMELON green
  fill(58,134,76);
  noStroke();
  arc(350, 80, 800, 800, 0, HALF_PI+QUARTER_PI,PIE);
  
// white
  fill(255);
  arc(350, 80, 700, 700, 0, HALF_PI+QUARTER_PI,PIE);
//Red
  fill(245,101,111);
  arc(350, 80, 680, 680, 0, HALF_PI+QUARTER_PI,PIE);
}
