class Star //note that this class does NOT extend Floater
{
  int myX, myY, myColor;
  Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  public void show(){
    fill(myColor);
    stroke(myColor);
    ellipse(myX, myY, 5, 5);
    //on the 400x400 pixel scale, ellipses just turn to squares. could bump res up ig
  }
}
