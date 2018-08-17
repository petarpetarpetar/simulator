
PImage s;
int markX1,markX2,markY1,markY2;
boolean wireFlag1, wireFlag2;

void setup()
{
  s = loadImage("or_gate.png");
size(700,700);  
}
int x=100;int y=50;

void mouseReleased()
{
  if(!wireFlag1)
  {
    wireFlag1 = true;
    markX1 = mouseX;
    markY1 = mouseY;
  }
  else
  {
    wireFlag2 = true;
    markX2 = mouseX;
    markY2 = mouseY;
  }
}
void keyPressed()
{
 if(key == 'r'){wireFlag1= false;wireFlag2=false;}
  
  
}
void draw()
{
  background(200);
  
 if(wireFlag1)
 {
   if(wireFlag2)
   {
      line(markX1,markY1,markX1,markY2);
  line(markX1,markY2,markX2,markY2);
   }
   else{
  line(markX1,markY1,markX1,mouseY);
  line(markX1,mouseY,mouseX,mouseY);
   }
   
   
   
 }
  
  
 // //and - done
  
 // rect(x-20,y-10,10,5);//inA
 // rect(x-20,y+5,10,5);//inB
 // rect(x+17,y-2,10,5);
 // rect(x-10,y-15,10,30);
 // arc(x, y, 35, 30, -HALF_PI, HALF_PI); 
  
 // //not - in progress
 // y+=30;
 // rect(x-10,y-2,10,5);
 // triangle(x,y-15,x,y+15,x+20,y+2);  
 // rect(x+28,y-1,10,5);
 // ellipse(x+23,y+2,10,10);
 // x= mouseX;
 //y= mouseY;
 // image(s,300,300,50,30);
 
 //fill(255);
 //rect(100,100,15,4);
 //fill(255,0,0);
 //ellipse(125,102,25,25);
 
 //fill(255);
 // rect(125,200,15,4);
 //fill(60,60,60);
 //ellipse(150,202,25,25);
 
 //fill(255,0,0);
 //rect(100,100,20,20);
 //fill(255);
 //rect(104,104,12,12);
 //line(100,100,104,104);
 //line(120,100,116,104);
 //line(100,120,104,116);
 //line(120,120,116,116);
 //rect(120,108,15,4);
 
 // fill(0,255,0);
 //rect(200,200,20,20);
 //fill(255);
 //rect(204,204,12,12);
 //line(200,200,204,204);
 //line(220,200,216,204);
 //line(200,220,204,216);
 //line(220,220,216,216);
 //rect(220,208,15,4);
 
 
 
 
 
 
 
}
  
