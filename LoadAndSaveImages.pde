// Random Avatar Generator

PImage eyeImages[] = new PImage[10];
PImage hairImages[] = new PImage[10];
PImage mouthImages[] = new PImage[10];
int currentEye = 0;
int currentHair = 0;
int currentMouth = 0;
boolean frameSaved = false;
int headCount = 0;

void setup() {
  size(600, 850);
  background(128);
  textAlign(CENTER);
  text("Press 'R' to generate random image, 'S' to save", width/2, height/2);
}

void draw() {}

void keyPressed() {
  if (key == 's' || key == 'S') {
    saveFrame("Output\\head" + headCount + ".png");
    headCount++;
  }
  
  if (key == 'r' || key == 'R') {
    currentEye = floor(random(5));
    currentHair = floor(random(3));
    currentMouth = floor(random(7));
    
    background(128);
    hairImages[currentHair] = loadImage("Images\\Hair\\head0" + (currentHair + 1) + ".png"); 
    mouthImages[currentMouth] = loadImage("Images\\Mouth\\mouth0" + (currentMouth + 1) + ".png");
    eyeImages[currentEye] = loadImage("Images\\Eyes\\eye0" + (currentEye + 1) + ".png");
    
    image(hairImages[currentHair], 0, 0);
    image(mouthImages[currentMouth], 0, 0);
    image(eyeImages[currentEye], 0, 0);
  }
}
