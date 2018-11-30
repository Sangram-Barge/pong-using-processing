// in direction of ball
// true means rigtht or down
// false means left or up

boolean directionX = true;  //horizontal direction of the ball
boolean directionY = true;  //vertical direction of the ball
int posX = 0; // position of ball on x palne
int posY = 0; // position of ball on y palne

float speedX;    //  the speed of ball
float speedY;   //      this speed is randomised later

int bounceXmin = 13;     //  these are the
int bounceXmax = 627;   //      minimum or maximum 
int bounceYmin = 10;   //           positions over which
int bounceYmax = 465; //                our ball should bounce



void setup() {
  size(640, 480);  // change the canvas if porting to android
  speedX = 5;
  speedY = 8;
}

void draw() {
  orientation(LANDSCAPE);  // this is needed while porting to android
  background(0);
  controlBall();
  controlP1();
  controlP2();   
}
