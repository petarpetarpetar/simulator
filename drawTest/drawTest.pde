void setup()
{
  noLoop();
size(700,700);  
}
int x=100;int y=50;
void draw()
{
  background(200);
  //and - done
  
  rect(x-20,y-10,10,5);//inA
  rect(x-20,y+5,10,5);//inB
  rect(x+17,y-2,10,5);
  rect(x-10,y-15,10,30);
  arc(x, y, 35, 30, -HALF_PI, HALF_PI); 
  
  //not - in progress
  y+=30;
  rect(x-10,y-2,10,5);
  triangle(x,y-15,x,y+15,x+20,y+2);  
  rect(x+28,y-1,10,5);
  ellipse(x+23,y+2,10,10);
  //x= mouseX;
  //y= mouseY;
}
