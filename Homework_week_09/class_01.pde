class yong{
  yong() {  };
  yong(float p, float q, float r){
    x = p; y = q; d = r;
    vx=random(-3, 3);  vy=random(-3, 3);
  }
  float x, y, d, vx, vy;
  void cal(){
    x += vx;
    y += vy;
    if (x > width || x < 0) vx = -vx;
    if (y > height || y < 0) vy = -vy;
  }
  void collide_3(yong a){    //같은 class에서 충돌 구현
    float dd;
    dd = sqrt((x-a.x)*(x-a.x) + (y-a.y)*(y-a.y));
    if(dd < (5*d + 5*a.d)){
      vx = vy = 0;
      a.vx = a.vy = 0;
    }
  }
  
  void display_yong() {
   fill(255, 255, 0);
    ellipse(x - d * 8, y + d * 5, d * 12, d * 9);//왼쪽두건
    ellipse(x + d * 8, y + d * 5, d * 12, d * 9);//오른쪽두건
    fill(0, 128, 0);
    circle(x, y, d * 20);//얼굴형
    fill(255, 255, 255);
    circle(x - 5 * d, y - 2 * d, d * 6);//왼쪽눈 바탕
    circle(x + 5 * d, y - 2 * d, d * 6);//오른쪽눈 바탕
    ellipse(x, y + 8 * d, d * 10.3, d * 4);//입주변(하얀색 바탕)
    fill(0, 0, 0);
    circle(x - 5 * d, y - 2 * d, d * 3.5);//왼쪽눈동자
    circle(x + 5 * d, y - 2 * d, d * 3.5);//오른쪽눈동자
    fill(255, 255, 0);
    arc(x, y - d * 5.3, d * 17.1, d * 10.7, PI, 2 * PI);//이마
    fill(255, 0, 0);
    ellipse(x, y + d * 7, d * 2.5, d * 2);//입
    beginShape();
    vertex(x, y - d * 9);
    vertex(x + d * 0.8, y - d * 8);
    vertex(x + d * 2.2, y - d * 8);
    vertex(x + d, y - d * 7.2);
    vertex(x + d * 1.5, y - d * 6);
    vertex(x, y - d * 6.7);
    vertex(x - d * 1.5, y - d * 6);
    vertex(x - d * 1.1, y - d * 7.2);
    vertex(x - d * 2.2, y - d * 8);
    vertex(x - d * 0.8, y - d * 8);
    endShape();//모자에 별
  }
}
