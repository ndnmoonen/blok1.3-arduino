class Space {
  int spacePallette;
  color[][] palleteSpace = { {#18112a,#1d1638,#2d163e,#181742,#35174b,#181c54,#4a185d,#1a236a,#5c1a74,#1b287d},
                            {#6b2258,#521f46,#380025,#1b0129,#220138,#2a0245,#2c064a,#310554,#37075e,#450973},
                            {#222a6b,#1f2652,#000238,#011d29,#012b38,#023545,#063c4a,#054654,#074e5e,#095e73},
                            {#09131d,#0d1b2a,#0e2730,#0e3236,#0e3e3c,#0e4941,#0f5547,#0f604c,#0f6b52,#0f7657},
                            {#09091c,#0d0d29,#0e1230,#0e1536,#0e193d,#0e1e4a,#0f2354,#102961,#0f2d6b,#0f3175} };
  
  Space(){
    
  }
  
  void drawSpace(int colorSpace){
    spacePallette = colorSpace;
    noStroke();

    for(int u=0; u<40; u=u+1){
      for(int r=0; r<66; r=r+1){
        fill(palleteSpace[spacePallette][floor(random(0,9))]); //make color pallets
        ellipse(0+(12.5*r), 12+(12.5*u), 5, 5);
        
      }
    }
  }

}
