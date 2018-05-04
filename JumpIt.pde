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
  displayTimer2();
  startTimer2();
  maakRocket();
  maakMeerRockets();
  /*if(miliseconds == 1)
  {
   maakRocket();
   //maakMeerRockets();
  }*/
  if(miliseconds == 1)
{
  //respawnRockets();
  showNewRockets();
}
  if(miliseconds2 == 1)
{
  respawnWave2();
}
  toonRockets();
  DetectCollision();
}