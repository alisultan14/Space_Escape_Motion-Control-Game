//video variables: 
import processing.video.*;
Capture video;
PImage prevFrame;
float threshold=8;
PImage asteroid;
boolean goUp=false;
float sY=400; 

boolean astR=false;
//text variables
PFont ff;

// Variable to store text currently being typed
String typing = "";

// Variable to store user_ID text when return is hit
String user_ID = "";
int userscore=0;


String[] s;







// variable
boolean haloPlay=true;
boolean start=true;
boolean crash=false;
PFont f;
PImage demoMouse;
PImage demoMotion;
int demoMousenum;
int demoMotionNum;
import processing.sound.*;
SoundFile mainMusic;
SoundFile imalmostthere;
SoundFile boom;
SoundFile intro;
SoundFile Alarm;
Letterr[] sentence;
PImage logo;
PImage shipintro;
PImage gameship;
PImage spacebackground;
PImage pitboy;
String message="JAAB";
PFont r;
PFont q;
boolean introscreen;
boolean storypage;
boolean addinstructions;
boolean camera;
boolean mouse;
boolean gameplay;
boolean gameover;
boolean username;
boolean instructions;
boolean leaderboard;
float y;
String info =" After losing the rest of the JAAB crew, \n an exploration mission into the Andromeda,\n You are stranded in a foreign solar system’s asteroid belt.\n Survive as long as possible to make it back to your crew. ";
//create font variable
PFont fstory;
//define varaible for position 
int textS;

int score;  //intitialize variables here 
//float shipLength=50;
//float shipHeight=16;
int starX;
int starY;
//boolean begin=(false);

Asteroid ast1;  //objects 
Asteroid ast2;
Asteroid ast3;
Asteroid ast4;
Asteroid ast5;
Asteroid ast6;
Asteroid ast7;



asteroidMotion astM1;
asteroidMotion astM2;
asteroidMotion astM3;
asteroidMotion astM4;
asteroidMotion astM5;



shipMotion ship2;
Ship ship1;
Ship shipIntro;
int top=6;

//run setup

//define size and allow it to be 3-D

//create font 

void setup() {
  size(640, 480, P3D);
  //declaring the font

  introscreen=true; 
  gameplay=false; 
  storypage=false;
  addinstructions=false;
  username=false;
  gameover=false;
  instructions=false;
  mouse=false;
  camera=false;
  leaderboard=false;

  workAround();
  intro.play();
}














void draw() {
  if (score>=100 && score <=110 && !imalmostthere.isPlaying()) {
    imalmostthere.play();
    println("hello");
  }

  if (!crash) {
    if (!haloPlay) {
      if (!mainMusic.isPlaying()) {
        mainMusic.play();
      }
    }
  } else {
    mainMusic.stop();
  }
  if (introscreen==true && gameplay==false && storypage==false && addinstructions==false && username==false && gameover==false && instructions==false ) {
    background(175);
    introscreen();
  } else if (introscreen==false && gameplay==false && storypage==true && addinstructions==false && username==false && gameover==false && instructions==false) {
    //code for storypage
    background(0);
    //create Sting 



    //run draw 

    background(0);
    fill(255);
    translate(0, 0);
    //roate text around x axis 
    rotateX(PI/4);
    textFont(f);
    textSize(textS);
    textAlign(CENTER);
    text(info, width/2, y);
    y-=.35;
    //if (y<height/2) {
    //  y--;
    //}
    if (y+textS<0) { 
      introscreen=false; 
      gameplay=false; 
      storypage=false;
      addinstructions=false;
      username=false;
      gameover=false;
      instructions=true;
    }
  } else if (introscreen==false && storypage==false &&gameplay==false && addinstructions==false && username==false && gameover==false && instructions==true ) {
    //code for additionals instructions page
    background(0);
    noTint();
    imageMode(CENTER);
    image(pitboy, width/2, height/2);
    rectMode(CENTER);
    stroke(0, 255, 0);
    fill(0);
    textSize(14);
    textMode(CENTER);
    rect(width/2+40, height*.5-40, 75, 75);
    fill(0, 255, 0);
    text("Use Mouse Or Motion Control", width/2+40, height*.2);
    text("To Manuever Your Ship Away From The Asteroids", width/2+40, height*.2+15);
    text("Click \n To See \n Demo", width/2+40, height*.5-15-40);
    text("For Mouse Control: \n Move Mouse Up And Down \n To Avoid Asteroids", width/4+80, height*.75-95);
    text("For Motion Control: \n Your Ship is Continuously \n Moving Down \n Move Your Left hand to \n Move Your Ship Upwards \n To Avoid Asteroids", (width*.75)-15, (height*.75)-102);
    
    if (mouseX >=width/2-37.5+40 &&
      mouseX <=width/2+37.5+40&&
      mouseY >=height/2-37.5-40 &&
      mouseY <=height/2+37.5-40 &&
      mousePressed==true) {
      introscreen=false; 
      gameplay=false; 
      storypage=false;
      addinstructions=true;
      username=false;
      gameover=false;
      instructions=false;
    }
  } else if ((introscreen==false && storypage==false && gameplay==false && addinstructions==true && username==false && gameover==false && instructions==false )) {
    background(0);
    noTint();
    fill(0);
    strokeWeight(3);
    stroke(0);
    line(width/2, 0, width/2, height);
    demoMouse=loadImage("IMG_"+demoMousenum+".jpg");
    demoMouse.resize(width/2, height);
    image(demoMouse, width*.25, height*.5);
    demoMousenum++;
    if (demoMousenum==3569) {
      demoMousenum=3367;
    }
    demoMotion=loadImage("IMG_"+demoMotionNum+".jpg");
    demoMotion.resize(width/2, height);
    image(demoMotion, width*.75, height*.5);
    demoMotionNum++;
    if (demoMotionNum==4466) {
      demoMotionNum=4271;
    }
    frameRate(60);
    rectMode(CENTER);
    stroke(0, 255, 0);
    fill(0);
    textSize(14);
    textMode(CENTER);
    rect(width*.25, height*.75, 75, 75);
    rect(width*.75, height*.75, 75, 75);
    fill(0, 255, 0);
    text("MOUSE", width*.25, height*.75);
    text("CAMERA", width*.75, height*.75);




    if (mouseX >=width*.25-37.5 &&
      mouseX <=width*.25+37.5&&
      mouseY >=height*.75-37.5 &&
      mouseY <=height*.75+37.5 &&
      mousePressed==true) {
      introscreen=false; 
      gameplay=false; 
      storypage=false;
      addinstructions=false;
      username=true;
      gameover=false;
      instructions=false;
      mouse=true;
      camera=false;
      score=0;
    }
    if (mouseX >=width*.75-37.5 &&
      mouseX <=width*.75+37.5&&
      mouseY >=height*.75-37.5 &&
      mouseY <=height*.75+37.5 &&
      mousePressed==true) {
      introscreen=false; 
      gameplay=false; 
      storypage=false;
      addinstructions=false;
      username=true;
      gameover=false;
      instructions=false;
      camera=true;
      mouse=false;
      score=0;
    }
  }

  //code for the user to select either the camera or key board to play the game
  else if ((introscreen==false && storypage==false && gameplay==false && addinstructions==false && username==true && gameover==false && instructions==false)) {
    background(0);
    int indent = width/2;

    // Set the font and fill for text
    textFont(ff);
    fill(0, 255, 0);

    // Display everything
    text("Type Your Username Below. \n Hit enter to Play. ", indent, height/2);
    text("Username: " + typing, indent, height/2+65);
    //text("user_ID text: " + user_ID, indent, 230);
    //code to enter username
  } else if ((introscreen==false && storypage==false && gameplay==true && addinstructions==false && username==false && gameover==false && instructions==false)) {
    if (camera==true && mouse==false) {
      gameMotion();
      if (crash==true) {
        userscore=score;
        introscreen=false; 
        gameplay=false; 
        storypage=false;
        addinstructions=false;
        username=false;
        gameover=true;
        instructions=false;
        mouse=false;
      }
    }


    //code for the game to be played with camera
    else if (mouse==true && camera==false) {
      //code for the game to be played with camera
      game();
      if (crash==true) {
        userscore=score;
        introscreen=false; 
        gameplay=false; 
        storypage=false;
        addinstructions=false;
        username=false;
        gameover=true;
        instructions=false;
        leaderboard=false;
        mouse=false;
      }
    }
  } else if
    ((introscreen==false && storypage==false && gameplay==false && addinstructions==false && username==false && gameover==true && instructions==false)) {

    background(0);
    String[] names =loadStrings("names.txt");  
    String[] score_s =loadStrings("scores.txt");  
    int[] scorelb=int(score_s);
    //This are variables are to check if I need to remove anything
    int min_score_index=100000000;
    int remove_index=names.length*2;

    //If my files has already more than "top" my size of the leaderboard
    if (names.length<top) {
      //Add the user to  my file
      names=append(names, user_ID);
      scorelb=append(scorelb, userscore);
    } else {
      //If I have already "top" names on my file, check wich one  I need to remove= not your team and user with score lower than current user

      //For loop to check your scores and name to find which one, if any, to remove
      for (int i=0; i<names.length; i++) {
        //You cannot remove your own team
        if (!names[i].equals("brian") && !names[i].equals("ali") && !names[i].equals("adolfo") && !names[i].equals("jon")) {
          //If is not your own team, identify the user with the lowest score
          if (scorelb[i]<min_score_index  ) {
            //If that current user in your list has score better than the current player, the player will not show on the leaderboard
            if (scorelb[i]<userscore) {
              min_score_index=scorelb[i];
              remove_index=i;
            }
          }
        }
      }
      //If I have found someone to rememove,
      if (remove_index!=names.length*2) {
        //Remove it!!
        names[remove_index]=user_ID;
        scorelb[remove_index]=userscore;
      }
    }







    //Create a Int Dict from my 2 arrays (just to use the .sort method)
    IntDict inventory=new IntDict();

    //populate our dictionary
    for (int i=0; i<names.length; i++) {
      inventory.set(names[i], scorelb[i]);
    }

    ////Sort the values
    inventory.sortValuesReverse();




    //To display. You will be using "text()" and not println
    String[] names_keys=inventory.keyArray();
    String[] scores_list=str(inventory.valueArray());
    for (int i=0; i<names_keys.length; i++) {
      //println(i, "Name=", names_keys[i], "Score=", scores_list[i] );
      textMode(CENTER);
      fill(0);
      stroke(0, 255, 0);
      rectMode(CENTER);
      rect(width/2, height*.10, 75, 75);
      fill(0, 255, 0);
      textSize(20);
      textAlign(LEFT);
      text((i+1) + ".Captain  " + names_keys[i], width*.25, (height/2)+(i*25));
      textAlign(RIGHT);
      text(scores_list[i], width*.75, (height/2)+(i*25));
      textSize(14);
      textAlign(CENTER);
      text("Click Here \n To Restart", width/2, height*.10);
      if (!Alarm.isPlaying()) {
        Alarm.play();
      }
      textAlign(CENTER);
      textSize(25);
      text("LEADERBOARD", width/2, height*.35);
      strokeWeight(3);
      line(width/4, height*.4, width*.75, height*.4);
      if (mouseX >=width/2-37.5 &&
        mouseX <=width/2+37.5&&
        mouseY >=height*.1-37.5 &&
        mouseY <=height*.1+37.5 &&
        mousePressed==true) {
        astR=true;
        introscreen=false; 
        gameplay=false; 
        storypage=false;
        addinstructions=false;
        username=false;
        gameover=false;
        instructions=true;
        mouse=false;
        camera=false;
        leaderboard=false;
        crash=false;
        haloPlay=false;
        Alarm.stop();
        workAround();
      }
    }




    //Save the info for the next time someone plays the game
    saveStrings("data/names.txt", names_keys);
    saveStrings("data/scores.txt", scores_list );
  }
}




void keyPressed() {
  // If the return key is pressed, save the String and clear it
  if ((introscreen==false && storypage==false && gameplay==false && addinstructions==false && username==true && gameover==false && instructions==false)) {
    if (key == '\n' ) {
      user_ID = typing;
      introscreen=false; 
      gameplay=true; 
      storypage=false;
      addinstructions=false;
      username=false;
      gameover=false;
      instructions=false;
      //s=append(s,user_ID);
      // saveStrings("data/names.txt", s);
      // A String can be cleared by setting it equal to ""
      typing = "";
    } else {
      // Otherwise, concatenate the String
      // Each character typed by the user is added to the end of the String variable.
      typing = typing + key;
    }
    //println(s);
  }
}
