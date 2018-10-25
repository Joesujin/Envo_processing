Bees b[] = new Bees[1000];


void setup()
{
  size (500,500,P2D);
  for(int i=0; i <b.length;i++)
  {
  b[i] = new Bees();
  }
  
}


void draw()
{
  background(0);
  
    for(int i=0; i <b.length;i++)
  {
  
   b[i].update();
   b[i].move();
   b[i].trail();
   b[i].check();
   b[i].display();
   
  }

}
