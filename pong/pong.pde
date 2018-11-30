// in direction of ball
// true means rigtht or down
// false means left or up

boolean directionX = true;  //horizontal direction of the ball
boolean directionY = true;  //vertical direction of the ball
int posX = 100; // position of ball on x palne
int posY = 100; // position of ball on y palne

float speedX;    //  the speed of ball
float speedY;   //      this speed is randomised later

int bounceXmin = 13;     //  these are the
int bounceXmax = 640 - 13;   //      minimum or maximum 
int bounceYmin = 10;   //           positions over which
int bounceYmax = 480 - 10; //                our ball should bounce

int rnd1 = 6;  // randomise the speed form
int rnd2 = 12;//  randomise the speed to



void setup() {
  size(640, 480);  // change the canvas if porting to android
  speedX = 5;     // set the hprizontal speed
  speedY = 8;    // set the vertical speed
}

void draw() {
  orientation(LANDSCAPE);  // this is needed while porting to android
  background(0); // black background
  controlBall(); // to control the ball
  controlP1();   // draw and create the player 1
  controlP2();   // draw and create the player 2
}
