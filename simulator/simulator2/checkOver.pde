komponenta checkOver()
{
  for(komponenta k :komp)
  {
    if(k.overK(mouseX,mouseY)!=-1)
    {
      return k;
    }
  }
  return null;
}
