Die bob;
int num = 0;
int sum = 0;
void setup()
{
  size(550,650);
  noLoop();
}
void draw()
{
  //your code here
  background(0);
  for(int y = 50; y<=500; y+=100){
    for(int x = 50; x<=500; x+=100){
      bob = new Die(x,y);
      bob.show();
      bob.roll();
    }
  }
  textSize(60);
  textAlign(CENTER);
  text("Sum of all dice: "+sum,275,600);
}
void mousePressed()
{
  sum=0;
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
    sum+=num;
  }
  void show()
  {
    //your code here
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    rect(myX,myY,50,50);
    //int num = (int)(Math.random()*6);
    num = (int)(Math.random()*6+1);
    fill(255,255,255);
    if((num==1)||(num==3)||(num==5))
      ellipse(myX+25,myY+25,10,10);
    if((num==2)||(num==3)||(num==4)||(num==5)||(num==6))
      ellipse(myX+15,myY+15,10,10);
    if((num==2)||(num==3)||(num==4)||(num==5)||(num==6))
      ellipse(myX+35,myY+35,10,10);
    if((num==4)||(num==5)||(num==6))
      ellipse(myX+35,myY+15,10,10);
    if((num==4)||(num==5)||(num==6))
      ellipse(myX+15,myY+35,10,10);
    if(num==6)
      ellipse(myX+15,myY+25,10,10);
    if(num==6)
      ellipse(myX+35,myY+25,10,10);
  }
}
