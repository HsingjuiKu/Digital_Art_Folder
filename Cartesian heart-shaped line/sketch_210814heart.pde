ArrayList<PVector> heart = new ArrayList<PVector>();
float a;
float alpha;

PImage img;
void setup() {
  size(493, 531);
  img = loadImage("/Users/guxingrui/Documents/Processing/sketch_210814heart/Des.jpg");
}

void draw() {
  
  image(img,0,0);
  smooth();
  translate(width / 2, height / 2);
  stroke(255,0,0);
  noFill();
  beginShape();
  for (PVector v : heart) {
    vertex(v.x, v.y);
  }
  endShape();
  float r = 10;
  float x = r * 16 * pow(sin(a), 3);
  float y = -r * (13 * cos(a) - 5 * cos(2 * a) - 2 * cos(3 * a) - cos(4 * a));
  heart.add(new PVector(x, y));
  ball b = new ball(x,y);
  b.draw();
  a+=1;
  //fill(255,0,0);
  //if (a < TWO_PI) {
  //  a += 0.01;
  //}
  //if (a >= TWO_PI) {
  //  alpha += 2;
  //  a+=0.01;
  //}
}
