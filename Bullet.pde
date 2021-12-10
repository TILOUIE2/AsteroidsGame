
class Bullet extends Floater
{
  public Bullet(){
    myCenterX = bob.getCenterX();
    myCenterY = bob.getCenterY(); 
    myXspeed = bob.getXSpeed();
    myYspeed = bob.getYSpeed();   
    myPointDirection = bob.getDirection();
    accelerate(6);
  }
  public void show(){
    fill(#FF0011);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public double getBulletX(){
     return myCenterX; 
  }
   public double getBulletY(){
     return myCenterY; 
  }

}
