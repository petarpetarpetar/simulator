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
   tempX = posX;
   tempY = posY;
   if(type==1){  
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
  rect(tempX-10,tempY-2,10,5);
  triangle(tempX,tempY-15,tempX,tempY+15,tempX+20,tempY+2);  
  rect(tempX+28,tempY-1,10,5);
  ellipse(tempX+23,tempY+2,10,10);
   
   }
    
   else if(type==4){
   
   }
   
   else if(type==5){
   
   }
 }
 
}
