Star[] stars = new Star[300];
Spaceship bob = new Spaceship();
Timer Tim = new Timer();
boolean wa = false;
boolean sa = false;
boolean ab = false;
boolean db = false;

ArrayList <Asteroid> Aster = new ArrayList<Asteroid>();
ArrayList <Bullet> Bull = new ArrayList <Bullet>();


public void setup()
{

  textSize(35);
  textAlign(CENTER);
  size(600, 600);
  for (int i = 0; i<200; i++) {
    stars[i] = new Star(150.0);
  }
  for (int i = 200; i<300; i++) {
    stars[i] = new Star(300.0);
  }
  for (int i = 0; i<15; i++) {
    Aster.add(i, new Asteroid());
  }

}

public void draw()
{
  background(0);
  text(Tim.getTime(), 40, 40);
  for (int i = 0; i<300; i++) {
    stars[i].show();
  }
  for (int i = 0; i<Aster.size(); i++) {
    Aster.get(i).show();
    Aster.get(i).move();
    float collision = dist((float)bob.getX(), (float)bob.getY(), (float)Aster.get(i).getX(), (float)Aster.get(i).getY());
    if (collision < 40) {
      Aster.remove(i);
      //  Erika.add(new SmallA((int)(Aster.get(i).getX()), (int)(Aster.get(i).getY())));
    }
  }

  // for (int i = 0; i<Erika.size(); i++) {
  //    Erika.get(i).show();
  // Erika.get(i).move();
  //  }

  if (wa == true) {
    bob.accelerate(0.2);
  }
  if (sa == true) {
    bob.accelerate(-0.2);
  }
  if (ab == true) {
    bob.turn(-7);
  }
  if (db == true) {
    bob.turn(7);
  }


  for (int i = 0; i < Bull.size(); i++) {
    Bull.get(i).show();
    Bull.get(i).move();
    Bull.get(i).accelerate(1);
    for (int u = 0; u < Aster.size(); u++) {
      float collision = dist((float)Bull.get(i).getX(), (float)Bull.get(i).getY(), (float)Aster.get(u).getX(), (float)Aster.get(u).getY());
      if (collision < 50) {
        Bull.remove(i);
        Aster.remove(u);
        //     Erika.add(new SmallA((int)(Aster.get(i).getX()), (int)(Aster.get(i).getY())));
        break;
      }
    }
  }
  bob.show();
  bob.move();
if(Aster.size() == 0){
  EndGame();
}
}



public void keyPressed() {
  if (key == 'w') {
    wa = true;
  }
  if (key == 'a') {
    ab = true;
  }
  if (key == 'd') {
    db = true;
  }
  if (key == 's') {
    sa = true;
  }
  if (key == 'h') {
    bob.hyperspace();
  }
  if (key == ' ') {
    Bull.add(new Bullet(bob));
  }
}

public void keyReleased() {
  if (key == 'w') {
    wa = false;
    bob.myXspeed=0;
    bob.myYspeed=0;
  }
  if (key == 'a') {
    ab = false;
  }
  if (key == 'd') {
    db = false;
  }
  if (key == 's') {
    sa = false;
  }
}

public void EndGame() {
  background(0);
  Tim.stop();
 
  text("GOOD JOB !", 300, 325);
  text("reload page to play again", 300, 350);
  for (int i = 0; i<300; i++) {
    stars[i].show();
  }
}
