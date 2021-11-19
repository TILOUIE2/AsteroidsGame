Spaceship bob = new Spaceship();
Star [] stars = new Star[150];
double x = 0;
double y = 0;

public void setup() 
{
  size(500, 500);
  for(int i = 0; i < stars.length; i++){
   stars[i] = new Star(); 
  }
}

public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++){
   stars[i].show();
  }
  bob.show();
  bob.move();
}

public void keyPressed(){
 //rotate
  if(key == 'a'){
  bob.turn(-10); 
 }
  if(key == 'd'){
  bob.turn(10); 
 }
 //hyperspace
 if(key == ' '){
   bob.hyperspace() ; 
 }
 //accelerate  
  if(key == 'w'){
     bob.accelerate(0.25);
    }
  if(key == 's'){
     bob.brake();
    }
  
}
