boolean edit;
int select;
int tempX;
int tempY;

//1 and  <-->  2 or  <-->  3 not  <-->  4 LED  <-->  5 button

class komponenta
{
 int posX,posY,type,inputA,inputB,output;

 komponenta(int px,int py,int typ){ 
  posX=px;posY=py;type=typ;
 }
 
}

class konekcija
{
 int start,data,end;
 
 konekcija(int start,int data, int end)
 {
  this.start= start;
  this.data = data;
  this.end = end;
 }
 
}

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
  size(700,700);  
  background(200);
}


void keyPressed()
{
 if(key == 'e' || key == 'E'){if(edit){edit=false;}else{edit=true;}println("e");}
}

void edit()
{

   //EDIT
    
    
    
  
  
  
  
}
void drawMenu()
{
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
 
}
