void introscreen() {
  if (intro.isPlaying() || start) {
    background(0);
    for (int i=0; i<sentence.length; i++) {
      sentence[i].show();
      sentence[i].home();
    }
    stroke(0, 255, 0);
    strokeWeight(3);
    line(width/2-35, height*.65, width/2-35, height*.8);
    line(width/2-35, height*.8, width/2, height*.9);
    line(width/2-35, height*.65, width/2, height*.55);
    line(width/2-35, height*.65, width/2, height*.55);
    line(width/2, height*.55, width/2+35, height*.65);
    line(width/2+35, height*.65, width/2+35, height*.8);
    line(width/2+35, height*.8, width/2, height*.9);
    line(width/2, height*.65, width/2, height*.7);
    line(width/2, height*.75, width/2, height*.8);
    line(width/2-35, height*.7, width/2, height*.75);
    line(width/2, height*.7, width/2+35, height*.75);
    fill(0, 255, 0);
    triangle(0, 0, 0, height/4, width/4, 0);
    triangle(0, 3*height/4, 0, height, width/4, height);
    triangle(3*width/4, 0, width, 0, width, height/4);
    triangle(width, 3*height/4, width, height, 3*width/4, height);
  } else {
    haloPlay=false;
    background(0);
    imageMode(CENTER);   
    tint(0, 255, 0);
    image(spacebackground, width/2, height/2);
    tint(55, 176, 213);
    image(logo, width/2, height/2);
    textMode(CENTER);
    textAlign(CENTER);
    fill(0, 255, 0);
    textSize(20);
    //textFont(r);
    textAlign(CENTER);
    text("Press Any Key To Continue", width/2, 385);
    textMode(LEFT);
    textAlign(LEFT);
    //textFont(q);
    fill(#D02AF2);
    text("DEVELOPERS:", 3, 17);
    fill(#4DECFF);
    text("Jon Davis", 3, 37);
    text("Adolfo Sanchez", 3, 57);
    text("Ali Sultan", 3, 77);
    text("Brian Ortiz", 3, 97);
    textMode(LEFT);
    textAlign(RIGHT);
    fill(#931EF5);
    text("CS-104 Final Project Fall 2019", 630, 470);
    textAlign(CENTER);
    fill(0, 255, 0);
    textSize(30);
    text("SPACE ESCAPE", width/2, height*.1);
    if (keyPressed) {
      introscreen=false; 
      gameplay=false; 
      storypage=true;
      addinstructions=false;
      username=false;
      gameover=false;
      instructions=false;
    }
  }
}
