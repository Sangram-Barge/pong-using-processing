class Ball {
  float x, y;  // x and y are the positions of the ball

  Ball() {
    x = width/2; // start the ball at
    y = height/2; // middle of the canvas
  }
  void display() {
    fill(ballX, ballY, 72);
    ellipse(x, y, height/8, height/8);
  }

  void display(int tempX, int tempY) {
    x = tempX;
    y = tempY;
    fill(102, 56, 72);
    ellipse(x, y, 50, 50);
  }
  void bounce() {

    ballY = y; // pass the x value to ballY
    ballX = x; // pass the y value to ballX

    if (x > width || x < 0) { // if ball is going off the screen horizontally the bounce
      if (x > width) {
        speedX = random(globalSpeedX, globalSpeedY) * -1;
      } else {
        speedX = random(globalSpeedX, globalSpeedY) * 1;
      }
    }
    if (y > height || y < 0) { // if ball is going off the screen vertically the bounce
      if (y > height) {
        speedY = random(globalSpeedX, globalSpeedY) * -1;
      } else {
        speedY = random(globalSpeedX, globalSpeedY) * 1;
      }
    }
  }
  void move() {
    x += speedX;
    y += speedY;
  }

  boolean collision() {       // check for the collosion
    boolean Ypos = ballY < P1Ymin-10 || ballY > P1Ymax+10;
    boolean Xpos = ballX < 3;
    boolean coll = Xpos && Ypos;
    return coll;
  }
}

class Player1 {
  float y;

  Player1() {
  }
  void display() {
    y = mouseY;
    P1Ymin = y;
    P1Ymax = y+height/8;
    rect(0, y, width/64, height/6);
  }
}

class Player2 {
  Player2() {
  }

  void display() {
    rect(width - width/64, ballY - 25, width/64, height/6);
  }
}


void gameOver() {
  println("Game Over");
  for (int i=1; i<4; i++) {
    println("game starts in "+i);
    delay(500);
  }
  ball.display(width/2, height/2);
}
