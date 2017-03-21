PImage shish;
PImage kebab;
int shishX= 400; 
int shishY=400;
float kebabX;
float kebabY;
int y=600;
int kebabcount=0; 
import processing.sound.*;
SoundFile file;
void setup()
{
  size(900, 700);
  shish = loadImage ("shishstick.png");
  kebab = loadImage ("kebab.png");
  kebab.resize(200, 200);
  file = new SoundFile(this, "bachke.mp3");
  file.play();

  kebabX = random(0, width);
  kebabY = -100; 
  image(kebab, random(width), random(height));
}
void draw ()
{
  background(18, 172, 252);
  image(shish, shishX, 400);
  image(kebab, kebabX, kebabY);
  kebabY= kebabY + 5;
  if (kebabY>700)
  {
    kebabY=0;
    kebabX=random(width);
  }
  if (keyPressed)
    if (key== CODED)
    {
      if ( keyCode == RIGHT)
      {
        shishX+=8;
      }
    }
  if (keyPressed)
    if (key== CODED)
    {
      if ( keyCode == LEFT)
      {
        shishX-=8;
      }
    }
  if (dist(kebabX+100, kebabY+100, shishX, shishY)<50)
  {
    kebabcount+=1;
    kebabX=random(width); 
    kebabY= -60;
  }
  fill (25, 0, 0);
  textSize (23);
  ellipse(shishX, shishY, 20, 20);
  ellipse(kebabX+100, kebabY+100,20, 20);
  text(kebabcount, 100, 100);
  if(kebabcount>0)
  {
    image(kebab,shishX-100, shishY+200);
  }
   if(kebabcount>1)
  {
    image(kebab,shishX-100, shishY+175);
  }
   if(kebabcount>2)
  {
    image(kebab,shishX-100, shishY+150);
  }
   if(kebabcount>3)
  {
    image(kebab,shishX-100, shishY+125);
  }
    if(kebabcount>3)
  {
    image(kebab,shishX-100, shishY+100);
  }
  if(kebabcount>4)
  {
    image(kebab,shishX-100, shishY+75);
  }
  if(kebabcount>5)
  {
    image(kebab,shishX-100, shishY+50);
  }
  if(kebabcount>6)
  {
    image(kebab,shishX-100, shishY+25);
  }
  if(kebabcount>7)
  {
    image(kebab,shishX-100, shishY+0);
  }
  if(kebabcount>8)
  {
    image(kebab,shishX-100, shishY-25);
  }
  if(kebabcount>9)
  {
    image(kebab,shishX-100, shishY-50);
  }
  if(kebabcount>10)
  {
    background(0);
    
  }
  
}