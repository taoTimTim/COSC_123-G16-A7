//REQ: create variables here for the location and color of the PLAY button
  //...YOUR CODE GOES HERE...
float home_btn_x = 70;
float home_btn_y = 460;
color home_btn_col;

float next_btn_x = 430;
float next_btn_y = 460;
color next_btn_col;
  
//REQ: put here any other variables required by your A6_Q1 animation 
  //...YOUR CODE GOES HERE...
  
int thetaIncrements = 1000;
float scale = 100.0;
float a, b, m1, m2, n1, n2, n3;

void scene1() {
  background(0);
  A6_Q1();  //calling this function should draw the output of A6.Q1
  
  //REQ: In addition to A6.Q1, also draw HOME button on this scene
  //...YOUR CODE GOES HERE...
  resetMatrix();
  home_btn_col = color(100, 200, 180);
  next_btn_col = color(210, 200, 210);
  drawButton(home_btn_x, home_btn_y, btn_w, btn_h, home_btn_col, "HOME");
  drawButton(next_btn_x, next_btn_y, btn_w, btn_h, next_btn_col, "NEXT");
}

void A6_Q1(){
  //REQ - Copy your code from Q1 in assignment A6 here (modify the code as needed, e.g. to fit the current sketch size)
  //...YOUR CODE GOES HERE...
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
  m1 = 88;
  m2 = 64;
  n1 = -20;
  n2 = 1;
  n3 = 1;
  supershape(a, b, m1, m2, n1, n2, n3);
}

//You may add extra functions here if needed.

void supershape(float a, float b, float m1, float m2, float n1, float n2, float n3) {
  float previousX = 0, previousY = 0;
  float x, y;
  float hue = 0;

  for (int i = 0; i <= thetaIncrements; i++) {
    float theta = ((2 * PI) / thetaIncrements) * i;

    hue += (255.0 / thetaIncrements);
    stroke(hue, 255, 255);

    float r = pow(
      pow(abs(cos((m1 * theta) / 4) / a), n2) +
      pow(abs(cos((m2 * theta) / 4) / b), n3),
      -(1 / n1)
    );

    x = r * cos(theta) * scale;
    y = r * sin(theta) * scale;

    if (i != 0) line(x, y, previousX, previousY);

    previousX = x;
    previousY = y;
  }
}

void keyPressed() {
  if (scn == 1 || scn == 2) {
    if (keyCode == UP) {
      thetaIncrements *= 2;
    }

    if (keyCode == DOWN) {
      thetaIncrements /= 2;
    }

    thetaIncrements = constrain(thetaIncrements, 125, 1000);
  }
}
