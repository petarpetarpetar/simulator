class wire
{
  public int posX1,posY1,posX2,posY2;
 wire(int posX1,int posY1,int posX2,int posY2)
 {
   this.posX1=posX1;
   this.posY1=posY1;
   this.posX2=posX2;
   this.posY2=posY2;
 }
 void drawW()
 {
  line(posX1,posY1,posX1,posY2);
  line(posX1,posY2,posX2,posY2);
 }
 
 
 
}
