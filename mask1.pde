int displayWidth=800, displayHeight=800;

float MAX_VELOCITY = 10;

float bgColor = 255;

float gravity = 0.5;
float ballX, ballY;
float ballVx = 1, ballVy = 1;
float ballRadius = 10;
color ballColor = color(100, 180, 70, 160);

float restitutionCoeff = 0.95;

char UP = 'w', LEFT = 'a', RIGHT = 'd';
boolean up, left, right;

boolean keys[] = new boolean [4];

void setup() {
  size(displayWidth, displayHeight);
  ballX=displayWidth/2;
  ballY=displayHeight/2;
  ballVx = 1;
  ballVy = 0;
}

void draw() {
  background(bgColor);
  detectKeys();
  drawBall();
  updateBallVelocity();
  updateBallPosition();
  resolveCollisions();
}

void drawBall() {
  fill(ballColor);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
}