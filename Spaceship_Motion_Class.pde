class shipMotion{
  float shipx;
  float shipy;
  float shipLength;
  float shipHeight;
  
  shipMotion(float tempshipx,float tempshipy,float tempshipLength,float tempshipHeight){
    shipx=tempshipx;
    shipy=tempshipy;
    shipLength=tempshipLength;
    shipHeight=tempshipHeight;
  }
  
  void shipDisplay(){
    //now code the ship:
  
  fill(#E7F707);
  //shipy=constrain(shipy,height/6,height);
  stroke(127);
  //triangle(shipx,shipy,shipx-30,shipy-5,shipx-30,shipy+5);//tail of the ship
  image(gameship,shipx,shipy,shipLength,shipHeight); //body of the ship 
  //fill(0);
  //ellipse(shipx+20,shipy,8,5);
  //ellipse(shipx,shipy,8,5);
  //ellipse(shipx-20,shipy,8,5);
  
  if(sY<0){
    sY=sY+7;
        

  }
  
  if(sY>height){
    sY=sY-7;
  }
  }
}
