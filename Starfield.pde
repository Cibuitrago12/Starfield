Particle[] parts;
void setup()
{
  size(600, 600);
  background(0);
  parts = new Particle[1000];
  for(int i = 0; i < parts.length; i++){
     parts[i] = new Particle();
     parts[0] = new OddballParticle();
  }
  
}
void draw()
{
  background(0);
  for(int i = 0; i < parts.length; i++){
    parts[i].move();
    parts[i].show();
  }
}

class Particle
{
  double x, y, speed, angle;
  int colr;
  Particle()
  {
     x = 300;
     y = 300;
     angle = Math.random()*2*Math.PI;
     speed = Math.random()*10;
     colr = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    
  }
  void move()
  {
     x = x + (Math.cos(angle) * speed);
     y = y + (Math.sin(angle) * speed);
    
  }
  void show()
  {
    fill(colr);
    ellipse((float)x, (float)y, 10, 10);
    
  }
}

class OddballParticle extends Particle
{
   
  void move()
  {
     x = x + Math.cos(angle) * speed;
     y = y + Math.sin(angle) * speed;
    
  }
  void show()
  {
    fill(colr);
    ellipse((float)x, (float)y, 50, 50);
    
  }
}