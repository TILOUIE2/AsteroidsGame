class Star //note that this class does NOT extend Floater
{
  private int x, y, myColor;
  public Star(){
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
    myColor = (int)(Math.random()*255);
  }
  public void show(){
   fill(myColor);
   ellipse(x, y, 2, 2);
  }
}
