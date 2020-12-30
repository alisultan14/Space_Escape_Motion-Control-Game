void gameMotion() {
  //background(0);
  frameRate(20);
  //need to save previous frrame for motion detection? 
  //so, in order to do this, before reading the new frame, save the previous frame for comparison
  //below, we are saving i think (based on my analysis of the code)
  if (video.available()) {
    prevFrame.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height);
    //read the video? 
    video.read(); //so the "read" method literally reads the current video frame 
    //so i believe that read is going to enable processing to display the video frame by frame
  } //Note that this is only the end of the if statement confirming that 
  //there is actually video/frames available to read

  loadPixels();
  video.loadPixels(); //loading the pixels from each video frame 
  prevFrame.loadPixels(); //storing the pixels for the previous frame as an image 

  //next part of code: we need to create a double loop to walk through every pixel
  //begin loop: 
  for (int x=0; x<video.width; x++) {
    for (int y=0; y<video.height; y++) {

      int loc=x+y*video.width; //this will make sure every pixel is run through
      //this is "step1", 1D pixel location
      color current=video.pixels[loc]; //color variable being set to current index of video pixels
      //what is current color
      color previous=prevFrame.pixels[loc]; //runs through pixels of the previous frame


      //next code: comparing the colors (previous vs current) 
      //this is how to determine changes in image 

      float r1=red(current);
      float g1=green(current);
      float b1=blue(current);

      float r2=red(previous);
      float g2=green(previous);
      float b2=blue(previous);

      float diff=dist(r1, g1, b1, r2, g2, b2);

      //now need to find how different the colors are: 
      //if color of pixel has changed, then there is motion at that pixel 
      if (diff>threshold) {

        pixels[loc]=video.pixels[loc];
        pixels[loc] = color(127);

        goUp=true;
      } else {
        goUp=false;

        pixels[loc]=video.pixels[loc];
        pixels[loc] = color(0);
        //pixels[loc] = color(255);
      }

      //if(goUp){
      //  sY++;
      // // println("run");
      //}else{
      //  sY--;
      //  //println("d");
      //}
    }
  }


  if (goUp) {
    sY=sY-10;

    // println("run");
  } else {
    sY=sY+2;
    //println("d");
  }

  strokeWeight(1);
  stroke(127);
  fill(127);
  circle(10, 10, 120); //the moon
  fill(190);
  //craters on moon
  circle(15, 10, 10);
  circle(50, 25, 12);
  circle(35, 45, 14);
  circle(20, 25, 8);
  textSize(20);  //size of texts 
  textAlign(CENTER);
  text("Score: "+score, width*.9, height/20);  //this will update the score 
  text("Welcome to Space Run!", width/2, height/18); //title of game
  text("Avoid the Disco Asteroids at all costs!", width/2, height/18+20); //rules/instructions 


  astM1.display();
  astM1.move();
  astM2.display();
  astM2.move();
  astM3.display();
  astM3.move();
  astM4.display();
  astM4.move();
  astM5.display();
  astM5.move();

  ship2=new shipMotion(width/8, sY, 50, 16);
  ship2.shipDisplay();
  updatePixels();
}
