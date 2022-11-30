//directional "drifting" smoothing to come in asteroids2.
Spaceship womp = new Spaceship();
Star[] blah = new Star[50];
public void setup() 
{
  size(400,400);
  background(0);
  for(int i = 0; i < blah.length; i++) {
    blah[i] = new Star();
  }
}
public void draw() 
{
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
}

public void keyPressed() {
   if(key == 'j' || key == 'J'){
     womp.myCenterX = (int)(Math.random()*400);
     womp.myCenterY = (int)(Math.random()*400);
     womp.myPointDirection = (int)(Math.random()*359);
   }
}
