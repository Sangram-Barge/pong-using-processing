Ball ball;  // create a ball object
Player1 P1; // create a P1 object
Player2 P2; // create a P2 object

/* there are two speeds normal speed and global speed
 normal speed is initialised at startup
 while global speed is kept throughout the game 
 if you want to change the speed the change global speed DO NOT change normal speed
 (if you change these speeds for any reason then put them back as they were before)*/
float speedX = 6; // normal speedX DO NOT change
float speedY = 8; // normal speedY DO NOT change

float globalSpeedX = 6;  // change this to change X speed
float globalSpeedY = 8;  // change this to change Y speed

float ballX;  // X position of ball
float ballY;  // Y position of ball

float P1Ymax = 0; // the upper position of player1
float P1Ymin = height/8; // the lower position of player1

void setup() {
  size(640, 480);
  ball = new Ball(); 
  P1 = new Player1();
  P2 = new Player2();
}

void draw() {
  background(0);
  ball.display(); //display the ball
  ball.move(); // move the ball
  ball.bounce(); //check for the bounce
  if (ball.collision()) { // if the ball collides to the surface then restart
    gameOver();
  }
  P1.display(); // display the player1
  P2.display(); // display the player2
}
