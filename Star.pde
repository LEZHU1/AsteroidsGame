class Star 
{
  protected int myX, myY;
  public Star()
  {
  myX = (int)(Math.random()*600);
  myY = (int)(Math.random()*600);
  }
  public void show()
  {
  fill(255, 100);
  line(myX, myY, myX, myY);
  }
}
