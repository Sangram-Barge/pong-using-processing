void controlBall() {
  fill(posX, 0, posY);
  ellipse(posX, posY, 80, 80);
  ball();
}

void controlP1() {
  fill(posY, 80, 0);
  rect(0, mouseY, width/64, height/6);
}

void controlP2() {
  fill(mouseY, 0, 80);
  rect(width - width/64 - 2, posY - 30, width/64, height/6);
}

//void mousePressed(){
//  println("Restart");
//  posX = width/2;
//  posY = height/2;
//  for(int i = 3; i > 0; i--){
//    print("game starts in " + i + "\n");
//    delay(1000);
//  }
//}

int p2PositionUpper(){
  int u = mouseY-20;
  return u;
}

int p2PositionLower(){
  int l = mouseY + 20 + height/6;
  return l;
}
