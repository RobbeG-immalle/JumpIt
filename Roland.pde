float richting;
float x = 600;
float y = 650;
float walkSpeed = 5;
float jumpSpeed = 3;
float left;
float right;
float up;
float down;
float gravity = .5;
float ground = 670;

Character Roland = new Character();

class Character
{
  PImage image;
  PVector position;
  float direction;
  PVector velocity;
  float jumpSpeed;
  float walkSpeed;
}

public void DisplayRoland()
{
  Roland.image =loadImage("Roland.png");
  Roland.position = new PVector(600,ground);
  Roland.direction = 1;
  Roland.velocity = new PVector(0,0);
  Roland.jumpSpeed = 10;
  Roland.walkSpeed = 4;
}

void UpdateRoland()
{
  if (Roland.position.y < ground)
  {
    Roland.velocity.y += gravity;
  }
  else
  {
    Roland.velocity.y = 0; 
  }
  if (Roland.position.y >= ground && up != 0)
  {
    Roland.velocity.y = -Roland.jumpSpeed;
  }
    Roland.velocity.x = Roland.walkSpeed * (left + right);


  PVector nextPosition = new PVector(Roland.position.x, Roland.position.y);
  nextPosition.add(Roland.velocity);


  float offset = 0;
  if (nextPosition.x > offset && nextPosition.x < (width- 16 - offset))
  {
    Roland.position.x = nextPosition.x;
  } 
  if (nextPosition.y > offset && nextPosition.y < (height+15 - offset))
  {
    Roland.position.y = nextPosition.y;
  } 

  pushMatrix();

  translate(Roland.position.x, Roland.position.y);

  scale(Roland.direction, 1);

  imageMode(CENTER);
  image(Roland.image,0,0);


  popMatrix();
}

void keyPressed()
{
  if (key == 'd')
  {
    right = 1;
    Roland.direction = -1;
  }
  if (key == 'q')
  {
    left = -1;
    Roland.direction = 1;
  }
  if (key == ' ')
  {
    up = -1;
  }
  if (key == 's')
  {
    down = 1;
  }
}

void keyReleased()
{
  if (key == 'd')
  {
    right = 0;
  }
  if (key == 'q')
  {
    left = 0;
  }
  if (key == ' ')
  {
    up = 0;
  }
  if (key == 's')
  {
    down = 0;
  }
}