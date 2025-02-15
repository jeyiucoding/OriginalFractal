int petals = 10; 
public void setup(){ 
  size(1000,1000); 
  background(253, 210, 232); 
  rectMode(CENTER); Flower(240,4); 
} 
public void Flower(float radius, float layers){ 
  if(layers == 0){ 
  return; 
} 
  int red = 255; 
  int green = 3; 
  int blue = 62; 
  float angle = TWO_PI/petals; 
  for (int i = 0; i< petals; i++){ 
    float y = sin(i*angle)*radius; 
    float x = cos(i*angle)*radius; 
    fill(red, green, blue); 
    stroke(140, 13, 23); 
    ellipse(500+x,400+y, radius, radius-10); 
    Flower(radius*0.55, layers-1); 
    fill(0); ellipse(500,400,50,50); 
     fill(51, 90, 40); 
} 
textSize(128);
text("VALENTINES?", 100, 900); }
