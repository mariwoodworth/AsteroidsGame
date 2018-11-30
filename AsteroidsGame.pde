Spaceship s;
Star [] stars;
Asteroid [] asteroids;
public void setup() 
{
  size(500, 500);
  background(0);
  s = new Spaceship();
  stars = new Star[300];
  asteroids = new Asteroid[10];
  for(int i=0; i<stars.length; i++) {
      stars[i] = new Star();
    }
  for(int i=0; i<asteroids.length; i++) {
      asteroids[i] = new Asteroid();
    }
  
}
public void draw() {
  background(0);
  for(int i=0; i<stars.length; i++) {
     stars[i].show();
  }
  for(int i=0; i<asteroids.length; i++) {
     asteroids[i].show(); 
  }
  s.show();
  s.move();
}

public void keyPressed() {
  if(key == ' ') {
    s.setDirectionX(0);
    s.setDirectionY(0);
    s.setX((int)(Math.random()*500));
    s.setY((int)(Math.random()*500));
    s.setPointDirection((int)(Math.random()*360));
  }
  if(key == 'w') {s.accelerate(2);}
  if(key == 's') {s.accelerate(-2);}
  if(key == 'a') {s.turn(-10);}
  if(key=='d') {s.turn(10);}
}
