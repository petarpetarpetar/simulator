class komponenta
{
 public int posX,posY,type,inputA,inputB,output,trenutna;

 komponenta(int px,int py,int typ){
   rect(0,0,100,100);
  posX=px;posY=py;type=typ;
 }
 boolean overRect(int x, int y, int rWidth, int rHeight,int mX,int mY)  {
      if (mX >= x && mX <= x+rWidth && mY >= y && mY <= y+rHeight) 
      {
        return true;
      }
      else 
      {
        return false;
      }
 }
 int overK(int x,int y)
 {
   int tempX = posX;
   int tempY = posY;
   if(type==1){   
      if(overRect(tempX-20,tempY-10,10,5,x,y)){trenutna=1;return 1;}//inA
      if(overRect(tempX-20,tempY+5,10,5,x,y)){trenutna=2;return 2;}//inB
      if(overRect(tempX+17,tempY-2,10,5,x,y)){trenutna=0;return 0;}//out
  }
 
   else if(type==2){
      if(overRect(tempX-24,tempY-7,10,5,x,y)){trenutna=1;return 1;}//inA
      if(overRect(tempX-24,tempY+5,10,5,x,y)){trenutna=2;return 2;}//inB
      if(overRect(tempX+15,tempY-2,10,5,x,y)){trenutna=0;return 0;}//out
   }
   
   else if(type==3){
      if(overRect(tempX-10,tempY-2,10,5,x,y)){trenutna=1;return 1;}//in
      if(overRect(tempX+28,tempY-1,10,5,x,y)){trenutna=0;return 0;}//out
   }
    
   else if(type==4){
      if(overRect(tempX-20,tempY-2,15,4,x,y)){trenutna=1;return 1;}//in   
   }
   
   else if(type==5){
      if(overRect(tempX+10,tempY-2,15,4,x,y)){trenutna=0;return 0;}//out
       
   
   }
   return -1;
 }
 void drawK()
 {
   //println("a");
   int tempX = posX;
   int tempY = posY;
  if(type==1){  
      fill(255);
      rect(tempX-20,tempY-10,10,5);//inA
      rect(tempX-20,tempY+5,10,5);//inB
      rect(tempX+17,tempY-2,10,5);
      rect(tempX-10,tempY-15,10,30);
      arc(tempX, tempY, 35, 30, -HALF_PI, HALF_PI);
  }
 
   else if(type==2){
   image(s,tempX-20,tempY-15,50,30);
   }
   
   else if(type==3){
      fill(255);
      rect(tempX-10,tempY-2,10,5);
      triangle(tempX,tempY-15,tempX,tempY+15,tempX+20,tempY+2);  
      rect(tempX+28,tempY-1,10,5);
      ellipse(tempX+23,tempY+2,10,10);
   
   }
    
   else if(type==4){
     if(inputA == 0)
     {
       fill(255);
      rect(tempX-20,tempY-2,15,4);
      fill(60,60,60);
      ellipse(tempX,tempY,25,25);
     }
     else
     {
       fill(255);
       rect(tempX-20,tempY-2,15,4);
       fill(255,0,0);
       ellipse(tempX,tempY,25,25);
     }
      
   }
   
   else if(type==5){
     if(output==0)
     {
       
           fill(255,0,0);
       rect(tempX-10,tempY-10,20,20);
       fill(255);
       rect(tempX-6,tempY-6,12,12);
       line(tempX-10,tempY-10,tempX-6,tempY-6);
       line(tempX+10,tempY-10,tempX+6,tempY-6);
       line(tempX-10,tempY+10,tempX-6,tempY+6);
       line(tempX+10,tempY+10,tempX+6,tempY+6);
       rect(tempX+10,tempY-2,15,4);
     }
     else
     {
       fill(0,255,0);  
       rect(tempX-10,tempY-10,20,20);
       fill(255);
       rect(tempX-6,tempY-6,12,12);
       line(tempX-10,tempY-10,tempX-6,tempY-6);
       line(tempX+10,tempY-10,tempX+6,tempY-6);
       line(tempX-10,tempY+10,tempX-6,tempY+6);
       line(tempX+10,tempY+10,tempX+6,tempY+6);
       rect(tempX+10,tempY-2,15,4);
     }
   
   }
 }
 
}
