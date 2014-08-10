float rect_size;

void setup() {
  size(displayWidth, displayHeight);
  frameRate(30);
  noStroke();
  rect_size = 100;
}

void draw() {
  background(0);
  for (int r = 0; (r * rect_size < height); r = r + 1) {
    float y_position = r * rect_size;
    for (int c = 0; (c * rect_size < width); c = c+1){
      if (c % 4 == 0) {
        yellowRect((c * rect_size), y_position, rect_size);
      } else if (c % 4 == 1) {
        blueRect((c * rect_size), y_position, rect_size);
      } else if (c % 4 == 2) {
        whiteRect((c * rect_size), y_position, rect_size);
      } else if (c % 4 == 3) {
        greyRect((c * rect_size), y_position, rect_size);
      } 
    }
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
