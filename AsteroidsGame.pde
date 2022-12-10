//as polished as i could get it during finals week prep...
//fun project! wish i had the time to do stuff with it like i did the oddball assignment
ArrayList <Bullet> round = new ArrayList<Bullet>();
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
Spaceship fer = new Spaceship();
Star[] nightSky = new Star[500];
public void setup() 
{
  size(500, 500);
  for (int i = 0; i < nightSky.length; i ++) {
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 15; i ++) {
    rock.add(0, new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < 50; i ++) {
    nightSky[i].show();
  }
   if(keyPressed) {
    if(key == 'a' || key == 'A'){
      fer.turn(-10);
    }
    if(key == 'd' || key == 'D'){
      fer.turn(10);
    }
    if(key == 'w' || key == 'W'){
      fer.accelerate(0.1);
    }
  }
  fer.move();
  fer.show();
  for (int i = 0; i < rock.size(); i ++) {
    Asteroid presentRock = rock.get(i);
    float d = dist((float)fer.getXs(), (float)fer.getYs(), (float)presentRock.getX(), (float)presentRock.getY());
    if (d < 10) {
      rock.remove(i);
    }
    for (int j = 0; j < round.size(); j++) {
      float d1 = dist((float)presentRock.getX(), (float)presentRock.getY(), (float)round.get(j).getXs(), (float)round.get(j).getYs());
      if (d1 < 15) {
        rock.remove(i);
        round.remove(j);
        j-=1;
        break;
      } //scorecounter for asteroids left maybe?
    }
  }

  for (int i = 0; i < rock.size(); i++) {

    rock.get(i).move();
    rock.get(i).show();
  }
  for (int i = 0; i < round.size(); i++) {
    round.get(i).move();
    round.get(i).show();
  }
}
public void keyPressed() {
  if (key == 'j') {  
    fer.Hyperspace();
  }
  if (key == 'z') {
    round.add(new Bullet(fer));
  }
}
