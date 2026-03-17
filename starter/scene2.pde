float s2_home_x = 430;
float s2_home_y = 460;
color s2_home_col;

float s2_prev_x = 70;
float s2_prev_y = 460;
color s2_prev_col;

void scene2() {
  background(0);
  
  A6_Q2();
  resetMatrix();
  s2_home_col = color(100, 200, 180);
  s2_prev_col = color(210, 200, 210);
  drawButton(s2_home_x, s2_home_y, btn_w, btn_h, s2_home_col, "HOME");
  drawButton(s2_prev_x, s2_prev_y, btn_w, btn_h, s2_prev_col, "BACK");
}

void A6_Q2(){
  translate(width/2, height/2);
  
  strokeWeight(5);
  strokeCap(ROUND);

  a = 1;
  b = 1;
  m1 = 2;
  m2 = 10;
  n1 = 1.5;
  n2 = 1;
  n3 = 1;
  supershape(a, b, m1, m2, n1, n2, n3);

  a = 1;
  b = 1;
  m1 = 6;
  m2 = 6;
  n1 = 0.3;
  n2 = 0.3;
  n3 = 0.3;
  supershape(a, b, m1, m2, n1, n2, n3);
}
