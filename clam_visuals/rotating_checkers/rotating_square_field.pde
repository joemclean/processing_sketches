float rect_size;
float offset;

void setup() {
  size(displayWidth, displayHeight);
  frameRate(30);
  noStroke();
  rect_size = 150;
  offset = 0;
}

//draw the main grid.
void draw() {
  background(0);
  for (int r = 0; (r * rect_size < height); r = r+1) {
    float y_height = r * rect_size;
    for (int c = 0; (c * rect_size < width); c = c+1){
      pushMatrix();
      translate((c * rect_size), y_height);
      
      translate((rect_size/2),(rect_size/2));
      rotate(radians(90 * (offset % rect_size) / rect_size));
      translate((-rect_size/2),(-rect_size/2));
      
      
      if ((c+r) % 4 == 0) {
        yellowRect(0, 0, rect_size);
      } else if ((c+r) % 4 == 1) {
        blueRect(0, 0, rect_size);
      } else if ((c+r) % 4 == 2) {
        whiteRect(0, 0, rect_size);
      } else if ((c+r) % 4 == 3) {
        greyRect(0, 0, rect_size);
      }
      popMatrix();
    }
  }

  //draw the overlay grid
  
  pushMatrix();
  translate(-(rect_size*8) + offset, 0);
  for (int r = 0; (r * rect_size < height); r = r+1) {
    float y_height = r * rect_size;
    for (int c = 0; (c * rect_size < width); c = c+1){
      
      pushMatrix();
      translate((c * rect_size * 2 + (r * rect_size)), y_height);
      
      translate((rect_size/2),(rect_size/2));
      rotate(radians(90 * (offset % rect_size) / rect_size) * -1);
      translate((-rect_size/2),(-rect_size/2));
      
      if ((c+r) % 4 == 0) {
        yellowRect(0, 0, rect_size);
      } else if ((c+r) % 4 == 1) {
        blueRect(0, 0, rect_size);
      } else if ((c+r) % 4 == 2) {
        whiteRect(0, 0, rect_size);
      } else if ((c+r) % 4 == 3) {
        greyRect(0, 0, rect_size);
      }
      
      popMatrix();
    }
  }
  popMatrix();
  
  pushMatrix();
  translate(-offset, 0);
  for (int r = 0; (r * rect_size < height); r = r+1) {
    float y_height = r * rect_size;
    for (int c = 0; (c * rect_size < width); c = c+1){
      
      
      pushMatrix();
      translate((c * rect_size * 2 + (r * rect_size)), y_height);
      
      translate((rect_size/2),(rect_size/2));
      rotate(radians(90 * (offset % rect_size) / rect_size));
      translate((-rect_size/2),(-rect_size/2));
      
      
      if ((c+r) % 4 == 0) {
        yellowRect(0, 0, rect_size);
      } else if ((c+r) % 4 == 1) {
        blueRect(0, 0, rect_size);
      } else if ((c+r) % 4 == 2) {
        whiteRect(0, 0, rect_size);
      } else if ((c+r) % 4 == 3) {
        greyRect(0, 0, rect_size);
      }
      
      popMatrix();
    }
  }
  popMatrix();
  
  offset = offset + 1;
  if (offset > 8*rect_size) {
    offset = 0;
  }
}


void yellowRect(float x, float y, float size) {
    fill(255, 204, 0);
    rect(x, y, size, size);
}

void blueRect(float x, float y, float size) {
    fill(0, 255, 255);
    rect(x, y, size, size);
}

void whiteRect(float x, float y, float size) {
    fill(255, 255, 255);
    rect(x, y, size, size);
}

void greyRect(float x, float y, float size) {
    fill(50, 50, 50);
    rect(x, y, size, size);
}
