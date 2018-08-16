boolean edit;
int select;
int tempX;
int brojac;
int tempY;
boolean selectFlag;
int clickX;
int clickY;
boolean clickFlag,clickFlag2;
PImage s;
void mouseReleased()
{
  
  if(edit  || selectFlag){
    print("released");
 clickX = mouseX;
 clickY = mouseY;
 clickFlag = true;
  }
  if(selectFlag){
    
    clickX=mouseX;
    clickY=mouseY;
    clickFlag2 = true;
  }
  
}

//1 and  <-->  2 or  <-->  3 not  <-->  4 LED  <-->  5 button
komponenta[] komp = new komponenta[11];              //imamo klasu komponenta koja ima poziciju i dva ulaza preko toga racunamo output u void update()
konekcija[] kon = new konekcija[100];

void updateInput()
{
  for(int i=0;i<11;i++)
  {
   if(komp[i].type==1){} 
   
   else if(komp[i].type==2){}
    
   else if(komp[i].type==3){}
    
   else if(komp[i].type==4){}
    
    
  }
  
  
}


void updateOutput(){
  for(int i=0;i<10;i++)
  { 
     if(komp[i].type == 1){   
       if(komp[i].inputA==1 && komp[i].inputB==1){komp[i].output = 1;}
       else{komp[i].output =1;}
     }
     
     else if(komp[i].type == 2){
       if(komp[i].inputA==1 || komp[i].inputB==1){komp[i].output= 1;}
       else{komp[i].output = 1;}  
   }
     
     else if(komp[i].type == 3){komp[i].output = -komp[i].inputA;}
  }
}

void updateConections()
{
  
  
  
}

void setup()
{
  s = loadImage("or_gate.png");
  size(700,700);  
  background(200);
}


void keyPressed()
{
 if(key == 'e' || key == 'E'){if(edit){edit=false;selectFlag=false;clickFlag=false;select=0;}else{edit=true;}println("e");}
}

void edit()
{
  
  if(clickFlag){
    clickFlag=false;
    if(clickY>10 && clickY<40){
       if(clickX>10 && clickX<40){select=1;selectFlag=true;}
       else if(clickX>50 && clickX<80){select=2;selectFlag=true;}
    }
    else if(clickY>50 && clickY<80){
      if(clickX>10 && clickX<40){select=3;selectFlag=true;}
      else if(clickX>50 && clickX<80){select=4;selectFlag=true;}
      else if(clickX>90 && clickX<133){select=5;selectFlag=true;}
    
    }   
  }
  
}
void drawMenu()
{
 background(200);
 fill(100);
 textSize(30);
 fill(100);
 rect(0,0,700,100);
 fill(230);
 rect(10,10,30,30);//AND
 rect(10,50,30,30);//OR
 rect(50,10,30,30);//NOT
 rect(50,50,30,30);//LED
 rect(90,50,43,30);//TASTER
 rect(145,50,90,30);
 fill(190);
 
 fill(0,255,255);
 text("simulator digitalne elektronike",100,30);
 fill(0);
 textSize(12);
 text("AND",13,30);
 text("OR",57,30);
 text("NOT",13,70);
 text("LED",53,70);
 text("Taster",93,70);
 text("edit_mode",150,70);
 if(edit){fill(0,255,0);}//edit
 else{fill(255,0,0);}    //edit
 ellipse(222,66,20,20);
}
void draw()
{
 if(edit){edit();}
 drawMenu(); 
 tempX=mouseX;
 tempY=mouseY;
 fill(255);
 
 if(selectFlag){
   println("sF/cF/select",selectFlag+" "+clickFlag2+" "+select);
   if(clickFlag2){
     komp[brojac].type=select;
     komp[brojac].posX=clickX;
     komp[brojac].posY=clickY;
     println("test");
       brojac++;
     clickFlag=false;
     selectFlag=false;
     select=0;
   }
   
   else if(select==1){  
  rect(tempX-20,tempY-10,10,5);//inA
  rect(tempX-20,tempY+5,10,5);//inB
  rect(tempX+17,tempY-2,10,5);
  rect(tempX-10,tempY-15,10,30);
  arc(tempX, tempY, 35, 30, -HALF_PI, HALF_PI);
  }
 
   else if(select==2){
   image(s,tempX-20,tempY-15,50,30);
   }
   
   else if(select==3){
  rect(tempX-10,tempY-2,10,5);
  triangle(tempX,tempY-15,tempX,tempY+15,tempX+20,tempY+2);  
  rect(tempX+28,tempY-1,10,5);
  ellipse(tempX+23,tempY+2,10,10);
   
   }
    
   else if(select==4){
   
   }
   
   else if(select==5){
   
   }
   
   
 }

}
