//import processing.serial.*;
//import cc.arduino.*;

//Arduino arduino;

Space spaceBack;
Planet planetMain;
Ground groundFront;
Stars[] starsBack = new Stars[17];

//arduino buttons
int colorSpace = 0;
int colorPlanet = 0;
int colorGround = 0;
int ring2 = 1;
 
void setup() {
  size(800,500);
  background(0,0,40);
  rectMode(CENTER);
  
  //arduino = new Arduino(this, Arduino.list()[0], 57600);
  
  //arduino.pinMode(8, Arduino.INPUT); // set pin 8 van output naar input
  //arduino.pinMode(9, Arduino.INPUT); // set pin 9 van output naar input
  //arduino.pinMode(10, Arduino.INPUT); // set pin 10 van output naar input
    
    //sterren
  int[] positionX = {20,60,100,50,270,150,200,180,400,500,530,630,700,600,650,750,720};
  int[] positionY = {20,150,250,350,40,70,320,190,10,340,80,30,100,180,290,230,330};
  
    
  //objects
  spaceBack = new Space();
  planetMain = new Planet();
  groundFront = new Ground();
  for (int i = 0; i < starsBack.length; i++) {
    starsBack[i] = new Stars(positionX[i],positionY[i]);
  }
  
}

void draw() {
   
  //arduino draaiknop oude versie Nu druk je op 4
  //int draai = arduino.analogRead(0);
  //float ringAmount = map(draai,1023,0,0,10);
  

  
  spaceBack.drawSpace(colorSpace);
  planetMain.drawPlanet(colorPlanet,ring2); //eerst ringAmount
  groundFront.drawGround(colorGround);
  for (int i = 0; i < starsBack.length; i++) {
    starsBack[i].drawStars(colorPlanet);
  }

}

void keyPressed () {
  //non-arduino buttons
  
  if (key == '1' || key == '!') {
      if (colorSpace <= 3){
        colorSpace = colorSpace + 1;
      } else {
        colorSpace = colorSpace -4;
        }
  }
  
  if(key == '2' || key == '@'){
      if (colorPlanet <= 7){
        colorPlanet = colorPlanet + 1;
      } else {
        colorPlanet = colorPlanet -8;
        }
  }
  
  if(key == '3' || key == '#'){
      if (colorGround <= 7){
        colorGround = colorGround + 1;
      } else {
        colorGround = colorGround -8;
        }
  }
  
  //draai knop druk 4
  if(key == '4' || key == '$'){
      if (ring2 <= 9){
        ring2 = ring2 + 1;
          //print(ring2);
      } else {
        ring2 = ring2 -9;
          //print(ring2);
        }
      }
 
}
