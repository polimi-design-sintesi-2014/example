void setup() {
  size (200, 200);
}

void draw() {
  rettangolo (20, 20, 80, 120); //draw "rettangolo" defined in the function below
  quadrato (10, 10, 150);  //draw "quadrato" defined in the function below
}

//here we start creating two new function, we will call it quadrato and rettangolo
//we define which variable and which kind we will use in the function

void rettangolo(int xUp, int yUp, int xDown, int yDown) { 
  stroke(255,0,0); //color red
  line (xUp, yUp, xDown, yUp);
  line (xDown, yUp, xDown, yDown);
  line (xDown, yDown, xUp, yDown);
  line (xUp, yDown, xUp, yUp);
}

void quadrato (int x, int y, int size) {
  stroke(0, 255, 0); //color green
  line (x, y, x+size, y);
  line (x+size, y, x+size, y+size);
  line (x+size, y+size, x, y+size);
  line (x, y+size, x, y);
}

