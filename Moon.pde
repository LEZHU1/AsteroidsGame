class Moon extends Star
{
  
public Moon()
{
  myX = (int)(Math.random()*600);
  myY = (int)(Math.random()*600);
  }
  
  public void show()
  {
  fill(255, 200);
  line(myX+2, myY+2, myX+4, myY+4);
  }
}
