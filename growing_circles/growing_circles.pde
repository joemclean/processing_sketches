float max_diameter;
float diameter_percent;
float angle = 0;

void setup() {
  size(displayWidth, displayHeight);
  stroke(255);
  frameRate(30);
  noStroke();
  max_diameter = height/6;
}

void draw() {
  
  background(0);

  float d1 = (sin(angle));
  float d2 = (sin(angle + PI/2));
  float d3 = (sin(angle + PI/4));
  
  noStroke();
  fill(255, 204, 0);
  
  //top row
  
  float row_y = height*.25;
  
  greyCircle(0, row_y, d1);
  greyCircle(width*.125, row_y, d2);
  greyCircle(width*.25, row_y, d3);
  greyCircle(width*.375, row_y, d2);
  greyCircle(width*.5, row_y, d1);
  greyCircle(width*.625, row_y, d3);
  greyCircle(width*.75, row_y, d2);
  greyCircle(width*.875, row_y, d1);
  greyCircle(width, row_y, d3);
  
  
  yellowCircle(0, row_y, d3);
  yellowCircle(width*.125, row_y, d1);
  blueCircle(width*.25, row_y, d2);
  yellowCircle(width*.375, row_y, d1);
  yellowCircle(width*.5, row_y, d3);
  yellowCircle(width*.625, row_y, d2);
  whiteCircle(width*.75, row_y, d3);
  blueCircle(width*.875, row_y, d2);
  yellowCircle(width, row_y, d1);
  
  //middle row
  row_y =  height*.5;
  
  greyCircle(0, row_y, d3);
  greyCircle(width*.125, row_y, d1);
  greyCircle(width*.25, row_y, d2);
  greyCircle(width*.375, row_y, d3);
  greyCircle(width*.5, row_y, d2);
  greyCircle(width*.625, row_y, d1);
  greyCircle(width*.75, row_y, d3);
  greyCircle(width*.875, row_y, d2);
  greyCircle(width, row_y, d1);
  
  blueCircle(0, row_y, d1);
  whiteCircle(width*.125, row_y, d2);
  yellowCircle(width*.25, row_y, d3);
  yellowCircle(width*.375, row_y, d2);
  blueCircle(width*.5, row_y, d1);
  yellowCircle(width*.625, row_y, d3);
  yellowCircle(width*.75, row_y, d1);
  yellowCircle(width*.875, row_y, d3);
  whiteCircle(width, row_y, d1);
  
  //bottom row
  row_y =  height*.75;
  
  greyCircle(0, row_y, d2);
  greyCircle(width*.125, row_y, d3);
  greyCircle(width*.25, row_y, d1);
  greyCircle(width*.375, row_y, d3);
  greyCircle(width*.5, row_y, d2);
  greyCircle(width*.625, row_y, d1);
  greyCircle(width*.75, row_y, d3);
  greyCircle(width*.875, row_y, d2);
  greyCircle(width, row_y, d1);
  
  yellowCircle(0, row_y, d2);
  blueCircle(width*.125, row_y, d3);
  yellowCircle(width*.25, row_y, d2);
  whiteCircle(width*.375, row_y, d1);
  yellowCircle(width*.5, row_y, d2);
  yellowCircle(width*.625, row_y, d1);
  blueCircle(width*.75, row_y, d2);
  yellowCircle(width*.875, row_y, d1);
  yellowCircle(width, row_y, d1);
  
  angle += 0.02;
}


void yellowCircle(float x, float y, float diameter_percent) {
    fill(255, 204, 0);
    ellipse(x, y, diameter_percent * (max_diameter/2), diameter_percent * (max_diameter/2));
  }
  
void blueCircle(float x, float y, float diameter_percent) {
    fill(0,255,255);
    ellipse(x, y, diameter_percent * (max_diameter/2), diameter_percent * (max_diameter/2));
  }
  
void whiteCircle(float x, float y, float diameter_percent) {
    fill(255, 255, 255);
    ellipse(x, y, diameter_percent * (max_diameter/2), diameter_percent * (max_diameter/2));
  }
  
void greyCircle(float x, float y, float diameter_percent) {
    fill(30, 30, 30);
    ellipse(x, y, diameter_percent *1.5 * (max_diameter/2 + 50), diameter_percent * 1.5 * (max_diameter/2 + 50));
  }
