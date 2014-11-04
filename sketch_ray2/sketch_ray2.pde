
float angle = 0;
int r = 0;
int rayPoints = 12;
float x = 0;
float y = 0;
int val =1; 

void setup(){
size (400,400);
}

void draw (){
  background (150);
  noStroke();

  for (int i =0; i<360; i = i+(360/rayPoints)) {
  angle = radians (i);
  x = (width/2)+sin(angle)*r;
  y = (height/2)+cos(angle)*r;
  ellipse (x,y,10,10);
  }
  r = r+val ;
  if (r == 200){
    val = -1;
  } else if (r == 15){
    val = 1;
  }
}
  
