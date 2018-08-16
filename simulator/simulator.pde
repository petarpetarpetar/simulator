
int[][] wires = new int[700][700];
//1 and  <-->  2 or  <-->  3 not  <-->  4 button  <-->  5 LED

class komponenta
{
 int posX,posY,type,inputA,inputB;
 ///////////////////////////////////////
 
 
 int findInputAnd_A(){//mozda treba proslediti posX,posY
   int result=0;
   
   for(int i=posX-20 ; i<posX-10;i++){
    for(int j=posY-10;j<posY-5;j++){
     if(wires[i][j]==1){return 1;}
    }
   }   
   return 0;
 }
 
 
 int findInputAnd_B()
 {
  int result=0; 
  
  for(int i=posX-20; i<posX-10;i++){
   for(int j=posY+5;j<posY+10;j++){
     if(wires[i][j]==1){return 1;}
   }
  }
  
  return 0;
 }
 ////////////////////////////////////
 int findInputNot()
 {
   int result=0;
   for(int i=posX-10;i<posX;i++){
     for(int j=posY-2;j<posY+3;j++){
       if(wires[i][j]==1){return 1;}
     }
   }
   return 0;
 }
 /////////////////////////////////////
 
 komponenta(int px,int py,int type){ 
  posX=px;posY=py;
  if(type == 1){inputA = findInputAnd_A();inputB=findInputAnd_B();}
 }
 
}

komponenta[] komp = new komponenta[11];              //imamo klasu komponenta koja ima poziciju i dva ulaza preko toga racunamo output u void update()


void update(){
  for(int i=0;i<10;i++)
  { 
    //komp[i].inputA= wire[][]
    //komp[i].inputB= wire[][]
     if(komp[i].type == 1){   
       if(komp[i].inputA==1 && komp[i].inputB==1){} //treba naci koje kordinate u wire matrici treba popuniti jedinicama/nulama -> koristiti for petlju dimenzija izlazne zice. dimenzije imaju u drawTest
     }
     else if(komp[i].type == 2){}
     
     else if(komp[i].type == 3){}
  }
}


void setup()
{
  size(700,700);  
  background(255,255,255);
}

void draw()
{
  noLoop();
  for(int i=0;i<10;i++)
  {
   println(komp[i].type); 
  } 
}
