void game(){
   background(0); //later on, may make an image (space)
   frameRate(60);
   
   ship1=new Ship(width/8,mouseY,50,16);
 
  space(); //call for loop functions to create star background constantly updating, looks like hyperspace 
  
 
  strokeWeight(1);
  stroke(127);
  fill(127);
  circle(10,10,120); //the moon
  fill(190);
  //craters on moon
  circle(15,10,10);
  circle(50,25,12);
  circle(35,45,14);
  circle(20,25,8);
  textSize(20);  //size of texts 
  textAlign(CENTER);
  text("Score: "+score,width*.9,height/32);  //this will update the score 
 text("Welcome to Space Run!",width/2,height/18); //title of game
 text("Avoid the Disco Asteroids at all costs!",width/2,height/18+20); //rules/instructions 
  
  //below, call object methods 
  
  ast1.display();
  ast1.move();
  ast2.display();
  ast2.move();
  ast3.display();
  ast3.move();
  ast4.display();
  ast4.move();
  ast5.display();
  ast5.move();
  ast6.display();
  ast6.move();
  ast7.display();
  ast7.move();
  
  ship1.shipDisplay(); 
  


}
