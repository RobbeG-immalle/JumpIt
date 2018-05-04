void setup()
{
  size(1200,700);
  background(50,150,249);
  frameRate(60); 
  DisplayRoland();

}

void draw()
{
  background(50,150,249);
  spawnRockets();
  drawLines();
  UpdateRoland();
  displayTimer();
  startTimer();
  if(miliseconds == 1)
  {
   maakRocket();
   //maakMeerRockets();
  }
  toonRockets();
}