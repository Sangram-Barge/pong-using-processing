void controlBall() {
  fill(posX, 0, posY); // color of the ball
  ellipse(posX, posY, 80, 80); // draw the ball
  ball(); // control the ball (written the different function so that I dont drive myself crazy)
}

void controlP1() {
  fill(posY, 80, 0); // color of the player 1
  rect(0, mouseY, width/64, height/6); // draw and control position the player 1
}

void controlP2() {
  fill(mouseY, 0, 80); // color of the player 2
  rect(width - width/64 - 2, posY - 30, width/64, height/6); // draw and control the player 2
}

/* the following function is to reset the game

void mousePressed(){
 println("Restart");
 posX = width/2;
 posY = height/2;
 for(int i = 3; i > 0; i--){
   print("game starts in " + i + "\n");
   delay(1000);
 }
}

uncomment this if you want to use the function */
// this returns the upper position of the player1
int p2PositionUpper(){
  int u = mouseY-20;
  return u;
}

// this returns the lower position of the player1
int p2PositionLower(){
  int l = mouseY + 20 + height/6;
  return l;
}
