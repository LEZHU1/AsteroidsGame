
class Spaceship extends Floater
{
  public Spaceship() {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -6;
    yCorners[3] = 4;
    myColor = 255;
    myColor = 255;
    myCenterX = myCenterY = 300; //holds center coordinates
    myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions
    myPointDirection = 4.0;
  }
  
  public void setX(int x){
    myCenterX = x;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
    public double getPointDirection(){
    return myPointDirection;
  }
  public void hyperspace() {
    myXspeed = myYspeed = 0;
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
  }
 
  }
