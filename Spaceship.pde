class Spaceship extends Floater
{
  public Spaceship() {
    corners = 12;
    xCorners = new int[corners];
    yCorners = new int[corners]; 
    xCorners[0] = -4;
    yCorners[0] = 0;
    xCorners[1] = -8;
    yCorners[1] = 8;
    xCorners[2] = 16;
    yCorners[2] = 0;
    xCorners[3] = -8;
    yCorners[3] = -8;
    xCorners[4] = -4;
    yCorners[4] = 0;
    xCorners[5] = -18;
    yCorners[5] = -6;
    xCorners[6] = -21;
    yCorners[6] = -4;
    xCorners[7] = -18;
    yCorners[7] = -2;
    xCorners[8] = -20;
    yCorners[8] = 0;
    xCorners[9] = -18;
    yCorners[9] = 2;
    xCorners[10] = -21;
    yCorners[10] = 4;
    xCorners[11] = -18;
    yCorners[11] = 6;
    
    myColor = 255;
    myCenterX = myCenterY = 300; //holds center coordinates
    myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions
    myPointDirection = (int)(Math.random()*360);
  }
  
  public void setX(int x){
    myCenterX = x;
  }
   public void setY(int y){
    myCenterY = y;
  }
  public void setXspeed(int x){
    myXspeed = x;
  }
   public void setYspeed(int y){
    myYspeed = y;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public double getXspeed(){
    return myCenterX;
  }
  public double getYspeed(){
    return myCenterY;
  }
    public double getPointDirection(){
    return myPointDirection;
  }

  public void hyperspace() {
    myXspeed = myYspeed = 0;
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myPointDirection = Math.random()*360;
  }
 
  }
