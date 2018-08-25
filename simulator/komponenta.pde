class komponenta
{
  public int posX, posY, type, inputA=-1, inputB=-1, output, trenutna;
  konekcija inA ;
  konekcija inB ;
  ArrayList<konekcija> out = new ArrayList<konekcija>(0);




  komponenta(int px, int py, int typ) {
    rect(0, 0, 100, 100);
    posX=px;
    posY=py;
    type=typ;
    if (type == 5)
    {
      output = 0;
    }
  }
  void updatePin(int p, konekcija k)
  {
    if (p == 0)
    {
      out.add(k);
    }
    if (p == 1)
    {
      inA = k;
    }
    if (p == 2)
    {
      inB = k;
    }
  }
  boolean overRect(int x, int y, int rWidth, int rHeight, int mX, int mY) {
    if (mX >= x && mX <= x+rWidth && mY >= y && mY <= y+rHeight) 
    {
      return true;
    } else 
    {
      return false;
    }
  }
  boolean buttonP()
  {
    return overRect(posX-10, posY-10, 20, 20, mouseX, mouseY);
  }
  void updateButton()
  {
    if (output == 0)
    {
      output = 1;
    } else
    {
      output = 0;
    }
  }
  int overK(int x, int y)
  {
    int tempX = posX;
    int tempY = posY;
    if (type==1) {   
      if (overRect(tempX-20, tempY-10, 10, 5, x, y)) {
        trenutna=1;
        return 1;
      }//inA
      if (overRect(tempX-20, tempY+5, 10, 5, x, y)) {
        trenutna=2;
        return 2;
      }//inB
      if (overRect(tempX+17, tempY-2, 10, 5, x, y)) {
        trenutna=0;
        return 0;
      }//out
    } else if (type==2) {
      if (overRect(tempX-24, tempY-7, 10, 5, x, y)) {
        trenutna=1;
        return 1;
      }//inA
      if (overRect(tempX-24, tempY+5, 10, 5, x, y)) {
        trenutna=2;
        return 2;
      }//inB
      if (overRect(tempX+15, tempY-2, 10, 5, x, y)) {
        trenutna=0;
        return 0;
      }//out
    } else if (type==3) {
      if (overRect(tempX-10, tempY-2, 10, 5, x, y)) {
        trenutna=1;
        return 1;
      }//in
      if (overRect(tempX+28, tempY-1, 10, 5, x, y)) {
        trenutna=0;
        return 0;
      }//out
    } else if (type==4) {
      if (overRect(tempX-20, tempY-2, 15, 4, x, y)) {
        trenutna=1;
        return 1;
      }//in
    } else if (type==5) {
      if (overRect(tempX+10, tempY-2, 15, 4, x, y)) {
        trenutna=0;
        return 0;
      }//out
    }
    return -1;
  }
  void updateInput(int data, int pin)
  {
    if (pin == 1)
    {
      inputA = data;
      if (type == 3 || type == 4 || type == 5)
      {
        inputB = inputA;
      }
    } else if (pin == 2)
    {
      inputB = data;
    }
    if (inputA != -1 && inputB != -1)
    {
      updateOutput();
    }
  }
  void updateOutput()
  {
    if (type == 1) {   
      if (inputA==1 && inputB==1) {
        output = 1;
      } else {
        output = 0;
      }
    } else if (type == 2) {
      if (inputA==1 || inputB==1) {
        output= 1;
      } else {
        output = 0;
      }
    } else if (type == 3) {
      if (inputA == 1)
      {
        output = 0;
      } else
      {
        output = 1;
      }
    } else if (type == 4)
    {
      if (inputA == 0)
      {
        output = 0;
      } else
      {
        output = 1;
      }
    }
    for (konekcija k : out)
    {
      k.prosledi(this, output);
    }
  }
  void drawK()
  {
    //println("a");
    int tempX = posX;
    int tempY = posY;
    if (type==1) {  
      fill(255);
      rect(tempX-20, tempY-10, 10, 5);//inA
      rect(tempX-20, tempY+5, 10, 5);//inB
      rect(tempX+17, tempY-2, 10, 5);
      rect(tempX-10, tempY-15, 10, 30);
      arc(tempX, tempY, 35, 30, -HALF_PI, HALF_PI);
    } else if (type==2) {
      image(s, tempX-20, tempY-15, 50, 30);
    } else if (type==3) {
      fill(255);
      rect(tempX-10, tempY-2, 10, 5);
      triangle(tempX, tempY-15, tempX, tempY+15, tempX+20, tempY+2);  
      rect(tempX+28, tempY-1, 10, 5);
      ellipse(tempX+23, tempY+2, 10, 10);
    } else if (type==4) {
      if (output == 1)
      {
        fill(255);
        rect(tempX-20, tempY-2, 15, 4);

        fill(255, 0, 0);
        ellipse(tempX, tempY, 25, 25);
      } else
      {
        fill(255);
        rect(tempX-20, tempY-2, 15, 4);
        fill(60, 60, 60);
        ellipse(tempX, tempY, 25, 25);
      }
    } else if (type==5) {
      if (output==0)
      {

        fill(255, 0, 0);
        rect(tempX-10, tempY-10, 20, 20);
        fill(255);
        rect(tempX-6, tempY-6, 12, 12);
        line(tempX-10, tempY-10, tempX-6, tempY-6);
        line(tempX+10, tempY-10, tempX+6, tempY-6);
        line(tempX-10, tempY+10, tempX-6, tempY+6);
        line(tempX+10, tempY+10, tempX+6, tempY+6);
        rect(tempX+10, tempY-2, 15, 4);
      } else
      {

        fill(0, 255, 0);
        rect(tempX-10, tempY-10, 20, 20);
        fill(255);
        rect(tempX-6, tempY-6, 12, 12);
        line(tempX-10, tempY-10, tempX-6, tempY-6);
        line(tempX+10, tempY-10, tempX+6, tempY-6);
        line(tempX-10, tempY+10, tempX-6, tempY+6);
        line(tempX+10, tempY+10, tempX+6, tempY+6);
        rect(tempX+10, tempY-2, 15, 4);
      }
    }
  }
}
