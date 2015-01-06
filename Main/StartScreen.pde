public class StartScreen {
  
  PImage backgr;
  int screenInt;
  PImage foxes;
  PImage foxes2;
  PImage conductor;
  PImage conductor2;
  PShape help;
  boolean foxesOver;
  boolean conductorOver;
  
  StartScreen(int screenInt){
    this.backgr = loadImage("stage2.jpg");
    this.backgr.resize(width, height);
    
    this.screenInt = screenInt;
    
    this.foxes = loadImage("tanssi.png");
    this.foxes2 = loadImage("tanssi2.png");
    this.conductor = loadImage("conductor.png");
    this.conductor2 = loadImage("conductor2.png");
    this.help = loadShape("help-circled_2.svg");
    
    this.foxesOver = false;
    this.conductorOver = false;
  }
  
  void draw() {
    
    background(this.backgr);
    
    imageMode(CENTER);
    
    if (this.foxesOver == false) {
      image(this.foxes, width/2, height/2, width/2, height/2);
    } else {
      image(this.foxes2, width/2, height/2, width/2, height/2);
    }
    if (this.conductorOver == false) {
      image(this.conductor, width/2, (height/4)*3.1, width/4, height/6);
    } else {
      image(this.conductor2, width/2, (height/4)*3.1, width/4, height/6);
    }
    
    shape(this.help, width*0.935, height*0.92, width*0.04, width*0.04);
    
    fill(255); //valkoinen
    stroke(0); //musta
    strokeWeight(1);
    rectMode(CENTER);
    //rect(width/2, height/2, 100, 100);
    //rect(width/2, height/2+300, 100, 100);
  }
  
  void checkMouseOver(int mouseXpos, int mouseYpos) {
    if (mouseX>width/4 && mouseX<(width/4)*3 && mouseY>height/4 && mouseY<(height/4)*3) {
      this.foxesOver = true;
      this.conductorOver = false;
    } else if (mouseX>(width/8)*3 && mouseX<(width/8)*5 && mouseY>((height/4)*3.1)-height/12 && mouseY<(height/4)*3.1+height/12) {
      this.foxesOver = false;
      this.conductorOver = true;
    } else {
      this.foxesOver = false;
      this.conductorOver = false;
    }
  }
  
}
