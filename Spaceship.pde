class Spaceship extends Floater {
  public Spaceship() {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = 255;
    myCenterX = 200;
    myCenterY = 200;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

  public void Hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random() * 500);
    myCenterY = (int)(Math.random() * 500);
    myPointDirection = (int)(Math.random() * 360);
  }
  public double getXs() {
    return myCenterX;
  }
  public double getYs() {
    return myCenterY;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
  public double getmyXspeed() {
    return myXspeed;
  }
  public double getmyYspeed() {
    return myYspeed;
  }
}
