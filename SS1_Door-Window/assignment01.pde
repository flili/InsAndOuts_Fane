//Fane Li Li
//Door & Window

////////////////////////////////


//size of the canvas
  size (1080,720);
  
//background color
  background (240,224,208);
//door
  noStroke();
  fill(240,238,237);
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
  fill(126,123,120);
  ellipse(320,570,20,20);
//down door
  fill(185,183,180);
  rect(220,600,115,105);
  fill(255);
  rect(220,590,110,100);
  //window blue
  fill(179,219,224);
  ellipse(550,250,200,200);
//window lines shade
  stroke (120,181,188);
  strokeWeight(10);
  line(550,345,550,155);
  line(550,250,645,250);
//white lines
  stroke(255);
  line(540,345,540,155);
  line(540,240,645,240);
//window out white
  stroke(255);
  noFill();
  ellipse(550,250,200,200);
  
  
//title
  fill(255);
  textSize(52);
  text("Door & Window", 20, 50); 
