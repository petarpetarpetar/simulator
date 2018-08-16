public class Komponenta extends {

    int posX,posY,type,output;
    public inputA,inputB;
    ArrayList<*Konekcije> izlazi = new ArrayList<*Konekcije>();//ja se nadam da ovako funkcionisu pointeri
    ArrayList<PShape> simboli = new ArrayList<PShape>();

    public Komponenta (int px,int py,int typ) 
    {
        posX=px;posY=py;type=typ;
        inputA = -1; // ako je input -1 znaci da jos nemoze da se racuna output
        inputB = -1;
    }

    public void dodajIzlaz(Konekcija *k) 
    {
        izlazi.add(k);
    }
    void updateInput(int n)
    {
        inputA = inputB = n;
    }
    void updateInput(int n,int input)
    {
        if(input==0)inputA=n;
        else if (input==1)inputB=n;
        updateOutput();
    }
    void updateOutput()
    {
        if(inputA!=-1&&inputB!=-1)
        {
            for (*Komponente k : komp) {
                if(komp[i].type==4)
                {
                    k.updateInput(data)
                }
                else
                {
                    k.updateInput(data,input);
                }
            }
        }
    }
    void drawSimbol()
    {
        //
    }
    void proveraPripadanja(int x,int y)
    {
        //
    }
    //public void updateInput(int n) trebao bi

}
