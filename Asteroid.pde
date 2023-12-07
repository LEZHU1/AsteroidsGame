Star[] stars = new Star[300];
Spaceship bob = new Spaceship();

ArrayList <Asteroid> Aster =new ArrayList<Asteroid>();
;

public void setup()
{
  size(600, 600);
  for (int i = 0; i<200; i++) {
    stars[i] = new Star();
  }
  for (int i = 200; i<300; i++) {
    stars[i] = new Moon();
  }
  for (int i = 0; i<15; i++) {
    Aster.add(i, new Asteroid());
  }
}

public void draw()
{
  background(0);
  for (int i = 0; i<300; i++) {
    stars[i].show();
  }
  for (int i = 0; i<Aster.size(); i++) {
    Aster.get(i).show();
    Aster.get(i).move();
   float collision = dist((float)bob.getX(), (float)bob.getY(), (float)Aster.get(i).getX(), (float)Aster.get(i).getY());
    if (collision < 10) {
      Aster.remove(i);
    }

  }
  bob.show();
  bob.move();
  
    }

public void keyPressed() {
  if (key == 'w') {
    bob.accelerate(1.1);
  } else if (key == 'a') {
    bob.turn(-20);
  } else if (key == 'd') {
    bob.turn(20);
  } else if (key == 'h') {
    bob.hyperspace();
  }
}
