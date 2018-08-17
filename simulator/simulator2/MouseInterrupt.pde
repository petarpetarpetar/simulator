void mouseReleased()
{
  
  if(edit  || selectFlag){
    print("click ");
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

//u pocetku je bio samo prvi if blok, medjutim zbog nekog razloga nije radilo i onda je stavljen jos jedan if blok koji je identican prvom i radi... wierd...
