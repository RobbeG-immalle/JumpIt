int miliseconds = 420;

void displayTimer()
{
  text(miliseconds,10,10);
  /*miliseconds--;
  if(miliseconds == -1)
  {
  maakRocket();
  moveRocket();
  stopTimer();
  }*/
}
void stopTimer()
{
  miliseconds ++;
}
void resetTimer()
{
  miliseconds = 420;
}
void startTimer()
{
  miliseconds --;

  if(miliseconds == 0)
{
  stopTimer();
  resetTimer();
}
}