minseo [] aa;
yong [] bb;
void setup() {
  size(800, 600);
  aa = new minseo[3];
  for (int i=0; i<3; i++) {
    aa[i] = new minseo(random(width), random(height), random(1, 10));
  }
  bb = new yong[3];
  for (int i=0; i<3; i++) {
    bb[i] = new yong(random(width), random(height), random(1, 10));
  }
}

void draw() {
  background(189, 189, 189);


  for (int i=0; i<3; i++) {
    if (i!=2) {
      for (int j=i+1; j<3; j++) {
        aa[i].collide_1(aa[j]);
        bb[i].collide_3(bb[j]);
      }
    }
    for (int j=0; j<3; j++) {
      aa[i].collide_2(bb[j]);
    }
    bb[i].display_yong();
    bb[i].cal();
    aa[i].call();
    aa[i].display_minseo();
  }
}
