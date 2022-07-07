class Planet {
  float ringSize;
  int planetPallette;
  color[][] palletePlanet = { {#34856e,#409980,#48ab8d,#59b5a0,#67bfb2,#73c7bf,#82d1cd},
                            {#347385,#408699,#4897ab,#599cb5,#67a0bf,#73a5c7,#82add1},
                            {#344585,#405399,#485fab,#5968b5,#676fbf,#7376c7,#8382d1},
                            {#543485,#624099,#6c48ab,#8159b5,#9567bf,#a373c7,#b482d1},
                            {#85346f,#994083,#ab4894,#b55999,#bf679e,#c773a3,#d182a9},
                            {#853934,#994540,#ab4b48,#b56259,#bf7767,#c78773,#d19982},
                            {#855934,#996840,#ab7348,#b58759,#bf9b67,#c7a873,#d1b882},
                            {#857b34,#998f40,#ab9e48,#b5af59,#bebf67,#c1c773,#c8d182},
                            {#588534,#689940,#76ab48,#7eb559,#83bf67,#8ac773,#93d182} };
  
  Planet(){

  }
  
  void drawPlanet(int colorPlanet,float ringAmount){
    planetPallette = colorPlanet;
    ringSize = ringAmount;
    frameRate(2);
    noStroke();
    //planet base
    fill(0);
    ellipse(400,200,250,250);
    
    int[] randoms = new int[floor(ringSize)];
    for (int i = 0; i < randoms.length; i++) {
      randoms[i] = floor(random(0,6));
    }
    
    //circles
    for (int i = 0; i < (5*ringSize); i = i+1) {
      fill(palletePlanet[planetPallette][floor(random(0,6))]);
      ellipse(400,200,250-(i*(50/ringSize)),250-(i*(50/ringSize)));
    }
    
    
    //outline
    noFill();
    stroke(40,40,80);
    strokeWeight(3);
    ellipse(400,200,250,250);
    

  }
}
