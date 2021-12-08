class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid(){
    rotSpeed = (int)(Math.random()*5)-3;
    corners = 8;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -12;
    yCorners[0] = 0;
    xCorners[1] = -8;
    yCorners[1] = 8;
    xCorners[2] = 0;
    yCorners[2] = 12;
    xCorners[3] = 8;
    yCorners[3] = 8;
    xCorners[4] = 12;
    yCorners[4] = 0;
    xCorners[5] = 8;
    yCorners[5] = -8;
    xCorners[6] = 0;
    yCorners[6] = -12;
    xCorners[7] = -8;
    yCorners[7] = -8;
    myColor = 127;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)(Math.random()*5)-3;
    myYspeed = (int)(Math.random()*5)-3;   
    myPointDirection = (int)(Math.random()*360);
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getAsteroidX(){
     return myCenterX; 
  }
   public double getAsteroidY(){
     return myCenterY; 
  }
  

}
