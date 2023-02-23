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
  
  //  /// No need for this if using circle(), just one size arg!
  // float circleSize = random(50, 600);  // save random num into a variable
  //
  
  // fill( 255, 0, 0 )  then random(255) for each, then HSB
    
  
  // ellipse(
  //   random(width),  // random x position
  //   random(height), // random y position
  //   circleSize,     // Same random number for both width and height, from the variable,
  //   circleSize      // ensuring we always get a perfect circle
  // );


  // SECOND:

  // random() gives us a floating-point number, so we have to save it into the same type of variable
  float randomHue = random( 0, 255 );

  fill( randomHue, 255, 255, 100 ); // last arg "100" here is opacity - make circles semi-transparent!

  // "Pseudocode" (for planning your program)
  // 1. Get the mouse x, y position
  // 2. Use that position when drawing the circle

  circle( mouseX, mouseY,  100);
  
  // 
  //circle( mouseX  + random(30), mouseY + random(30),  100);

  //delay(500); // slow down the drawing, i.e. sleep for half a second after each draw

  // Draw only on half of screen? Only within smaller rect?

  // IF THERE'S TIME: smooth hue using counter (local vs global!! function scope!)
  //  plus issue with resetting to 0 at 255
  // .... then show built-in "frameCount"


} // end of draw()