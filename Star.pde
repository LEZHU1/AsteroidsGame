class Star //note that this class does NOT extend Floater
{
  protected int myX, myY;
  protected float opacity;
  public Star(float o)
  {
  myX = (int)(Math.random()*600);
  myY = (int)(Math.random()*600);
  opacity = o;
  }

  public void show()
  {
  stroke(255, opacity);
  line(myX, myY, myX+2, myY+2);
  }
}
