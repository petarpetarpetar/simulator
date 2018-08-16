void setup()
{
  size(700,700);  
  background(200);
}
boolean edit;

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
}


