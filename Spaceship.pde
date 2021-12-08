class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -16;
    yCorners[0] = -6;
    xCorners[1] = 0;
    yCorners[1] = -6;
    xCorners[2] = 6;
    yCorners[2] = 0;
    xCorners[3] = 0;
    yCorners[3] = 6;
    xCorners[4] = -16;
    yCorners[4] = 6;
    myColor = 198;   
    myCenterX = 250;
    myCenterY = 250; 
    myXspeed = 0;
    myYspeed = 0;   
    myPointDirection = (int)(Math.random()*360);
  }
  public void hyperspace(){
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
  }
  public void brake(){
    myXspeed = 0.9 * myXspeed;
    myYspeed = 0.9 * myYspeed;
  }
  
  public double getCenterX(){
     return myCenterX; 
  }
  public double getCenterY(){
     return myCenterY; 
  }
  public double getXSpeed(){
     return myXspeed; 
  }
  public double getYSpeed(){
     return myYspeed; 
  }
  public double getDirection(){
     return myPointDirection; 
  }
  
}
