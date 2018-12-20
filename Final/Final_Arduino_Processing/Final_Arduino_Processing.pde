/*
Reads values from serial port, written to the port by Arduino.
 The size of an ellipse changes according to the serial values.
 Must assign the correct port, see instructions below!
 */

import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

void setup() {
  size(1200, 900);
  /*
   IMPORTANT: We must tell Processing which port to read from.
   Run the sketch and check your console to see the results of printArray(Serial.list());
   and that is how you know the port to use.
   On my Mac, it is port 1 and so I open Serial.list()[1].
   */

  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  
  
  //draws an ellipse that grows and shrinks in relation to val
  window();
  wall();
  rug();
  sofa();
  lamp();
  shelves();
  books(); 
  
  println (val); //prints to Processing console
  
}

void window(){
  if (val == 0){
    background (0);
  }
  else if (val >= 1){
    background (#F5F5F5);
  }
    //inside
     if (val >= 5){
    //window blue
      noStroke();
      fill(179,219,224);
      ellipse(width/2 + 250, height/2-300,200,200);
     }
     
     
      if (val >= 15){
     //window lines shade
       stroke (120,181,188);
       strokeWeight(10);
       line(width/2+260, 250, width/2 + 260, 50);
       line(width/2+260, 160, width/2 + 345, 160);
     }
     
     
     if(val >=25){
    //white lines
       stroke(255);
       line(width/2+250, 250, width/2 + 250, 50);
       line(width/2+250, 150, width/2 + 345, 150);
     }
     
     
     if(val >= 35){
     //window out white
       strokeWeight(10);
       stroke(255);
       noFill();
       ellipse(width/2 + 250, height/2-300,200,200);
     }
  }
  
  void wall(){
    if(val >= 45){
      stroke(#708090);
      strokeWeight(2);
      line(1060, 0, 1060, 550);
    }
    //
    if(val >= 55){
      line(1060, 550, 1200, 900);
    }
    //
    if(val >= 65){
    line(0, 550, 1060, 550);
    }
  }
  
  void rug(){
    if(val >= 75){
      stroke(220);
      strokeWeight(20);
      fill(#BC8F8F);
      quad(35,620,-20,840,1005,850,950,620);
    }
  }
    
    
    void sofa(){
    if(val >= 85){
    //SHAPE
      fill(#b3002d);
      noStroke();
      rect(200, height/2+30,600,150,100);
    }
    
    if(val >= 95){
       rect(200, height/2+100,600,150);
    }
    
    if(val >= 105){
    //SOFA ARMS
      fill(#800020);
      rect(150, height/2+120,100,150,100);
      rect(750, height/2+120,100,150,100);
    }
    if(val >= 115){
      rect(150, height/2+200,700,100);
    }
    if(val >= 125){
      stroke(#800020);
      strokeWeight(5);
      line(400,500,400,630);
    }
    if(val >= 135){
      line(600,500,600,630);
    }
}


void lamp(){
    //
    if(val >= 145){
      strokeWeight(10);
      stroke(0);
      line(70,310,70,770);
    }
    
    if(val >= 155){
    //Bottom part
      noStroke();
      fill(0);
      ellipse(71,770,100,20);
      rect(21,770,100,10);
      ellipse(71,780,100,20);
    }
    
    if(val >= 165){
    //line
      stroke(0);
      strokeWeight(2);
      line(90,280,90,390);
    }
    
    if(val >= 175){
    //TOP
    noStroke();
    fill(255);
    ellipse(70,200,50,10);
    quad(45,200,20,305,120,305,95,200);
    ellipse(70,305,100,20);
    }
    
    if(val >= 185){
    //decor
    fill(240,224,208);
    quad(45,200,20,300,95,200,120,300);
    }
}
void shelves(){
    if(val >= 195){
    //1st shelf
      strokeWeight(10);
      stroke(#8B4513);
      line(240,230,500,230);
    }
    if(val >= 205){
      line(255,230,255,250);
      line(485,230,485,250);
    }
}

void books(){
    if(val >= 215){
     //1st Shelf
     noStroke();
    }
    if(val >= 225){
     //1st book
     fill(#00BFFF);
     rect(260,155,20,70);
    }
    if(val >= 235){
     //2nd book
     fill(#556B2F);
     rect(280,155,20,70);
    }
    if(val >= 245){
     //3rd book
     fill(#FFC300);
     rect(300,155,20,70);
    }
    if(val >= 255){
     //4th book
     fill(#2F4F4F);
     rect(340,205,70,20);
    }
}
  

  
