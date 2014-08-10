float max_diameter;
float diameter_percent;
float angle = 0;

void setup() {
  size(displayWidth, displayHeight);
  stroke(255);
  frameRate(30);
  noStroke();
}

void draw() {
  
  background(0);

  float d1 = (sin(angle));
  float d2 = (sin(angle + PI/2));
  float d3 = (sin(angle + PI/4));
  
  noStroke();
  fill(255, 204, 0);
  
  //top row
  
  translate (width/2, height/2);
  yellowCircle(0, 0, d1, width * 3);
  whiteCircle(0, 0, d2, width * 2.7);
  blueCircle(0, 0, d3, width * 2.4);
  greyCircle(0, 0, d1, width * 2.1);
  yellowCircle(0, 0, d3, width * 1.8);
  blueCircle(0, 0, d1, width * 1.5);
  greyCircle(0, 0, d3, width * 1.2);
  whiteCircle(0, 0, d1, width * .9);
  blueCircle(0, 0, d2, width * .6);
  yellowCircle(0, 0, d3, width * .3);

  angle += 0.02;
}


void yellowCircle(float x, float y, float diameter_percent, float diameter) {
    fill(255, 204, 0);
    ellipse(x, y, abs(diameter_percent * (diameter/2))+50, abs(diameter_percent * (diameter/2))+50);
}
  
void blueCircle(float x, float y, float diameter_percent, float diameter) {
    fill(0,255,255);
    ellipse(x, y, abs(diameter_percent * (diameter/2))+50, abs(diameter_percent * (diameter/2))+50);
  }
  
void whiteCircle(float x, float y, float diameter_percent, float diameter) {
    fill(255, 255, 255);
    ellipse(x, y, abs(diameter_percent * (diameter/2))+50, abs(diameter_percent * (diameter/2))+50);
  }
  
void greyCircle(float x, float y, float diameter_percent, float diameter) {
    fill(30, 30, 30);
    ellipse(x, y, abs(diameter_percent * (diameter/2))+50, abs(diameter_percent * (diameter/2))+50);
  }
