Star[] stars = new Star[300];
Spaceship bob = new Spaceship();

public void setup() 
{
  size(600,600);
  
  for(int i = 0; i<200; i++){
    stars[i] = new Star();
  }
  for( int i = 200; i<300; i++){
    stars[i] = new Moon();
  }
}

public void keyPressed() {
  if (key == 'h') {
    bob.hyperspace();
  }
}

public void draw() 
{
  background(0);
  for(int i = 0; i<200; i++){
    stars[i].show();
  }
  for(int i = 200; i<300; i++){
  stars[i].show();
  }
  bob.show();
  bob.move();
}
