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
int bounceXmax = 1903;   //      minimum or maximum 
int bounceYmin = 10;   //           positions over which
int bounceYmax = 1070; //                our ball should bounce

int rnd1 = 6;
int rnd2 = 12;



void setup() {
  size(1920, 1080);  // change the canvas if porting to android
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
