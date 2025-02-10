void setup() {
  size(800, 700);
  rectMode(CENTER);
 
  shapeMode(CENTER);
}

void draw() {
  /*
  rect(width/2,height/2,400,400);
  */
  myFractal(width/2, height/2, 100);
  
  ellipse(0,0,400,400);
   ellipse(width/2,height/2,10,10);
}

public void myFractal(float x, float y, float size) {


  rect(x,y,size,size);
  triangle(x,y,x+50,y,x+25,y-50);
  if(size > 10){
    myFractal(x+(size/1.5),y,size/1.5);
    myFractal(x-size/1.5,y,size/1.5);
    myFractal(x,y+size/1.5,size/1.5);
    myFractal(x,y-size/1.5,size/1.5);
  }
  
}
