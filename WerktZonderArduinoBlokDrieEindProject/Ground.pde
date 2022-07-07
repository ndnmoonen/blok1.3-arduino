class Ground {
  int groundPallette;
  color[][] palleteGround = { {#409980,#48ab8d,#59b5a0,#67bfb2,#82d1cd},
                           {#408699,#4897ab,#599cb5,#67a0bf,#82add1},
                           {#405399,#485fab,#5968b5,#676fbf,#8382d1},
                           {#624099,#6c48ab,#8159b5,#9567bf,#b482d1},
                           {#994083,#ab4894,#b55999,#bf679e,#d182a9},
                           {#994540,#ab4b48,#b56259,#bf7767,#d19982},
                           {#996840,#ab7348,#b58759,#bf9b67,#d1b882},
                           {#998f40,#ab9e48,#b5af59,#bebf67,#c8d182},
                           {#689940,#76ab48,#7eb559,#83bf67,#93d182} };
  
  
  Ground(){
    
  }
  
  void drawGround(int colorPlanet){
    groundPallette = colorPlanet;
    noStroke();
    
    fill(40,40,80);
    beginShape();
    vertex(0,407);
    vertex(50,402);
    vertex(200,397);
    vertex(600,397);
    vertex(750,402);
    vertex(800,407);
    vertex(800,500);
    vertex(0,500);
    endShape(CLOSE);   
    
    fill(palleteGround[groundPallette][0]);
    beginShape();
    vertex(0,410);
    vertex(50,405);
    vertex(200,400);
    vertex(600,400);
    vertex(750,405);
    vertex(800,410);
    vertex(800,500);
    vertex(0,500);
    endShape(CLOSE);
    
        fill(palleteGround[groundPallette][3]);
    //color 1 shape 1
    beginShape();
    vertex(10,340);
    vertex(25,320);
    vertex(35,340);
    vertex(40,380);
    vertex(60,390);
    vertex(10,430);
    endShape(CLOSE);
    //color 1 shape 2
    beginShape();
    vertex(200,400);
    vertex(200,380);
    vertex(220,375);
    vertex(240,360);
    vertex(250,370);
    vertex(260,375);
    vertex(260,380);
    vertex(240,400);
    endShape(CLOSE);
    //color 1 shape 3
    beginShape();
    vertex(520,400);
    vertex(520,390);
    vertex(545,375);
    vertex(540,350);
    vertex(550,360);
    vertex(570,370);
    vertex(570,420);
    vertex(560,405);
    vertex(550,410);
    vertex(550,425);
    endShape(CLOSE);
    //color 1 shape 4
    beginShape();
    vertex(670,380);
    vertex(690,350);
    vertex(700,380);
    endShape(CLOSE);
    
        fill(palleteGround[groundPallette][2]);
    //color 2 shape 1
    beginShape();
    vertex(70,405);
    vertex(100,390);
    vertex(115,385);
    vertex(120,365);
    vertex(125,360);
    vertex(125,320);
    vertex(145,300);
    vertex(150,330);
    vertex(170,340);
    vertex(175,360);
    vertex(240,380);
    vertex(245,405);
    vertex(180,420);
    vertex(140,430);
    vertex(150,415);
    vertex(140,405);
    vertex(105,415);
    vertex(110,430);
    endShape(CLOSE);
    //color 2 shape 2
    beginShape();
    vertex(330,400);
    vertex(350,370);
    vertex(370,380);
    vertex(380,370);
    vertex(390,360);
    vertex(410,355);
    vertex(420,345);
    vertex(450,340);
    vertex(440,360);
    vertex(455,375);
    vertex(465,380);
    vertex(470,390);
    vertex(480,390);
    vertex(510,380);
    vertex(540,410);
    vertex(550,425);
    vertex(560,440);
    vertex(520,420);
    vertex(510,420);
    vertex(470,440);
    vertex(460,450);
    vertex(465,430);
    vertex(450,410);
    vertex(410,430);
    vertex(395,460);
    vertex(380,425);
    endShape(CLOSE);
    //color 2 shape 3
    beginShape();
    vertex(565,330);
    vertex(590,320);
    vertex(590,290);
    vertex(620,300);
    vertex(618,340);
    vertex(630,345);
    vertex(630,375);
    vertex(650,370);
    vertex(690,365);
    vertex(695,380);
    vertex(710,370);
    vertex(730,380);
    vertex(730,400);
    vertex(685,450);
    vertex(690,420);
    vertex(680,410);
    vertex(670,410);
    vertex(660,420);
    vertex(630,440);
    vertex(640,420);
    vertex(620,410);
    vertex(590,430);
    vertex(600,460);
    vertex(570,425);
    endShape(CLOSE);
    
    fill(palleteGround[groundPallette][1]);
    //color 3 shape 1
    beginShape();
    vertex(0,320);
    vertex(30,365);
    vertex(35,385);
    vertex(80,395);
    vertex(90,405);
    vertex(110,430);
    vertex(80,415);
    vertex(30,430);
    vertex(20,470);
    vertex(0,420);
    endShape(CLOSE);
    //color 3 shape 2
    beginShape();
    vertex(80,460);
    vertex(160,420);
    vertex(190,415);
    vertex(260,380);
    vertex(260,360);
    vertex(280,340);
    vertex(300,350);
    vertex(305,370);
    vertex(320,380);
    vertex(325,390);
    vertex(380,395);
    vertex(390,410);
    vertex(400,470);
    vertex(380,440);
    vertex(350,420);
    vertex(345,440);
    vertex(330,470);
    vertex(330,440);
    vertex(270,430);
    vertex(220,450);
    vertex(200,460);
    vertex(170,480);
    vertex(180,455);
    vertex(210,435);
    vertex(170,440);
    vertex(160,440);
    endShape(CLOSE);
    //color 3 shape 3
    beginShape();
    vertex(800,320);
    vertex(770,360);
    vertex(740,375);
    vertex(735,385);
    vertex(720,390);
    vertex(710,410);
    vertex(670,470);
    vertex(740,430);
    vertex(770,440);
    vertex(780,480);
    vertex(800,430);
    endShape(CLOSE);
    
  }
}
