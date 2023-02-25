// Painting program

// This function runs ONCE at the start of the sketch
void setup(){

  //fullScreen();
  size( 1200, 900 );  // width, height  - builtin variables
  background( 0 );

  noStroke(); // Turn off outline drawing for this whole program

  // Change the colour mode so that the 3 arguments we give to
  // colour functions like fill() refer to Hue, Saturation and
  // Brightness (instead of red, green and blue components)
  // (The main reason for doing this is so we can smoothly cycle
  // through colours by changing only the hue value.)
  colorMode( HSB );


} // end of setup()



// draw function, runs 60 times/sec constantly, for the lifetime of the program
// i.e. it's like the Arduino "loop" function
void draw(){

  // // Screensaver code! Draw a randomly-sized circle at a random
  // // position on the screen
  //
  
  // FIRST EXAMPLE: random everything!
  // fill( 255, 0, 0 )  then random(255) for each, then HSB
  // circle(
  //   random(width),  // random x position
  //   random(height), // random y position
  //   random(200)     // Same random number for both width and height, from the variable,
  // );


  // SECOND EXAMPLE: paint using mouse

  // To get smooth hue colour changes, we can use a built-in variable that is always
  // growing - 'frameCount' is the number of frames painted since your program started
  // running. BUT it will cause the hue to get stuck at red, since 255 is the maximum
  // value for hue. The '%' or 'modulus' operator gives us the remainder of a division;
  // this will make sure that even when frameCount grows above 255, we always get back
  // a remainder that is between 0 and 255.
  // How could you use a global variable and an 'if' condition to do this yourself,
  // in a less magical but longer (clearer) way?
  fill( frameCount % 256, 255, 255, 100 ); // last arg "100" here is opacity - make circles semi-transparent

  // "Pseudocode" (for planning your program)
  // 1. Get the mouse x, y position
  // 2. Use that position when drawing the circle

  circle( mouseX, mouseY,  100);
  
  // A bit of random variation around the mouse position? 
  //circle( mouseX  + random(30), mouseY + random(30),  100);



} // end of draw()