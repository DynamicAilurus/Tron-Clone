Player play;
boolean[] keys=new boolean[100];

void setup(){
  size(1280, 960);
  play=new Player();
  frameRate(60);
  
}

class Player{
  float xPos=0, yPos=0, xVelo=0, yVelo=0, speed=5, grav=0.21875, invFrames=0, width=50, height=50;
  
  PImage sprite;
  
  boolean move=false;
  
  Player(){
    this.sprite=loadImage("data/images/player/test.png");
  }
  
  void update(){
    //Beginning of frame reset stuff
    this.move=false;
    this.invFrames--;
    
    
    //Horizontal movement
    if(keys[39]){
      this.xVelo=this.speed;
      this.move=true;
    }else if(keys[37]){
      this.xVelo=-1*this.speed;
      this.move=true;
    }
    
    //Vertical movement
    if(keys[90]){
      this.yVelo=-6;
    }
    
    this.yVelo+=this.grav;
    
    image(this.sprite, this.xPos, this.yPos, this.width, this.height);
  }
}

class Wall{
  Wall(){
    
  }
}

class collisPlane{
  boolean[][] plane=new boolean[1280][960];
  
  void addImage(){
    
  }
  
  void addArray(boolean[][] bool){
    
  }
  
  void addRect(int x, int y, int w, int h){
    
  }
  
  boolean check(){
    
    return false;
  }
}

void draw(){
  background(0);
  play.update();
}


void keyPressed(){
  keys[keyCode]=true;
}

void keyReleased(){
  keys[keyCode]=false;
}
