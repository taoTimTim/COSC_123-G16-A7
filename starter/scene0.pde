//REQ: create variables here for the location and color of the PLAY button
//...YOUR CODE GOES HERE...
float play_btn_x = 250;
float play_btn_y = 280;
color play_btn_col;
  
void scene0(){  //home screen
  //REQ: Write code to draw a welcome message followed by PLAY button. 
  //     Remember that we have a function to draw buttons, i.e. drawButton()

  //...YOUR CODE GOES HERE...
  
  background(0);
  textAlign(CENTER);
  textSize(32);
  text("Welcome!", width / 2, 180);
  
  textSize(16);
  text("Press the button below", width / 2, 210);
  
  play_btn_col = color(210, 200, 210);
  
  drawButton(play_btn_x, play_btn_y, btn_w, btn_h, play_btn_col, "PLAY");
}
