void mouseReleased()
{
  if(mouseX>649 && mouseX<681 && mouseY>49 && mouseY<81)
  {
    resetTime = millis();
  }
  else if(edit  || selectFlag){
    print("click ");
 clickX = mouseX;
 clickY = mouseY;
 clickFlag = true;
  }
  if(pomFlag)
  {
    if(pomeranje)
    {
    
    }
    else
    {
      checkOverK();
    }
  }
  if(selectFlag){
    
    clickX=mouseX;
    clickY=mouseY;
    clickFlag2 = true;
  }
  checkOverB();
  if(wireWrite)
  {
    if((prv = checkOver()) != null)
    {
      if(!wireFlag1)
      {
        inK=prv;
        inKU=inK.trenutna;
        wireFlag1 = true;
        markX1 = mouseX;
        markY1 = mouseY;
      }
    
      else
      {
        wireFlag2 = true;
        markX2 = mouseX;
        markY2 = mouseY;
        kon.add(new konekcija(markX1,markY1,markX2,markY2,inK,inKU,prv,prv.trenutna));
        wireFlag2 = false;
        wireFlag1 = false;
      }
    }
  }
  
  
}

//u pocetku je bio samo prvi if blok, medjutim zbog nekog razloga nije radilo i onda je stavljen jos jedan if blok koji je identican prvom i radi... wierd...
