class Asteroid extends Floater
{
  protected double rotSpeed;

  public Asteroid() {
    corners = 7;
    rotSpeed = 2;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*6)-14-5;
    yCorners[0] = (int)(Math.random()*6)-11-5;
    xCorners[1] = (int)(Math.random()*6)+10+5;
    yCorners[1] = (int)(Math.random()*6)-11-5;
    xCorners[2] = (int)(Math.random()*6)+12+5;
    yCorners[2] = (int)(Math.random()*6)-4-5;
    xCorners[3] =(int)(Math.random()*6)+4+5;
    yCorners[3] = (int)(Math.random()*6)+8+5;
    xCorners[4] = (int)(Math.random()*6)-11-5;
    yCorners[4] = (int)(Math.random()*6)+7+5;
    xCorners[5] = (int)(Math.random()*6)-7-5;
    yCorners[5] = (int)(Math.random()*6)-4-5;
     xCorners[6] = (int)(Math.random()*6)-8-5;
    yCorners[6] = (int)(Math.random()*6)-2-5;
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);//holds center coordinates
    myXspeed = myYspeed = (int)(Math.random()*10)-5; //holds the speed of travel in the x and y directions
    myPointDirection = (int)(Math.random()*360);
    myColor = color(255);
  }
  public void move() {
    turn(rotSpeed);
    super.move();
  }
    public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
