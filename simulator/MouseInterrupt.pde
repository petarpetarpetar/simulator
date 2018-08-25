void mouseReleased()
{
  if (mouseY>50 && mouseY<80) {
    //opcije:
    if (mouseX>145 && mouseX<235) {
      if (edit) {
        edit=false;
        selectFlag=false;
        clickFlag=false;
        select=0;
      } else {
        edit=true;
      }
    }

    if (mouseX>250 && mouseX<340)
      if (wireWrite) {
        wireFlag1= false;
        wireFlag2=false;
        wireWrite=false;
      } else {
        wireWrite=true;
      }


    if (mouseX>355 && mouseX<455) {
      if (auFlag) {
        auFlag=false;
      } else {
        auFlag=true;
      }
    }
  }

  if (edit  || selectFlag) {
    print("click ");
    clickX = mouseX;
    clickY = mouseY;
    clickFlag = true;
  }
  if (selectFlag) {

    clickX=mouseX;
    clickY=mouseY;
    clickFlag2 = true;
  }
  checkOverB();
  if (wireWrite)
  {
    if ((prv = checkOver()) != null)
    {
      if (!wireFlag1)
      {
        inK=prv;
        inKU=inK.trenutna;
        wireFlag1 = true;
        markX1 = mouseX;
        markY1 = mouseY;
      } else
      {
        wireFlag2 = true;
        markX2 = mouseX;
        markY2 = mouseY;
        kon.add(new konekcija(markX1, markY1, markX2, markY2, inK, inKU, prv, prv.trenutna));
        wireFlag2 = false;
        wireFlag1 = false;
      }
    }
  }
}

//u pocetku je bio samo prvi if blok, medjutim zbog nekog razloga nije radilo i onda je stavljen jos jedan if blok koji je identican prvom i radi... wierd...
