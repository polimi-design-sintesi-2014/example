// using trigonometry to draw 

size (400,400);
float angle = 0;
int r1 = 150;
int r2 = 115;
int rayPoints = 9;
float x1 = 0;
float y1 = 0;
float x2 = 0;
float y2 = 0;

noFill();
ellipse (width/2, height/2, r1*2,r1*2);
ellipse (width/2, height/2, r2*2,r2*2);

for (int i =0; i<360; i = i+(360/rayPoints)) {
  angle = radians (i);
  x1 = (width/2)+sin(angle)*r1;
  y1 = (height/2)+cos(angle)*r1;
  x2 = (width/2)+sin(angle)*r2;
  y2 = (height/2)+cos(angle)*r2;
  
  line (x1,y1,x2,y2);

}
  
