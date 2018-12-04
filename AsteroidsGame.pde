Spaceship s;
Star [] stars;
ArrayList <Asteroid> asteroids;
public void setup() 
{
  size(500, 500);
  background(0);
  s = new Spaceship();
  stars = new Star[300];
  asteroids = new ArrayList <Asteroid>();
  for(int i=0; i<stars.length; i++) {
      stars[i] = new Star();
    }
  for(int i=0; i<10; i++) {
      asteroids.add(new Asteroid());
    }
  
}
public void draw() {
  background(0);
  for(int i=0; i<stars.length; i++) {
     stars[i].show();
  }
  for(int i=0; i<asteroids.size(); i++) {
     asteroids.get(i).move();
     asteroids.get(i).show(); 
     float d = dist(s.getX(), s.getY(), asteroids.get(i).getX(), asteroids.get(i).getY());
     if(d < 10) 
       asteroids.remove(i);
     else {
       asteroids.get(i).show();
       asteroids.get(i).move();
     }
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
