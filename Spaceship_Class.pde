class Ship{
  float shipx;
  float shipy;
  float shipLength;
  float shipHeight;
  
  Ship(float tempshipx,float tempshipy,float tempshipLength,float tempshipHeight){
    shipx=tempshipx;
    shipy=tempshipy;
    shipLength=tempshipLength;
    shipHeight=tempshipHeight;
  }
  
  void shipDisplay(){
    //now code the ship:
  
  fill(0,255,0);
 // shipy=constrain(shipy,height/5,height);
  //stroke(127);
  //triangle(shipx,shipy,shipx-30,shipy-5,shipx-30,shipy+5);//tail of the ship
  image(gameship,shipx,shipy,shipLength,shipHeight); //body of the ship 
  //fill(0);
  //ellipse(shipx+20,shipy,8,5);
  //ellipse(shipx,shipy,8,5);
  //ellipse(shipx-20,shipy,8,5);
  }
}
