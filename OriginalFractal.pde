void setup() {
  size(800, 700);
  background(120,100,100);
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
  

  if (size > 1) {
    fill(255,0,0);
    myFractal(x+size,y-size,size/2);
    fill(0,255,0);
    myFractal(x-size,y+size,size/2);
    fill(0,0,255);
    myFractal(x+size,y+size,size/2);
    fill(255,255,0);
    myFractal(x-size,y-size,size/2);
   fill(160);
    
   
  }
  
  ellipse(x,y,size,size);
}
