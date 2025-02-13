int r, b, g;
public void setup(){
  size(500,500);
  rectMode(CENTER);
  Rcolor();
}
public void draw(){
  background(0);
  myFractal(250,250,480);
}
public void mouseClicked(){
  Rcolor();
}
public void Rcolor(){
  r = (int)(random(255));  
  g = (int)(random(255)); 
  b = (int)(random(255));
}
public void myFractal(float x, float y, float size){ 
  fill(r, g, b);
  ellipse(x, y, (size / 2) * 2, (size / 2) * 2);  
  
  if (size > 10) {
   
    myFractal(x , y- size / 4, size / 2); 
    myFractal(x , y+ size / 4, size / 2); 
    myFractal(x- size / 4 , y, size / 2); 
    myFractal(x + size / 4, y, size / 2); 
  }
}
