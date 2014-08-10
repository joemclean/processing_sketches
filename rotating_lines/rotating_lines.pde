int y = 100;
int rotation_angle = 0;
float width_angle = 0;

void setup() {
  size(displayWidth, displayHeight);
  stroke(255);
  frameRate(30);
}

void draw() { 
  
  background(0);
  noStroke();
  
  //widths of lines 1,2, and 3 respectively.
  float d1 = (cos(width_angle));
  float d2 = (cos(width_angle +(PI*.33)));
  float d3 = (cos(width_angle +(PI*.66)));
  
  translate(width/2, height/2);

  rotate(radians(rotation_angle)/4);
  for (int i = 0; i<110; i = i+1) {
    fill(255,255,255);
    rect(
      (width/4 * i)-(width/2),
      -1*(height), 
      .15*(width)*d1, 
      height*3
     );
  }
  
  rotate(radians(-rotation_angle*1.5)/4);
  for (int i = 0; i<110; i = i+1) {
    fill(0,255,255);
    rect(
      (width/4 * i)-(width/2),
      -1.5*(height), 
      .15*(width)*d2, 
      height*3
    );
  }
  
  rotate(radians(-rotation_angle*1.5)/4);
  for (int i = 0; i<110; i = i+1) {
    fill(255, 204, 0);
    rect(
      (width/4 * i)-(width/2),
      -1.5*(height), 
      .15*(width)*d3, 
      height*3);
  }
  
  rotation_angle = rotation_angle + 1;
  width_angle += 0.02;
}
