class Lines
{
  void Lines(int x, int y, int h, int w)
  {
    fill(49, 216, 88);
    stroke(49, 216, 88);
    rect(x,y,w,h, 8);

  }
}
  void drawLines()
{
  Lines l1 = new Lines();
  Lines l2 = new Lines();
  Lines l3 = new Lines();
  Lines l3_2 = new Lines();
  Lines l4 = new Lines();
  Lines l4_2 = new Lines();
  Lines l5 = new Lines();
  Lines l6 = new Lines();

  Lines bottom = new Lines();

  l1.Lines(250,100,10,200);
  l2.Lines(500,200,10,200);
  l3.Lines(750,300,10,200);
  l3_2.Lines(120,300,10,200);
  l4.Lines(1000,400,10,200);
  l4_2.Lines(220,450,10,200);
  l5.Lines(750,500,10,200);
  l6.Lines(500,600,10,200);
  bottom.Lines(0,690,10,1200);

}