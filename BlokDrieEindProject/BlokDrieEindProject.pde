import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

Space spaceBack;
Planet planetMain;
Ground groundFront;
Stars starsBack;

//arduino buttons
int colorSpace = 0;
int colorPlanet = 0;
int colorGround = 0;
 
void setup() {
  size(800,500);
  background(0,0,40);
  rectMode(CENTER);
  
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  
  arduino.pinMode(8, Arduino.INPUT); // set pin 8 van output naar input
  arduino.pinMode(9, Arduino.INPUT); // set pin 8 van output naar input
  arduino.pinMode(10, Arduino.INPUT); // set pin 8 van output naar input
    
  //objects
  spaceBack = new Space();
  planetMain = new Planet();
  groundFront = new Ground();
  starsBack = new Stars();
  
}

void draw() {
  
  //arduino buttons
  if( arduino.digitalRead(10) == arduino.HIGH){
      if (colorSpace <= 3){
        colorSpace = colorSpace + 1;
      } else {
        colorSpace = colorSpace -4;
        }
  }
  
  if( arduino.digitalRead(9) == arduino.HIGH){
      if (colorPlanet <= 7){
        colorPlanet = colorPlanet + 1;
      } else {
        colorPlanet = colorPlanet -8;
        }
  }
  
  if( arduino.digitalRead(8) == arduino.HIGH){
      if (colorGround <= 7){
        colorGround = colorGround + 1;
      } else {
        colorGround = colorGround -8;
        }
  }
  
  //arduino draaiknop
  int draai = arduino.analogRead(0);
  float ringAmount = map(draai,1023,0,0,10);
  int[] positionX = {20,60,100,50,270,150,200,180,400,500,530,630,700,600,650,750,720};
  int[] positionY = {20,150,250,350,40,70,320,190,10,340,80,30,100,180,290,230,330};

  
  spaceBack.drawSpace(colorSpace);
  planetMain.drawPlanet(colorPlanet,ringAmount);
  groundFront.drawGround(colorGround);
  for (int i = 0; i < 16; i++) {
    starsBack.drawStars(colorPlanet,positionX[i],positionY[i]);
  }

}
