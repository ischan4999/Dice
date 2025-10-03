Die bob;
void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  //your code here
  background(0);
  bob = new Die(50,50);
  bob.show();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    //your code here
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    rect(myX,myY,50,50);
    //int num = (int)(Math.random()*6);
    int num = 1;
    fill(255,255,255);
    if((num==1)||(num==3))
      ellipse(75,75,10,10);
    if(
  }
}
