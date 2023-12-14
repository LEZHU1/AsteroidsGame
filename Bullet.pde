class Bullet extends Floater{
  
public Bullet(Spaceship theShip){
myCenterX = theShip.getX();
myCenterY = theShip.getY();
myPointDirection = theShip.getPointDirection();
accelerate(0.6);
}
 public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
public void show(){
ellipse((float)myCenterX, (float)myCenterY, 10, 10);
}
 public void move(){
    myCenterX += myXspeed;
    myCenterY += myYspeed;
  }
}
