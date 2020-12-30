void space(){ //this shows the stars using a for loop:

starX=int(random(50,100)); //randomly decide the distance between starts when incrementing, makes them seem to move 
starY=int(random(50,100));
  for(int x=0;x<=width;x+=starX){  //loop
    for(int y=0;y<=height;y+=starY){//second loop
      strokeWeight(random(1,5)); //makes them appear different each frame 
      stroke(255);
      point(x,y); //point function for stars
    }
    }
}
