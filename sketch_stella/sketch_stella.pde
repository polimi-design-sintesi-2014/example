size (400,400);

int radius1 = 100;
int radius2 = 90;
int starPoints = 20;

beginShape ();

for (int i =0; i <360; i =i+ int(360/starPoints)){
  float angle1 = radians(i);
  float x1 = (sin(angle1)*radius1);
  float y1 = (cos(angle1)*radius1);
  vertex (x1+width/2, y1+width/2);

  float angle2 = radians(i + (int(360/starPoints))/2);
  float x2 = (sin(angle2)*radius2);
  float y2 = (cos(angle2)*radius2);
  vertex (x2+width/2, y2+width/2);
}

endShape(CLOSE);
