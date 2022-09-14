void setup() {
  size(600, 600);  //feel free to change the size
}
void draw() {
  boolean shift =true;
  for(int y = 600; y>-100; y=y-70){
    for (int x = -50; x<700; x+=100){
      if (shift==true)
        sScale(x+50,y);
      else
        sScale(x,y);
    }
    if (shift==true)
      shift = false;
    else
      shift = true;
  }
}

}
void scale(int x, int y) {
  int r = 100 + (int)(Math.random()*12);
  int g = 150 + (int)(Math.random()*40);
  int b = 100 + (int)(Math.random()*12);
  fill(r,g,b);
  beginShape();
  curveVertex(x,y-118);
  curveVertex(x,y-118);
  curveVertex(x-75,y-100);
  curveVertex(x-150,y);
  curveVertex(x-25,y+100);
  curveVertex(x,y+100);
  curveVertex(x,y+100);
  endShape();
  beginShape();
  curveVertex(x,y-118);
  curveVertex(x,y-118);
  curveVertex(x+75,y-100);
  curveVertex(x+150,y);
  curveVertex(x+25,y+100);
  curveVertex(x,y+100);
  curveVertex(x,y+100);
  endShape(); 
}

