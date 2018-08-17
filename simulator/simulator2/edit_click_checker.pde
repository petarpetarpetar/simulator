void edit()
{
  if(clickFlag){
    clickFlag=false;
    if(clickY>10 && clickY<40){
       if(clickX>10 && clickX<40){
         select=1;
         selectFlag=true;
       }
       else if(clickX>50 && clickX<80){
         select=2;
         selectFlag=true;
       }
    }
    
    
    else if(clickY>50 && clickY<80){
      
      if(clickX>10 && clickX<40){
        select=3;
        selectFlag=true;
      }
      
      else if(clickX>50 && clickX<80){
        select=4;
        selectFlag=true;
      }
      
      else if(clickX>90 && clickX<133){
        select=5;
        selectFlag=true;
      }
      
    }   
  }  
}
