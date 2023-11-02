class minseo {
  minseo() {
  };
  minseo(float p, float q, float r) {
    x = p;
    y = q;
    d = r;
    vx=random(-3, 3);
    vy=random(-3, 3);
  }
  float x, y, d, vx, vy;
  void call(){
    x += vx;
    y += vy;
    if (x > width || x < 0) vx = -vx;
    if (y > height || y < 0) vy = -vy;
  }
  void collide_1(minseo a){    //같은 class에서 충돌 구현
    float dd;
    dd = sqrt((x-a.x)*(x-a.x) + (y-a.y)*(y-a.y));
    if(dd < (5*d + 5*a.d)){
      vx = vy = 0;
      a.vx = a.vy = 0;
    }
  }
  void collide_2(yong a){    //다른 class에서 충돌 구현
    float dd;
    dd = sqrt((x-a.x)*(x-a.x) + (y-a.y)*(y-a.y));
    if(dd < (5*d + 10*a.d)){
      vx = vy = 0;
      a.vx = a.vy = 0;
    }
  }
  
  void display_minseo() {
    strokeWeight(20);
    stroke(255, 255, 255);
    fill(0);
    circle(x-6*d, y-7*d, 8*d);
    circle(x+6*d, y-7*d, 8*d);
    strokeWeight(1);
    fill(255); //white
    circle(x, y, 20*d);
    fill(0, 0, 0);
    ellipse(x-5*d, y-2*d, 1.5*d, 2.5*d);
    ellipse(x+5*d, y-2*d, 1.5*d, 2.5*d);
    ellipse (x, y, 2*d, 1.5*d);
  }
}
