// this function will control the flow of the ball
void ball() {
  int upper = p2PositionUpper();  // get the upper position of the player1
  int lower = p2PositionLower();  // get the lower position of the player1

  /* check if the ball is inline with the player1
  the position parameter will return false if the ball is inline*/
  boolean position1 = posY < upper || posY > lower;  
  
  /* if the ball is not inline and has X position
  less than player the game is over*/ 
  if (position1 == true && posX<14) {
      gameOver(); // restart the game
  }

  // else continue the game
  else{ 
      if (directionX && directionY) { // ball wants to go right ans down
      posX += speedX;                 // go to forward 
      posY += speedY;                 // go down
      if (posX > bounceXmax) {        //check for reverse bounce
        directionX = false;
        speedX = random(rnd1, rnd2);
      }

      if (posY >  bounceYmax) {       //check for lower bounce
        directionY = false;
        speedY = random(rnd1, rnd2);
      }
    }

    if (directionX && !directionY) {  // ball wants to go right and up
      posX += speedX;                 // go right
      posY -= speedY;                 // go up

      if (posX > bounceXmax) {        // check for reverse bounce
        directionX = false;           
        speedX = random(rnd1, rnd2);
      }

      if (posY < bounceYmin) {        // check for upper bounce
        directionY = true;
        speedY = random(rnd1, rnd2);
      }
    }

    if (!directionX && directionY) {  // ball wants to go left and down
      posX -= speedX;                 // go left
      posY += speedY;                 // go down

      if (posX < bounceXmin) {        // check for forward bounce
        directionX = true;
        speedX = random(rnd1, rnd2);
      }

      if (posY > bounceYmax) {        // check for lower bounce
        directionY = false;
        speedY = random(rnd1, rnd2);
      }
    }

    if (!directionX && !directionY) { // ball wants to go left and up
      posX -= speedX;                 // go left
      posY -= speedY;                 // fo up

      if (posX < bounceXmin) {        // check forward bounce
        directionX = true;
        speedX = random(rnd1, rnd2);
      }

      if (posY < bounceYmin) {        // check for lower bounce
        directionY = true;
        speedY = random(rnd1, rnd2);
      }
    }
  }
}

void gameOver() {                     // restart the game 
  println("game over");
  posX = width/2;
  posY = height/2;
  for (int i = 3; i > 0; i--) {       // start the timer
    print("game starts in " + i + "\n");
    delay(500);
  }
}
