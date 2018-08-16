class komponenta
{
 public int posX,posY,type,inputA=1,inputB,output;

 komponenta(int px,int py,int typ){
   rect(0,0,100,100);
  posX=px;posY=py;type=typ;
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
     if(inputA == 1)
     {
       fill(255);
       rect(100,100,15,4);
       fill(255,0,0);
       ellipse(125,102,25,25);
     }
      
   }
   
   else if(type==5){
   
   }
 }
 
}
