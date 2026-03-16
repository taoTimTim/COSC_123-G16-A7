//REQ: create variables here for the location and color of the PLAY button
  //...YOUR CODE GOES HERE...
float home_btn_x = 70;
float home_btn_y = 460;
color home_btn_col;
  
//REQ: put here any other variables required by your A6_Q1 animation 
  //...YOUR CODE GOES HERE...

void scene1() {
  A6_Q1();  //calling this function should draw the output of A6.Q1
  
  //REQ: In addition to A6.Q1, also draw HOME button on this scene
  //...YOUR CODE GOES HERE...
  home_btn_col = color(100, 200, 180);
  drawButton(home_btn_x, home_btn_y, btn_w, btn_h, home_btn_col, "HOME");
}

void A6_Q1(){
  //REQ - Copy your code from Q1 in assignment A6 here (modify the code as needed, e.g. to fit the current sketch size)
  //...YOUR CODE GOES HERE...
  background(0);
}

//You may add extra functions here if needed.
