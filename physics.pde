void updateBallVelocity() {
  ballVy += gravity;
  // Add control for movement keys here
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void resolveCollisions() {
  // Resolving Collisions with floor (bottom wall).
  if (ballY > displayHeight-ballRadius){
    ballY = displayHeight-ballRadius;
    ballVy *= -restitutionCoeff;
  }
  // Resolve Collisions with left walls.
if(ballX> displayWidth-ballRadius)
{
  ballX =displayWidth- ballRadius;
  ballVx *= -restitutionCoeff;
}

// Resolve Collisions with right walls.
if(-ballX> displayWidth-ballRadius)
{
  ballX =displayWidth- ballRadius;
  ballVx *= -restitutionCoeff;
}
}


// Resolve Collisions with top walls.
//}



//