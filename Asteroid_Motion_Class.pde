class asteroidMotion{ //class 
  
  float ypos;
  float xpos;
  float speedx;
  color colR;
  color colG;
  color colB;
  float size;
  
  //object constructor below 
  
  asteroidMotion(float tempXpos, float tempYpos, float tempSpeedx,color tempR,color tempG, color tempB,float tempSize){
    xpos=tempXpos;   //turn arguments in constructor into variables 
    ypos=tempYpos;
    speedx=tempSpeedx;
    colR=tempR;
    colG=tempG;
    colB=tempB;
    size=tempSize;
  }
  
  
  void move(){  //method to move asteroids 
    xpos=xpos - speedx;
  }
  
  void display(){  //method to display 
   // ypos=constrain(ypos,height/6.5,height);  //prevent asteroids from going above moon 
    if(xpos-size/2<=width/8+50/2 && xpos-size/2>=width/8-25 && ypos+size/2>=sY-16/2 && ypos-size/2<=sY+16/2){
       //score=0;
       crash=true;
        if (!boom.isPlaying()) {
        boom.play();
      }
       //if ship is hit by asteroid, go to menu 
    }
   if(xpos<=0){  //if asteroid goes past ship, increase speed and score, return to other side of window 
      score=score+1;
      speedx=speedx+.5;
      xpos=width;
      ypos=int(random(height));
       size=random(20,40);
      colR=int(random(255));
      colG=int(random(255));
      colB=int(random(255));
      
    }else{  //means asteroids are floating across screen 
      fill(colR,colG,colB);
    image(asteroid,xpos,ypos,size+10,size);
    //}
  }
  
}
  
    
  
}
