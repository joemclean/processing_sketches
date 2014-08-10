import ddf.minim.*;
float row_y;

Minim minim;
AudioInput in;

void setup()
{
  size(displayWidth, displayHeight);

  minim = new Minim(this);
  
  // use the getLineIn method of the Minim object to get an AudioInput
  in = minim.getLineIn();
}

void draw()
{
  background(0);
  stroke(255, 204, 0);
  strokeWeight(4);
  
  row_y = height*.16;
  
  greyCircle(0, row_y, in.left.get(0));
  greyCircle(width*.125, row_y, in.left.get(0));
  greyCircle(width*.25, row_y, in.left.get(0));
  greyCircle(width*.375, row_y, in.left.get(0));
  greyCircle(width*.5, row_y, in.left.get(0));
  greyCircle(width*.625, row_y, in.left.get(0));
  greyCircle(width*.75, row_y, in.left.get(0));
  greyCircle(width*.875, row_y, in.left.get(0));
  greyCircle(width, row_y, in.left.get(0));
  
  row_y = height*.5;
  
  greyCircle(0, row_y, in.left.get(0));
  greyCircle(width*.125, row_y, in.left.get(0));
  greyCircle(width*.25, row_y, in.left.get(0));
  greyCircle(width*.375, row_y, in.left.get(0));
  greyCircle(width*.5, row_y, in.left.get(0));
  greyCircle(width*.625, row_y, in.left.get(0));
  greyCircle(width*.75, row_y, in.left.get(0));
  greyCircle(width*.875, row_y, in.left.get(0));
  greyCircle(width, row_y, in.left.get(0));
  
  row_y = height*.83;
  
  greyCircle(0, row_y, in.left.get(0));
  greyCircle(width*.125, row_y, in.left.get(0));
  greyCircle(width*.25, row_y, in.left.get(0));
  greyCircle(width*.375, row_y, in.left.get(0));
  greyCircle(width*.5, row_y, in.left.get(0));
  greyCircle(width*.625, row_y, in.left.get(0));
  greyCircle(width*.75, row_y, in.left.get(0));
  greyCircle(width*.875, row_y, in.left.get(0));
  greyCircle(width, row_y, in.left.get(0));
  
  // draw the waveforms so we can see what we are monitoring
  for(int i = 0; i < in.bufferSize() - 1; i++)
  {
    stroke(50, 50, 50);
    line( 4*i, height*.33 + in.left.get(i)*200, 4*i+4, height*.33 + in.left.get(i+1)*200 );
    line( 4*i, height*.66 + in.right.get(i)*200, 4*i+4, height*.66 + in.right.get(i+1)*200 );
    
    stroke(255, 204, 0);
    line( 4*i, height*.33 + in.left.get(i)*150, 4*i+4, height*.33 + in.left.get(i+1)*150 );
    stroke(0, 255, 255);
    line( 4*i, height*.66 + in.right.get(i)*150, 4*i+4, height*.66 + in.right.get(i+1)*150 );
    
    stroke(255);
    strokeWeight(4);
    line(4*i, height*.33 + in.left.get(i)*100, 4*i+4, height*.33 + in.left.get(i+1)*100 );
    line( 4*i, height*.66 + in.right.get(i)*100, 4*i+4, height*.66 + in.right.get(i+1)*100 );
  }
  
  
}

void greyCircle(float x, float y, float diameter_percent) {
    fill(30, 30, 30);
    noStroke();
    ellipse(x, y, diameter_percent * 500, diameter_percent * 500);
    fill(100, 100, 100);
    ellipse(x, y, diameter_percent * 50, diameter_percent * 50);
  }
