int y = 100;
int rotation_angle = 0;

void setup() {
  size(displayWidth, displayHeight);
  stroke(255);
  frameRate(30);
}

void draw() { 
  
  background(0);
  noStroke();
  
  //bg center pinwheels
  drawPinwheel(width*.5, height*.5, height*1.8, -1, 1);
  drawPinwheel(width*.5, height*.5, height*1.5, 1, 2);
  drawPinwheel(width*.5, height*.5, height*1.2, -1, 0);
  drawPinwheel(width*.5, height*.5, height*.9, 1, 1);
  drawPinwheel(width*.5, height*.5, height*.6, -1, 2);
  drawPinwheel(width*.5, height*.5, height*.3, 1, 0);
  


  rotation_angle = rotation_angle + 1;
}

void drawPinwheel(float x, float y, float size, float rotation_direction, int color_offset) {
  pushMatrix();
  translate(x, y);
  for (int i = 0; i<18; i = i+1) {
    if ((i + color_offset) % 3 == 0) {
      rotate(radians(rotation_angle*rotation_direction)/20);
      fill(0,0,0);
    } else if ((i + color_offset) % 3 == 1) {
      rotate(radians(rotation_angle*rotation_direction)/20);
      fill(0,255,255);
    } else if ((i + color_offset) % 3 == 2) {
      rotate(radians(rotation_angle*rotation_direction)/20);
      fill(255, 204, 0);
    }
    rectMode(CENTER);
    rect(
      0,
      0, 
      (size), 
      (size)
     );
  }
  popMatrix();
}
