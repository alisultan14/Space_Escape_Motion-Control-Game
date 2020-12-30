void workAround() {

  f=createFont("Arial", 50, true);
  textFont(f);
  ff = createFont("Arial", 16);
  intro=new SoundFile(this, "introsound.mp3");
  mainMusic= new SoundFile(this, "mainmusic.wav");
  boom= new SoundFile(this, "boom.mp3");
  imalmostthere = new SoundFile(this, "imalmostthere.mp3");
  Alarm = new SoundFile(this, "Alarm.mp3");
  sentence=new Letterr[message.length()];
  r=createFont("Arial", 20);
  q=createFont("Georgia", 20);
  demoMousenum=3367;
  demoMotionNum=4271;
  asteroid=loadImage("asteroid.png");

  //initializing video: 
  video=new Capture(this, width, height, 30);
  video.start();
  prevFrame=createImage(video.width, video.height, RGB);
  //end of video initialization

  textS=12;
  pitboy=loadImage("pitboy.png");
  pitboy.resize(725, 600);
  spacebackground=loadImage("spacebackground.jpg");
  spacebackground.resize(640, 480);
  gameship=loadImage("gameship.png");
  gameship.resize(50, 50);
  logo=loadImage("Space.png");
  logo.resize(300, 300);
  int xloc=265;
  score=0; //start score at zero 
  //initialize disco asteroids below;
  ast1=new Asteroid(width, (random(height)), 1, int(random(255)), int(random(255)), int(random(255)), 20);

  ast2=new Asteroid(width, (random(height)), 6, int(random(255)), int(random(255)), int(random(255)), 30);

  ast3=new Asteroid(width, (random(height)), 10, int(random(255)), int(random(255)), int(random(255)), 40);

  ast4=new Asteroid(width, (random(height)), 4, int(random(255)), int(random(255)), int (random(255)), 50);

  ast5=new Asteroid(width, random(height), 2, int(random(255)), int(random(255)), int(random(255)), 100);

  ast6=new Asteroid(width, random(height), 9, int(random(255)), int(random(255)), int(random(255)), 100);

  ast7=new Asteroid(width, random(height), 3, int(random(255)), int(random(255)), int(random(255)), 100);


  astM1=new asteroidMotion(width, (random(height)), 1, int(random(255)), int(random(255)), int(random(255)), 20);

  astM2=new asteroidMotion(width, (random(height)), 6, int(random(255)), int(random(255)), int(random(255)), 30);

  astM3=new asteroidMotion(width, (random(height)), 10, int(random(255)), int(random(255)), int(random(255)), 40);

  astM4=new asteroidMotion(width, (random(height)), 4, int(random(255)), int(random(255)), int (random(255)), 50);

  astM5=new asteroidMotion(width, random(height), 2, int(random(255)), int(random(255)), int(random(255)), 100);



  for (int i=0; i<message.length(); i++) {
    sentence[i]=new Letterr(xloc, height/2, message.charAt(i));
    xloc+=textWidth(message.charAt(i));
  }
  f = createFont( "Arial", 20, true);
  y=height;
}
