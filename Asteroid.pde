class Asteroid extends Floater {
  int degreesRot = ((int)(Math.random() * 7)); 
  public Asteroid() {
    corners = 4;
    xCorners = new int [] {-20, -10, 10, 10};
    yCorners = new int [] {-10, 10, 5, 5};
    myColor = 255;
    myCenterX = ((int)(Math.random() * 400));
    myCenterY = ((int)(Math.random() * 400));
    myXspeed = ((double)(Math.random()*1));
    myYspeed = ((double)(Math.random()*1));
    myPointDirection = ((int)(Math.random() * 359));
  }
  public void move() {
    myPointDirection+=degreesRot;
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
    super.move();
  }
  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
}
