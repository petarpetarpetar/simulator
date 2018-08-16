class komponenta
{
 public int posX,posY,type,inputA,inputB,output;

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
       rect(200,200,20,20);  
       fill(255);  
       rect(204,204,12,12);  
       line(200,200,204,204);  
       line(220,200,216,204);  
       line(200,220,204,216);  
       line(220,220,216,216);  
       rect(220,208,15,4);
     }
   
   }
 }
 
}
