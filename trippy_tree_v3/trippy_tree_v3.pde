float angle = 0;
float theta;   

void setup() {
  size(displayWidth, displayHeight);
  frameRate(30);
  strokeWeight(19);
  noStroke();
}

void draw() {
  
  background(0);

  float d1 = (sin(angle));
  
  // Bottom Trees
  
  pushMatrix();
  translate(width/2,height);
  translate(0,-55);
  
  // White tree 
  stroke(255,255,255);
  theta = radians((d1*50)+40);
  branch(height*.6);
  
  // Yellow tree 
  stroke(255, 204, 0);
  line(0,0,0,55);
  theta = radians((-d1*50)+220);
  branch(height*.6);
  popMatrix();
  
  
  // Top Trees
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(radians(180));
  translate(0,height*.5);
  translate(0,-55);
  
  // Grey tree
  stroke(50,50,50);
  theta = radians((-d1*50)+40);
  branch(height*.6);
  
  // Blue tree
  stroke(0, 255, 255);
  theta = radians((d1*50)+220);
  line(0,0,0,55);
  branch(height*.6);
 
  popMatrix();
  
  angle += 0.01;
}

void branch(float h) {
  // Each branch will be 2/3rds the size of the previous one
  h *= 0.66;
  
  // All recursive functions must have an exit condition!
  // Here, ours is when the length of the branch is 15 pixels or less
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
