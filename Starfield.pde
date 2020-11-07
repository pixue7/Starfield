  class Particle{
  float myX;
  float myY;
  double mySpeed;
  double myAngle;
  float mySize;
  float myColor;

  Particle(){
  myX = myY = 200;
  myAngle = Math.random()*2*Math.PI;
  mySpeed = Math.random()*10;
  mySize = 5;
  myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move(){
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
    if(myY < -100){
    myY = 500;
    }
  }
  void show(){
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  noStroke();
  ellipse(myY, myX, mySize, mySize);
  }
}

class OddBallParticle extends Particle
{
  OddBallParticle()
  {
  myX = myY = 200;
  myAngle = Math.random()*2*Math.PI;
  mySpeed = Math.random()*5;
  mySize = 20;
  myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move()
  {
    myX = myX + (int)(Math.random()*2)-1;
    myY = myY + (int)(Math.random()*2)-1;
    if(myY < -100){
    myY = 500;
  }
  }
  void show()
  {
  fill(102, 0, 153);
  noStroke();
  ellipse(myY, myX, mySize, mySize);
  }
}

Particle[] pop = new Particle[50];
OddBallParticle[] die = new OddBallParticle[1];

void setup(){
  size(400, 400);
  frameRate(250);
  for(int i = 0; i < pop.length; i++){
    pop[i] = new Particle();
  }
  for(int j = 0; j < die.length; j++){
    die[j] = new OddBallParticle();
  }
}
void draw(){
  background(0, 0, 0);
  for(int i = 0; i < pop.length; i++){
  pop[i].show();
  pop[i].move();
  }
  for(int j = 0; j < die.length; j++){
    die[j].show();
    die[j].move();
  }
}
