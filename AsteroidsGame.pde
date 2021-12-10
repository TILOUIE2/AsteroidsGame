Star [] stars = new Star[150];
Spaceship bob = new Spaceship();
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> pew = new ArrayList <Bullet>();
double distance;
int score = 10;

public void setup() 
{
  size(500, 500);
  for(int i = 0; i < stars.length; i++){
   stars[i] = new Star(); 
  }
  for(int i = 0; i < 10; i++){
   rock.add(new Asteroid());
  }
  noStroke();
  textAlign(CENTER);
}

public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++){
   stars[i].show();
  }
  fill(#FFFFFF);
  textSize(15);
  text("Asteroids left: " + score, 75, 25);
  for(int i = 0; i < rock.size(); i++){
    rock.get(i).show();
    rock.get(i).move();
  }
  for(int j = 0; j < pew.size(); j++){
    pew.get(j).show();
    pew.get(j).move(); 
  }
  for(int a = 0; a < rock.size(); a++){
    for(int b = 0; b < pew.size(); b++){
    distance = dist((float)pew.get(b).getBulletX(), (float)pew.get(b).getBulletY(), (float)rock.get(a).getAsteroidX(), (float)rock.get(a).getAsteroidY());
      if(distance <= 20){
      rock.remove(rock.get(a));
      score--;
      pew.remove(pew.get(b));
      break;
      }
    }
  }
  bob.show();
  bob.move();
  if(rock.size()==0){
  fill(#FEFF00);
  textSize(60);
  text("SUCCESS!", 250, 250);
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
  if(key == 'f'){
    pew.add(new Bullet());
    }
  
}
