class konekcija
{
 int x1,x2,y1,y2,inputPin,outputPin;
 komponenta input,output;
  konekcija(int x1_,int y1_,int x2_,int y2_,komponenta in,int inU,komponenta out,int outU)
 {
   x1 = x1_;
   y1 = y1_;
   y2 = y2_;
   x2 = x2_;
   input = in;
   output = out;
   inputPin = inU;
   outputPin = outU;
   input.updatePin(inU,this);
   output.updatePin(outU,this);
 }
 void drawK()
 {
   line(x1,y1,x1,y2);
   line(x1,y2,x2,y2);
 }
 void prosledi(komponenta k,int data)
 {
   if(k == input)
   {
      output.updateInput(data,outputPin);
   }
   else 
   {
     input.updateInput(data,inputPin);
   }
 }
}
