Star [] stars = new Star[150];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
double distance;

public void setup() 
{
  size(500, 500);
  for(int i = 0; i < stars.length; i++){
   stars[i] = new Star(); 
  }
  for(int i = 0; i < 10; i++){
   rock.add(new Asteroid());
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
  for(int i = 0; i < rock.size(); i++){
  rock.get(i).show();
  rock.get(i).move();
  distance = dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)rock.get(i).getAsteroidX(), (float)rock.get(i).getAsteroidY());
  if(distance <= 20)
    rock.remove(rock.get(i));
  }
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
   bob.hyperspace(); 
 }
 //accelerate  
  if(key == 'w'){
     bob.accelerate(0.25);
    }
  if(key == 's'){
     bob.brake();
    }
}
