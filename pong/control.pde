void ball() {
  int upper = p2PositionUpper();
  int lower = p2PositionLower();
  boolean position1 = posY < upper || posY > lower;
  println(position1 + "1");

  if (position1 == true && posX<14) {
      gameOver();
  }

  else{ 
      if (directionX && directionY) {
      posX += speedX;
      posY += speedY;

      if (posX > bounceXmax) {
        directionX = false;
        speedX = random(rnd1, rnd2);
      }

      if (posY >  bounceYmax) {
        directionY = false;
        speedY = random(rnd1, rnd2);
      }
    }

    if (directionX && !directionY) {
      posX += speedX;
      posY -= speedY;

      if (posX > bounceXmax) {
        directionX = false;
        speedX = random(rnd1, rnd2);
      }

      if (posY < bounceYmin) {
        directionY = true;
        speedY = random(rnd1, rnd2);
      }
    }

    if (!directionX && directionY) {
      posX -= speedX;
      posY += speedY;

      if (posX < bounceXmin) {
        directionX = true;
        speedX = random(rnd1, rnd2);
      }

      if (posY > bounceYmax) {
        directionY = false;
        speedY = random(rnd1, rnd2);
      }
    }

    if (!directionX && !directionY) {
      posX -= speedX;
      posY -= speedY;

      if (posX < bounceXmin) {
        directionX = true;
        speedX = random(rnd1, rnd2);
      }

      if (posY < bounceYmin) {
        directionY = true;
        speedY = random(rnd1, rnd2);
      }
    }
  }
}

void gameOver() {
  println("game over");
  posX = width/2;
  posY = height/2;
  for (int i = 3; i > 0; i--) {
    print("game starts in " + i + "\n");
    delay(1000);
  }
}
