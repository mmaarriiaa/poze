PImage img; 
import processing.sound.*; 
SoundFile file;
color culoare; 

void setup() {
  size (1200, 800);
  background (255);
  img = loadImage("poza2.jpg");
  file = new SoundFile(this, "sunet.WAV");
  file.play();
}

void draw() {
  image(img, 0, 0);
  loadPixels();  
  color culoare=get(mouseX, mouseY);
  println(culoare); 
}

void mouseDragged() {
  if (culoare > -10000000 && !file.isPlaying()) {
    file.play();
    println("play");
  }
  if (culoare <= 8000000 && file.isPlaying()) {
     file.pause();
     println("stop");
   }
  } 
   
 
