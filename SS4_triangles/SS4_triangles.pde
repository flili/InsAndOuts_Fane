  float r = 0;
  float g = 0;
  float b = 0;
void setup(){
  
  size(1000,1000);
  background (255);


}



void draw(){
  
  noStroke();
  fill(255);
  rect(0,0,100,100);
  r=142;
  g=140;
  b=141;
  fill(r,g,b);
  triangle(0,0,50,50,100,0);
  triangle(0,100,50,50,100,100);
  r=200;
  fill(r);
  triangle(100,0,100,100,200,100);
  
  println ("mouseX: ", mouseX );
  println ("mouseY: ", mouseY );
}
