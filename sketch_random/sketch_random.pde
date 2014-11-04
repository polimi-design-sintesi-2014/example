// datatype : float 
void setup (){
size (400,400);
//randomSeed (1);

}

int i = 0;

void draw (){
  if (i <  300){
  float f = random (0,200);
  float g = random (200,400);
  strokeWeight (random (10));
  stroke (0, random(125));

  line (f, 0, g, 400);
  i ++;
  
  } else { 
  background (255);
  i = 0;
}
  println (i);
}






