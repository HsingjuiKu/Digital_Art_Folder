class Rectangle{
  float x;
  float y;
  float w;
  float h;
  color c;
  float vx;
  float vy;
  boolean status;
  int i;
  
  Rectangle(float _x, float _y, float _w, color _c, float _vx, float _vy){
    x = _x;
    y = _y; 
    w = _w;
    c = _c;
    vx = _vx;
    vy = _vy;
    status = true;
    i=1;
    
  }
  
  void display(){
    stroke(c);
    rect(x, y, w, w);
    ellipse(x+w/2,y+w/2,300,300);
  }
  void update(){
    x += vx;
    y += vy;
    if(status == true){
      w-=0.2;
      x+=0.5;
      y+=0.5;
    }else{
      w+=0.2;
      x-=0.5;
      y-=0.5;
    }
    
    if(w>=300){
      status = true;
    }
    if(w<=212.1){
      status = false;
    }
  }
  void bound(){
    if(x <= 50 ){
      vx = random(1,4);
    }else if( x +300 >= width){
      vx = random(-4,-1);
    }
    if(y <= 50 ){
      vy = random(1,4);
    }else if( y + 300 >= height){
      vy = random(-4,-1);
    }
  }
 }
  
