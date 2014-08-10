float max_diameter;
float diameter_percent;
float angle = 0;
float theta;   

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

  background(0);
  frameRate(30);
  stroke(255);
  strokeWeight(10);
  // Let's pick an angle 0 to 90 degrees based on the mouse position
  float a = (mouseX / (float) width) * 90f;
  // Convert it to radians
  theta = radians((d1*50)+40);
  // Start the tree from the bottom of the screen
  translate(width/2,height);
  // Draw a line 120 pixels
  line(0,0,0,-120);
  // Move to the end of that line
  translate(0,-120);
  // Start the recursive branching!
  branch(height*.5);
  
  stroke(255, 255, 255);
  rotate(radians(180));
  theta = radians((d1*50)+40);
  translate(0,-120);
  translate(0,height);
  branch(height*.5);
  
  stroke(255, 204, 0);
  rotate(radians(180));
  theta = radians((-d1*50)+40);
  translate(0,-120);
  translate(0,height);
  branch(height*.5);
  
  stroke(0, 255, 255);
  rotate(radians(180));
  theta = radians((-d1*50)+40);
  translate(0,-120);
  translate(0,height);
  branch(height*.5);
  
  angle += 0.02;
}

void branch(float h) {
  // Each branch will be 2/3rds the size of the previous one
  h *= 0.66;
  
  // All recursive functions must have an exit condition!!!!
  // Here, ours is when the length of the branch is 2 pixels or less
  if (h > 15) {
    pushMatrix();    // Save the current state of transformation (i.e. where are we now)
    rotate(theta);   // Rotate by theta
    line(0, 0, 0, -h);  // Draw the branch
    translate(0, -h); // Move to the end of the branch
    branch(h);       // Ok, now call myself to draw two new branches!!
    popMatrix();     // Whenever we get back here, we "pop" in order to restore the previous matrix state
    
    // Repeat the same thing, only branch off to the "left" this time!
    pushMatrix();
    rotate(-theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
  }
}
