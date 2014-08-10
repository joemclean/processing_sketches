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
  
  
  drawPinwheel(width/2, height/2, height*.75, -1);
  drawPinwheel(width/2, height/2, height*.5, 1);
  drawPinwheel(width*.2, height*.2, height*.5, -1);
  drawPinwheel(width*.2, height*.8, height*.5, 1);
  drawPinwheel(width*.8, height*.2, height*.5, -1);
  drawPinwheel(width*.8, height*.8, height*.5, 1);
  
  drawPinwheel(width/2, height/2, height*.25, -1);
  


  rotation_angle = rotation_angle + 1;
}

void drawPinwheel(float x, float y, float size, int rotation_direction, int color_offset) {
  pushMatrix();
  translate(x, y);
  for (int i = 0; i<18; i = i+1) {
    if ((i + color_offset) % 3 == 0) {
      rotate(radians(rotation_angle*rotation_direction)/30);
      fill(0,0,0);
    } else if ((i + color_offset) % 3 == 1) {
      rotate(radians(rotation_angle*rotation_direction)/20);
      fill(0,255,255);
    } else if ((i + color_offset) % 3 == 2) {
      rotate(radians(rotation_angle*rotation_direction)/10);
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
