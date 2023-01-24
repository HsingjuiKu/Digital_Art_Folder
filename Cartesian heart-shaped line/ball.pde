class ball{
  float x;
  float y;
  ball(float _x,float _y){
    x = _x;
    y = _y;
  }
  void draw(){
    
    ellipse(x,y,10,10);
    fill(#FF0000);
    stroke(255,0,0);
  }
}
