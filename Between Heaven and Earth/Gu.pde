Rectangle r;

void setup(){
  size(1200, 800);
  noFill();
      r = new Rectangle(
      random(300, width - 300),
      random(300, height - 300),
      300,
      color(0, 0, 0),
      4,
      3
    );
}

void draw(){
  PImage img;
  img = loadImage("/Users/guxingrui/Documents/Processing/Gu/17207668.jpg");
  background(img);
    r.update();
    r.display();
    r.bound();
}
