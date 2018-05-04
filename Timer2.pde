int miliseconds2 = 620;

void displayTimer2()
{
  text(miliseconds2,40,10);
  /*miliseconds--;
  if(miliseconds == -1)
  {
  maakRocket();
  moveRocket();
  stopTimer();
  }*/
}
void stopTimer2()
{
  miliseconds2 ++;
}
void resetTimer2()
{
  miliseconds2 = 620;
}
void startTimer2()
{
  miliseconds2 --;

  if(miliseconds2 == 0)
{
  stopTimer2();
  resetTimer2();
}
}