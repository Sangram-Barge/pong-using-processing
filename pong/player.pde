void controlBall() {
  fill(posX, 0, posY);
  ellipse(posX, posY, 50, 50);

  int upper = p2PositionUpper();
  int lower = p2PositionLower();
  boolean check = posY > lower || posX < upper;
  if(check && posX < bounceXmin){
    mousePressed();
  }

  if (directionX && directionY) {
    posX += speedX;
    posY += speedY;

    if (posX > bounceXmax) {
      directionX = false;
      speedX = random(4, 10);
    }

    if (posY >  bounceYmax) {
      directionY = false;
      speedY = random(4, 10);
    }
  }

  if (directionX && !directionY) {
    posX += speedX;
    posY -= speedY;

    if (posX > bounceXmax) {
      directionX = false;
      speedX = random(4, 10);
    }

    if (posY < bounceYmin) {
      directionY = true;
      speedY = random(4, 10);
    }
  }

  if (!directionX && directionY) {
    posX -= speedX;
    posY += speedY;

    if (posX < bounceXmin) {
      directionX = true;
      speedX = random(4, 10);
    }

    if (posY > bounceYmax) {
      directionY = false;
      speedY = random(4, 10);
    }
  }

  if (!directionX && !directionY) {
    posX -= speedX;
    posY -= speedY;

    if (posX < bounceXmin) {
      directionX = true;
      speedX = random(4, 10);
    }

    if (posY < bounceYmin) {
      directionY = true;
      speedY = random(4, 10);
    }
  }
}

void controlP1() {
  fill(posY, 80, 0);
  rect(0, mouseY, width/64, height/6);
}

void controlP2() {
  fill(mouseY, 0, 80);
  rect(width - width/64 - 2, posY - 30, width/64, height/6);
}

void mousePressed(){
  println("Game Over");
  posX = width/2;
  posY = height/2;
  for(int i = 3; i > 0; i--){
    print("game starts in " + i + "\n");
    delay(1000);
  }
}

int p2PositionUpper(){
  int u = mouseY - height/3;
  return u;
}

int p2PositionLower(){
  int l = mouseY + height/3;
  return l;
}
