//now with way too many asteroids!
ArrayList <Asteroid> grob = new ArrayList <Asteroid>();
Spaceship womp = new Spaceship();
Star[] blah = new Star[50];
public void setup() 
{
  size(400,400);
  for(int i = 0; i < blah.length; i++) {
    blah[i] = new Star();
  }
  for(int i = 0; i < 20; i++) {
    grob.add(0, new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < blah.length; i++) {
    blah[i].show();
  }
  color(255,255,255);
   if(keyPressed) {
    if(key == 'a' || key == 'A'){
      womp.turn(-10);
    }
    if(key == 'd' || key == 'D'){
      womp.turn(10);
    }
    if(key == 'w' || key == 'W'){
      womp.accelerate(0.1);
    }
  }
  womp.show();
  womp.move();
  for(int i = 0; i < grob.size(); i++) {
    Asteroid brog = grob.get(i);
    float d = dist((float)(womp.getXS()), (float)womp.getYS(), (float)brog.getX(), (float)brog.getY());
    if (d < 10) {
      grob.remove(i);
    }
  }
  for(int i = 0; i < grob.size(); i++) {
    grob.get(i).move();
    grob.get(i).show();
  }
}

public void keyPressed() {
   if(key == 'j' || key == 'J'){
     womp.myCenterX = (int)(Math.random()*400);
     womp.myCenterY = (int)(Math.random()*400);
     womp.myPointDirection = (int)(Math.random()*359);
   }
}
