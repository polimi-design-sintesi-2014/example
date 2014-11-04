

int pad = 20 ;  // distanza iniziale dal bordo

int x = pad;
int y = pad;
int val = 2;


void setup(){
  size (400,400);
}

void draw(){

// background(127);
  rectMode(CENTER);
  rect (x,y,20,20);
  if ( y == pad && x < width-pad) {

    x = x+val;
    y = pad ;
  } else if ( x == width-pad && y < height-pad) {
    x = x;
    y = y+val;
  } else if ( x > pad && y > pad){
    x = x-val;
    y = y;
  } else if ( x == pad && y > pad) {
    x = x;
    y = y-val;
  } 
  
  // ogni volta che competa il giro, aumenta 'pad'
 if ( x == pad && y == pad+20 ){
    pad = pad +20; 
    y = pad;
    }
println (x +" / "+ y + " / " + pad ); // debug
      
}
  
