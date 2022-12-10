class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getXs();
    myCenterY = theShip.getYs();
    myXspeed = theShip.getmyXspeed();
    myYspeed = theShip.getmyYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(5.0);
  }
  public void move ()
  {      
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
  public void show() {
    fill(212);
    color(212, 175, 55);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
    public double getXs() {
    return myCenterX;
  }
  public double getYs() {
    return myCenterY;
  }
}
