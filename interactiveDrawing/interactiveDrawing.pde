/*
The Artist's Ghost by Sebastian Scaini
*/

void setup() {
  surface.setTitle("The Artist's Ghost");
  surface.setIcon(loadImage("Icon.png"));
  size(400, 400);
  rectMode(CORNERS);
  ellipseMode(CORNERS);
}

void draw() {

  frameRate(60);

  //WALL
  noStroke();
  fill(#725225);
  rect(0, 0, 400, 400);

  //FLOOR
  noStroke();
  fill(#322416);
  rect(0, 340, 400, 400);

  //WINDOW
  //background + frame
  stroke(#422702);
  strokeWeight(5);
  fill(#0064A1);
  rect(260, 100, 340, 180);

  //cross frame
  line(300, 100, 300, 180);
  line(260, 140, 340, 140);
  strokeWeight(1);

  //BOOKSHELF
  //frame
  stroke(0);
  fill(#723C0E);
  rect(0, 120, 100, 340);

  //shelves
  stroke(0);
  fill(#66360D);
  rect(0, 117, 100, 120);
  rect(0, 147, 100, 150);
  rect(0, 177, 100, 180);
  rect(0, 207, 100, 210);
  rect(0, 237, 100, 240);
  rect(0, 267, 100, 270);
  rect(0, 297 + mouseY/20, 100, 300 + mouseY/20);
  rect(0, 337, 100, 340);

  //books 1
  stroke(0);
  fill(#223D18);
  rect(10 + mouseX/10, 127, 20 + mouseX/10, 147);
  rect(20 + mouseX/10, 130, 30 + mouseX/10, 147);
  rect(30 + mouseX/10, 130, 40 + mouseX/10, 147);
  rect(50 + mouseX/10, 127, 60 + mouseX/10, 147);

  //books 2
  rect(100 - mouseX/15, 157, 90 - mouseX/15, 177);
  rect(90 - mouseX/15, 157, 80 - mouseX/15, 177);
  rect(70 - mouseX/15, 160, 60 - mouseX/15, 177);
  rect(60 - mouseX/15, 157, 50 - mouseX/15, 177);

  //books 3
  rect(50 + mouseX/25, 187, 60 + mouseX/25, 207);
  rect(60 + mouseX/25, 190, 70 + mouseX/25, 207);

  //books 4
  rect(0, 217 + mouseY/13, 10, 237 + mouseY/13);
  rect(10, 220 + mouseY/13, 20, 237 + mouseY/13);
  rect(30, 217 + mouseY/13, 40, 237 + mouseY/13);


  //PAINTING
  //frame + background
  stroke(#66360D);
  strokeWeight(4);
  fill(255 - mouseX/2, 255 - mouseX/2, 255 - mouseX/2);
  rect(200 + mouseX/5, 20 - mouseY/15, 260 + mouseX/5, 80 - mouseY/15);
  strokeWeight(1);

  //art
  stroke(0);
  strokeWeight(2);
  noFill();
  rect(210 + mouseX/5, 35 - mouseY/15, 250 + mouseX/5, 75 - mouseY/15);
  line(220 + mouseX/5, 45 - mouseY/15, 220 + mouseX/5, 60 - mouseY/15);
  line(240 + mouseX/5, 45 - mouseY/15, 240 + mouseX/5, 60 - mouseY/15);
  strokeWeight(1);


  //CLOCK
  //face
  stroke(0);
  strokeWeight(2);
  fill(255);
  ellipse(140 - mouseX/15, 80 + mouseY/15, 240 - mouseX/15, 180 + mouseY/15);
  strokeWeight(0);

  //short hand
  stroke(0);
  strokeWeight(1.5);
  line(190 - mouseX/5, 100 + mouseY/5, 190 - mouseX/15, 130 + mouseY/15);

  //long hand
  line(190 - mouseX/-50, 100 - mouseY/-50, 190 - mouseX/15, 130 + mouseY/15);


  //EASEL
  //top
  stroke(0);
  fill(#A58B68);
  rect(85, 208, 95, 220);

  //left leg
  quad(40, 320, 50, 320, 45, 350, 35, 350);

  //right leg
  quad(130, 320, 140, 320, 145, 350, 135, 350);


  //CANVAS
  stroke(0);
  fill(255);
  rect(40, 220, 140, 320);


  //PAGE 1
  stroke(0);
  fill(255);
  rect(20 + mouseX/50, 50 + mouseY/50, 50 + mouseX/50, 90 + mouseY/50);
  line(25 + mouseX/50, 60 + mouseY/50, 45 + mouseX/50, 60 + mouseY/50);
  line(25 + mouseX/50, 70 + mouseY/50, 45 + mouseX/50, 70 + mouseY/50);
  line(25 + mouseX/50, 80 + mouseY/50, 45 + mouseX/50, 80 + mouseY/50);

  //PAGE 2
  stroke(0);
  fill(255);
  quad(80 - mouseX/10, 40 + mouseY/10, 100 - mouseX/10, 20 + mouseY/10, 130 - mouseX/10, 50 + mouseY/10, 110 - mouseX/10, 70 + mouseY/10);


  //PAINTBRUSH 1
  //paint
  stroke(0);
  fill(#FF0000);
  triangle(50 + mouseX/5, 230 + mouseY/5, 55 + mouseX/5, 225 + mouseY/5, 45 + mouseX/5, 220 + mouseY/5);

  //brush
  fill(#A58B68);
  ellipse(50 + mouseX/5, 225 + mouseY/5, 60 + mouseX/5, 235 + mouseY/5);

  //handle
  fill(#E5C291);
  quad(60 + mouseX/5, 230 + mouseY/5, 80 + mouseX/5, 260 + mouseY/5, 75 + mouseX/5, 265 + mouseY/5, 55 + mouseX/5, 235 + mouseY/5);


  //PAINTBRUSH 2
  //paint
  stroke(0);
  fill(#FF0000);
  triangle(180 + mouseX/7, 20 + mouseY/7, 175 + mouseX/7, 30 + mouseY/7, 170 + mouseX/7, 25 + mouseY/7);

  //brush
  fill(#A58B68);
  ellipse(165 + mouseX/7, 25 + mouseY/7, 175 + mouseX/7, 35 + mouseY/7); 

  //handle
  fill(#E5C291);
  quad(165 + mouseX/7, 30 + mouseY/7, 170 + mouseX/7, 35 + mouseY/7, 160 + mouseX/7, 55 + mouseY/7, 155 + mouseX/7, 50 + mouseY/7);


  //PAINTBRUSH 3
  //paint
  stroke(0);
  fill(#FF0000);
  triangle(360 - mouseX/4, 285 - mouseY/4, 370 - mouseX/4, 280 - mouseY/4, 365 - mouseX/4, 290 - mouseY/4);

  //brush
  fill(#A58B68);
  ellipse(355 - mouseX/4, 285 - mouseY/4, 365 - mouseX/4, 295 - mouseY/4);

  //handle
  fill(#E5C291);
  quad(355 - mouseX/4, 290 - mouseY/4, 360 - mouseX/4, 295 - mouseY/4, 350 - mouseX/4, 320 - mouseY/4, 345 - mouseX/4, 315 - mouseY/4);


  //ARTIST GHOST
  //body
  stroke(0);
  fill(255);
  rect(160, 220 - mouseY/6, 220, 320 - mouseY/6);

  //moustache
  stroke(0);
  strokeWeight(1.5);
  line(187.5, 267.5 - mouseY/6, 175, 270 - mouseY/6);
  line(192.5, 267.5 - mouseY/6, 205, 270 - mouseY/6);
  strokeWeight(1);

  //scarf
  stroke(0);
  fill(#FF0000);
  rect(160, 280 - mouseY/6, 220, 290 - mouseY/6);
  quad(220, 280 - mouseY/6, 235, 300 - mouseY/6, 225, 300 - mouseY/6, 220, 290 - mouseY/6);

  //stripes
  stroke(0);
  strokeWeight(2);
  line(160, 295 - mouseY/6, 220, 295 - mouseY/6);
  line(160, 305 - mouseY/6, 220, 305 - mouseY/6);
  line(160, 315 - mouseY/6, 220, 315 - mouseY/6);
  strokeWeight(1);

  //eyes
  stroke(0);
  strokeWeight(1.5);
  line(180, 240 - mouseY/6, 180, 260 - mouseY/6);
  line(200, 240 - mouseY/6, 200, 260 - mouseY/6);
  strokeWeight(1);

  //hat
  stroke(0);
  fill(0);
  ellipse(155, 210 - mouseY/6, 225, 235 - mouseY/6);
  rect(205, 205 - mouseY/6, 210, 220 - mouseY/6);
}

void keyPressed() {

  //SCREAM
  println("AAAAAAAAAAAAH!");

  //BLACKOUT
  noStroke();
  fill(0);
  rect(0, 0, 400, 400);

  //STOP
  frameRate(0);
}

void mousePressed() {
  //PREPARE TO BE SPOOKED!
  
  //SLOW
  frameRate(1);

  //WALL
  noStroke();
  fill(#725225);
  rect(0, 0, 400, 400);

  //FLOOR
  noStroke();
  fill(#322416);
  rect(0, 340, 400, 400);

  //TEXT (Walls)
  stroke(#6E0805);
  strokeWeight(4);

  //"HE'S HERE"
  //h
  line(100, 10, 100, 30);
  line(100, 20, 115, 20);
  line(115, 10, 115, 30);

  //e
  line(125, 10, 125, 30);
  line(125, 10, 135, 10);
  line(125, 20, 135, 20);
  line(125, 30, 135, 30);

  //'
  line(145, 10, 145, 15);

  //s
  line(155, 10, 165, 10);
  line(155, 10, 155, 20);
  line(155, 20, 165, 20);
  line(165, 20, 165, 30);
  line(165, 30, 155, 30);

  //h2
  line(110, 50, 110, 70);
  line(110, 60, 125, 60);
  line(125, 50, 125, 70);

  //e2
  line(135, 50, 135, 70);
  line(135, 50, 145, 50);
  line(135, 60, 145, 60);
  line(135, 70, 145, 70);

  //r
  line(155, 50, 155, 70);
  line(155, 50, 165, 50);
  line(165, 50, 165, 60);
  line(155, 60, 165, 60);
  line(155, 60, 165, 70);

  //e3
  line(175, 50, 175, 70);
  line(175, 50, 185, 50);
  line(175, 60, 185, 60);
  line(175, 70, 185, 70);
  
  
  //"HE'S COMING"
  
  //h
  line(280, 220, 280, 240);
  line(280, 230, 295, 230);
  line(295, 220, 295, 240);
  
  //e
  line(310, 220, 310, 240);
  line(310, 220, 320, 220);
  line(310, 230, 320, 230);
  line(310, 240, 320, 240);
  
  //'
  line(330, 220, 330, 225);
  
  //s
  line(340, 220, 350, 220);
  line(340, 220, 340, 230);
  line(340, 230, 350, 230);
  line(350, 230, 350, 240);
  line(350, 240, 340, 240);
  
  //c
  line(250, 280, 265, 280);
  line(250, 280, 250, 300);
  line(250, 300, 265, 300);
  
  //o
  noFill();
  ellipse(270, 280, 290, 300);
  
  //m
  line(300, 280, 300, 300);
  line(300, 280, 310, 290);
  line(310, 290, 320, 280);
  line(320, 280, 320, 300);
  
  //i
  line(330, 280, 330, 300);
  
  //n
  line(340, 280, 340, 300);
  line(340, 280, 350, 300);
  line(350, 300, 350, 280);
  
  //g
  line(360, 280, 360, 300);
  line(360, 280, 370, 280);
  line(360, 290, 370, 290);
  line(370, 290, 370, 300);
  line(360, 300, 370, 300);

  strokeWeight(1);

  //WINDOW
  //background + frame
  stroke(#422702);
  strokeWeight(5);
  fill(#6E0805);
  rect(260, 100, 340, 180);
  
  //FIGURE
  //body
  fill(0);
  noStroke();
  rect(270, 110, 330, 180);
  
  //eyes
  fill(255, 0, 0);
  noStroke();
  rect(280, 130, 290, 160);
  rect(320, 130, 310, 160);

  //cross frame
  stroke(#422702);
  strokeWeight(5);
  fill(#6E0805);
  line(300, 100, 300, 180);
  line(260, 140, 340, 140);
  strokeWeight(1);

  //BOOKSHELF
  //frame
  stroke(0);
  fill(#723C0E);
  rect(0, 120, 100, 340);

  //shelves
  stroke(0);
  fill(#66360D);
  rect(0, 117, 100, 120);
  rect(0, 147, 100, 150);
  rect(0, 177, 100, 180);
  rect(0, 207, 100, 210);
  rect(0, 237, 100, 240);
  rect(0, 267, 100, 270);
  rect(0, 297 + mouseY/20, 100, 300 + mouseY/20);
  rect(0, 337, 100, 340);

  //books 1
  stroke(0);
  fill(#223D18);
  rect(10 + mouseX/10, 127, 20 + mouseX/10, 147);
  rect(20 + mouseX/10, 130, 30 + mouseX/10, 147);
  rect(30 + mouseX/10, 130, 40 + mouseX/10, 147);
  rect(50 + mouseX/10, 127, 60 + mouseX/10, 147);

  //books 2
  rect(100 - mouseX/15, 157, 90 - mouseX/15, 177);
  rect(90 - mouseX/15, 157, 80 - mouseX/15, 177);
  rect(70 - mouseX/15, 160, 60 - mouseX/15, 177);
  rect(60 - mouseX/15, 157, 50 - mouseX/15, 177);

  //books 3
  rect(50 + mouseX/25, 187, 60 + mouseX/25, 207);
  rect(60 + mouseX/25, 190, 70 + mouseX/25, 207);

  //books 4
  rect(0, 217 + mouseY/13, 10, 237 + mouseY/13);
  rect(10, 220 + mouseY/13, 20, 237 + mouseY/13);
  rect(30, 217 + mouseY/13, 40, 237 + mouseY/13);


  //PAINTING
  //frame + background
  stroke(#66360D);
  strokeWeight(4);
  fill(255 - mouseX/2, 255 - mouseX/2, 255 - mouseX/2);
  rect(200 + mouseX/5, 20 - mouseY/15, 260 + mouseX/5, 80 - mouseY/15);
  strokeWeight(1);

  //art
  stroke(0);
  strokeWeight(2);
  noFill();
  rect(210 + mouseX/5, 35 - mouseY/15, 250 + mouseX/5, 75 - mouseY/15);
  line(220 + mouseX/5, 45 - mouseY/15, 220 + mouseX/5, 60 - mouseY/15);
  line(240 + mouseX/5, 45 - mouseY/15, 240 + mouseX/5, 60 - mouseY/15);
  strokeWeight(1);


  //CLOCK
  //face
  stroke(0);
  strokeWeight(2);
  fill(255);
  ellipse(140 - mouseX/15, 80 + mouseY/15, 240 - mouseX/15, 180 + mouseY/15);
  strokeWeight(0);

  //short hand
  stroke(0);
  strokeWeight(1.5);
  line(190 - mouseX/5, 100 + mouseY/5, 190 - mouseX/15, 130 + mouseY/15);

  //long hand
  line(190 - mouseX/-50, 100 - mouseY/-50, 190 - mouseX/15, 130 + mouseY/15);


  //EASEL
  //top
  stroke(0);
  fill(#A58B68);
  rect(85, 208, 95, 220);

  //left leg
  quad(40, 320, 50, 320, 45, 350, 35, 350);

  //right leg
  quad(130, 320, 140, 320, 145, 350, 135, 350);


  //CANVAS
  stroke(0);
  fill(255);
  rect(40, 220, 140, 320);


  //TEXT (CANVAS)

  // "HELP ME"
  stroke(#6E0805);
  strokeWeight(4);
  
  //h
  line(50, 230, 50, 250);
  line(50, 240, 60, 240);
  line(60, 230, 60, 250);
  
  //e
  line(70, 230, 70, 250);
  line(70, 230, 80, 230);
  line(70, 240, 80, 240);
  line(70, 250, 80, 250);
  
  //l
  line(90, 230, 90, 250);
  line(90, 250, 100, 250);
  
  //p
  line(110, 230, 110, 250);
  line(110, 230, 120, 230);
  line(110, 240, 120, 240);
  line(120, 230, 120, 240);
  
  //m
  line(60, 260, 60, 300);
  line(60, 260, 75, 280);
  line(75, 280, 90, 260);
  line(90, 260, 90, 300);
  
  //e2
  line(100, 260, 100, 300);
  line(100, 260, 120, 260);
  line(100, 280, 120, 280);
  line(100, 300, 120, 300);
  
  strokeWeight(1);
  

  //PAGE 1
  stroke(0);
  fill(255);
  rect(20 + mouseX/50, 50 + mouseY/50, 50 + mouseX/50, 90 + mouseY/50);
  line(25 + mouseX/50, 60 + mouseY/50, 45 + mouseX/50, 60 + mouseY/50);
  line(25 + mouseX/50, 70 + mouseY/50, 45 + mouseX/50, 70 + mouseY/50);
  line(25 + mouseX/50, 80 + mouseY/50, 45 + mouseX/50, 80 + mouseY/50);

  //PAGE 2
  stroke(0);
  fill(255);
  quad(80 - mouseX/10, 40 + mouseY/10, 100 - mouseX/10, 20 + mouseY/10, 130 - mouseX/10, 50 + mouseY/10, 110 - mouseX/10, 70 + mouseY/10);


  //PAINTBRUSH 1
  //paint
  stroke(0);
  fill(#FF0000);
  triangle(50 + mouseX/5, 230 + mouseY/5, 55 + mouseX/5, 225 + mouseY/5, 45 + mouseX/5, 220 + mouseY/5);

  //brush
  fill(#A58B68);
  ellipse(50 + mouseX/5, 225 + mouseY/5, 60 + mouseX/5, 235 + mouseY/5);

  //handle
  fill(#E5C291);
  quad(60 + mouseX/5, 230 + mouseY/5, 80 + mouseX/5, 260 + mouseY/5, 75 + mouseX/5, 265 + mouseY/5, 55 + mouseX/5, 235 + mouseY/5);


  //PAINTBRUSH 2
  //paint
  stroke(0);
  fill(#FF0000);
  triangle(180 + mouseX/7, 20 + mouseY/7, 175 + mouseX/7, 30 + mouseY/7, 170 + mouseX/7, 25 + mouseY/7);

  //brush
  fill(#A58B68);
  ellipse(165 + mouseX/7, 25 + mouseY/7, 175 + mouseX/7, 35 + mouseY/7); 

  //handle
  fill(#E5C291);
  quad(165 + mouseX/7, 30 + mouseY/7, 170 + mouseX/7, 35 + mouseY/7, 160 + mouseX/7, 55 + mouseY/7, 155 + mouseX/7, 50 + mouseY/7);


  //PAINTBRUSH 3
  //paint
  stroke(0);
  fill(#FF0000);
  triangle(360 - mouseX/4, 285 - mouseY/4, 370 - mouseX/4, 280 - mouseY/4, 365 - mouseX/4, 290 - mouseY/4);

  //brush
  fill(#A58B68);
  ellipse(355 - mouseX/4, 285 - mouseY/4, 365 - mouseX/4, 295 - mouseY/4);

  //handle
  fill(#E5C291);
  quad(355 - mouseX/4, 290 - mouseY/4, 360 - mouseX/4, 295 - mouseY/4, 350 - mouseX/4, 320 - mouseY/4, 345 - mouseX/4, 315 - mouseY/4);


  //ARTIST GHOST
  //body
  stroke(0);
  fill(255);
  rect(160, 220 - mouseY/6, 220, 320 - mouseY/6);

  //moustache
  stroke(0);
  strokeWeight(1.5);
  line(187.5, 267.5 - mouseY/6, 175, 270 - mouseY/6);
  line(192.5, 267.5 - mouseY/6, 205, 270 - mouseY/6);
  strokeWeight(1);

  //scarf
  stroke(0);
  fill(#FF0000);
  rect(160, 280 - mouseY/6, 220, 290 - mouseY/6);
  quad(220, 280 - mouseY/6, 235, 300 - mouseY/6, 225, 300 - mouseY/6, 220, 290 - mouseY/6);

  //stripes
  stroke(0);
  strokeWeight(2);
  line(160, 295 - mouseY/6, 220, 295 - mouseY/6);
  line(160, 305 - mouseY/6, 220, 305 - mouseY/6);
  line(160, 315 - mouseY/6, 220, 315 - mouseY/6);
  strokeWeight(1);

  //eyes
  stroke(0);
  strokeWeight(1.5);
  line(180, 240 - mouseY/6, 180, 260 - mouseY/6);
  line(200, 240 - mouseY/6, 200, 260 - mouseY/6);
  strokeWeight(1);

  //hat
  stroke(0);
  fill(0);
  ellipse(155, 210 - mouseY/6, 225, 235 - mouseY/6);
  rect(205, 205 - mouseY/6, 210, 220 - mouseY/6);
  
  println("Press any key.");
}
