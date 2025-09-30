Die bob;
void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  //your code here
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
  int myX, myY, w, h;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY = y;
    w = 50;
    h = 50;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    //your code here
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    rect(myX,myY,w,h);
  }
}
