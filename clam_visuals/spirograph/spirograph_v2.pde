// A Polar coordinate

float r = 0;
int counter = 0;
float theta = 0;

void setup() {

size(displayWidth,displayHeight);

background(0);

frameRate(100);

smooth();

}

void draw() {
  translate(width/2,height/2);
  background(0);
  r = 0;
  theta = 0;
  for (int i = 0; i <1000; i = i + 1){
    
    float x = r * cos(theta);
    float y = r * sin(theta);
    
    noStroke();
    
    /*
    if(i % 100 == 0) {
      stroke(0);
      line(0,0, x, y);
    }
    if(i+50 % 100 == 0) {
      stroke(0);
      line(0,0, x, y);
    }
    */
    int dot_size = 20;
    int dot_size2 = 10;
    
    pushMatrix();
    rotate(radians(-counter));
    fill(50);
    ellipse(x, y , dot_size2, dot_size2);
    fill(255);
    ellipse(-x, -y , dot_size2, dot_size2);
    popMatrix();
    
    pushMatrix();
    rotate(radians(counter));
    fill(255, 204, 0);
    ellipse(x, y , dot_size+(r/20), dot_size+(r/20));
    fill(0, 255, 255);
    ellipse(-x, -y , dot_size+(r/20), dot_size+(r/20));
    popMatrix();
    
    theta += (0.02+abs(cos(radians(counter+180))/50));
    r=r+1;
  }
  counter = counter + 1;
  if (counter > 360) {
    counter = 1;
  }
}
