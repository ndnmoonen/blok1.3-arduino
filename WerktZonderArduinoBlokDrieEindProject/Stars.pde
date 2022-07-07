class Stars {
  int starPallette;
  int x;
  int y;
  color[] palleteStar = {#82d1cd,#82add1,#8382d1,#b482d1,#d182a9,#d19982,#d1b882,#c8d182,#93d182};
  
  Stars(){
    
  }
  
  void drawStars(int colorPlanet, int starX, int starY){
    starPallette = colorPlanet;
    x = starX;
    y = starY;
      noStroke();
    
      //star
      pushMatrix();
      translate(x,y);
      fill(palleteStar[starPallette]);
      beginShape();
      vertex(0, 0);
      vertex(14, 13);
      vertex(15, 5);
      vertex(16, 13);
      vertex(30, 0);
      vertex(17, 14);
      vertex(24, 15);
      vertex(17, 16);
      vertex(30,30);
      vertex(16,17);
      vertex(15,24);
      vertex(14,17);
      vertex(0,30);
      vertex(13,16);
      vertex(5,15);
      vertex(13,14);
      endShape(CLOSE);
      popMatrix();   

  }
}
