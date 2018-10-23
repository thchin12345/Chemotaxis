 //declare bacteria variables here   
 Bacteria[]bob;
void setup()   
{ 
  size(300, 300);
  background((int)(Math.random()*400), ((int)(Math.random()*400)), ((int)(Math.random()*400)), (int)(Math.random()*400));
  //initialize bacteria variables here   

  bob= new Bacteria [60];
  for (int i=0; i<bob.length; i++)
    bob[i]= new Bacteria();
}   
void draw()   
{    
  for (int i=0; i<bob.length; i++)
  {

    bob[i].show();
    bob[i].move();
  }
}
class Bacteria    
{     

  int myX;
  int myY;
  int myColor;
  Bacteria() {
    myX=150;
    myY=150;
    myColor= color(0, 255, 0);
  }
 
  void move() {
    myX= myX+ (int)(Math.random()*3)-1;
    myY= myY + (int)(Math.random()*3)-1;
  
  }
  void show() {
    ellipse(myX, myY, 50, 50);
  }
}
