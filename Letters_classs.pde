// defining the class
class Letterr{
  float x;
  float y;
  float targetX;
  float targetY;
  char character;
  float rotateX;
  boolean atarget;
  
  Letterr(float tempx,float tempy,char tcharacter){
    targetX=tempx;
    targetY=tempy;
    character=tcharacter;
     rotateX=random(2*PI);
     x=random(width);
     y=random(height);
  }
  
 
  
  // function to replacee
  void home(){
    x=lerp(x,targetX,0.03);
    y=lerp(y,targetY,0.03);
    rotateX=lerp(rotateX,0,0.03);
    if(dist(x, y, targetX, targetY)<=.003){
      start=false;
      
    }
  }
  
    
  // function to display the letters
  void show(){
    fill(0);
    textAlign(LEFT);
    pushMatrix();
    translate(x,y);
    rotate(rotateX);
    fill(random(255),random(255),random(255));
    text(character,0,0);
    popMatrix();
  }
  

}
