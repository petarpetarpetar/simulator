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
  if(wireWrite)
  {
    if((prv = checkOver()) != null)
    {
      if(!wireFlag1)
      {
        inK=prv;
        wireFlag1 = true;
        markX1 = mouseX;
        markY1 = mouseY;
      }
    
      else
      {
        wireFlag2 = true;
        markX2 = mouseX;
        markY2 = mouseY;
        kon.add(new konekcija(markX1,markY1,markX2,markY2,inK,prv));
        wireFlag2 = false;
        wireFlag1 = false;
      }
    }
  }
  
  
}

//u pocetku je bio samo prvi if blok, medjutim zbog nekog razloga nije radilo i onda je stavljen jos jedan if blok koji je identican prvom i radi... wierd...
