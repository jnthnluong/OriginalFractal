void setup() {
  size(800, 700);
  rectMode(CENTER);
  noLoop();
  shapeMode(CENTER);
}

void draw() {
  /*
  rect(width/2,height/2,400,400);
   */


  myFractal(width/2,height/2,150);



  //ellipse(0, 0, 400, 400);
  //ellipse(width/2, height/2, 10, 10);
  //line(width/2+100, height/2+50, width/2, height/2+50);
}

public void myFractal(float x, float y, float size) {  
  //rect(x, y, size, size);
  //ellipse(x1, y1-size/2, size, size);
  

  if (size > 10) {
  
    myFractal(x+size,y-size,size/2);
    myFractal(x-size,y+size,size/2);
    myFractal(x+size,y+size,size/2);
    myFractal(x-size,y-size,size/2);
   
    
   
  }
  ellipse(x,y,size,size);
}
