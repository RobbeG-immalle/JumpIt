PImage rocket;
int[] yCoord = { 70, 170, 270, 370, 470, 570, 670 };
int startX = 1200;
int rRichting = 0;
int startX2 = 1200;
int speed = 3;
int speed2 = 2;
float rnd = random(0, 7);

/*PFont font;
String time = "000";
int initialTime;
int interval = 500;// 
*/

void maakRocket()
{
  rocket = loadImage("Rocket.png");
  rocket.resize(50, 20);
}
void toonRockets()
{
  rocket = loadImage("Rocket.png");
  rocket.resize(50, 20);
  for(int i = 0; i<yCoord.length; i++)
   {
   image(rocket,startX,yCoord[i]);   
   }
}
/*void maakMeerRockets()
{
  rocket = loadImage("Rocket.png");
  rocket.resize(50, 20);
  for(int i = 0; i<yCoord.length; i++)
   {
   image(rocket,startX2,yCoord[i]);   
   }
}*/
void resetXpos()
{
  startX = 1200;
}
void moveRockets()
{
  startX = startX - speed;
  startX2 = startX2 -speed2;
}
void spawnRockets()
{
  if(miliseconds == 1)
  {
   maakRocket();
   //maakMeerRockets();
  }
  moveRockets();
}
  /*if (millis() - initialTime > interval)
  {
    time = nf(int(millis()/1000), 3);
    //initialTime = millis();

  }*/