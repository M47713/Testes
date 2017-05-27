float x=random(50, 550);
float y=random(50, 550);
float a=random(50, 550);
float b=random(50, 550);
int c= 255;
int d=255;
void setup() {
  size(600, 600);
  noStroke();
}
void draw() {
  float p = pit(x, y, mouseX, mouseY);
  background(120);
  fill(c);
  ellipse(x, y, 50, 50);
  fill(d);
  rect(a, b, 70, 50);
  stroke(0);
  if (p<25) {
    c = 0;
  } else {
    c = 255;
  }
  if (mouseX>a && mouseX<a+70
    && mouseY>b && mouseY<b+50) {
    d = 0;
  } else {
    d = 255;
  }
  println(mouseX);
  println(a);
}

float pit(float x1, float y1, float x2, float y2) {
  float dx=x2-x1;
  float dy=y2-y1;
  float p = sqrt((dx*dx)+(dy*dy));
  return(p);
}