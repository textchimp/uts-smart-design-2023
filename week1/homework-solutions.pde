// Painting program

// b. hueCounter MUST be defined globally, to remember value between draw()
// calls, and to bevisible from inside draw()
int hueCounter = 0;

// This function runs ONCE at the start of the sketch
void setup(){

  //fullScreen();
  size( 1200, 900 );
  background( 0 );

  noStroke(); // Turn off outline drawing for this whole program

  // Change the colour mode so that the 3 arguments we give to
  // colour functions like fill() refer to Hue, Saturation and
  // Brightness (instead of red, green and blue components)
  // (The main reason for doing this is so we can smoothly cycle
  // through colours by changing only the hue value.)
  colorMode( HSB );

  // // b. NO GOOD! Not visible to other functions like draw();
  // // i.e. local or function scope
  //
  // int hueCounter = 0;

} // end of setup()



// draw function, runs 60 times/sec constantly, for the lifetime of the program
// i.e. it's like the Arduino "loop" function
void draw(){

  // // Screensaver code! Draw a randomly-sized circle at a random
  // // position on the screen
  //
  // float circleSize = random(50, 600);  // save random num into a variable
  //
  // ellipse(
  //   random(width),  // random x position
  //   random(height), // random y position
  //   circleSize,     // Same random number for both width and height, from the variable,
  //   circleSize      // ensuring we always get a perfect circle
  // );


  // //random() gives us a floating-point number, so we have to save it into the same type of variable
  //float randomHue = random( 0, 255 );
  //
  //fill( randomHue, 255, 255, 100 ); // last arg "100" here is opacity - make circles semi-transparent!




  // b. colour cycling /////////////////////////////////////////////////////////

  //int hueCounter = 0;  // no good, resets each draw()! (Use println to debug this)

  hueCounter = hueCounter + 1;  // hueCounter++;

  if( hueCounter > 255 ){
    hueCounter = 0; // reset when it gets larger than accepted hue range for fill()
  }

  fill( hueCounter, 255, 255, 100 );

  // end b. ////////////////////////////////////////////////////////////////////






  // c. mapping between ranges /////////////////////////////////////////////////

  // 1. This works, but colours all compressed into 0-255 X position, and beyond that, stuck on red;
  // int circleHue = mouseX;

  // 2. We can scale down the mouseX position to roughly 0-255 by dividing by 4, since
  // 1200 / 4 = 300
  //(still not ideal, exact calc is 1200/255 = 4.7, so mouseX / 4.7 is ideal, but needs float var)
  //
  // other way of explaining this is
  // a. "what fraction is the current position of the full width?"
  //    float mouseXFraction = mouseX / float(width);  // ugh, without float() you always get rounded down to 0.0
  //
  // b. apply that fraction to the range of hue values:
  //    float circleHue = mouseXFraction * 255;  // e.g.  0.5 * 255 = 127.5
  //
  // ^^^^^^^^ "TOO MUCH MATHS" warning!
  //
  // float circleHue = mouseX / 4.7;

  // 3. The magic of map():

  //                  input value,  input range,  output range
  float circleHue = map(     mouseX,     0, width,        0, 255);

  fill( circleHue, 255, 255, 100 );  // this overrules the previous fill()


  // // works for any input and output ranges, even "inverse proportions"
  //float circleSize = map( mouseY,  0, height,  50, 300);
  //float circleSize = map( mouseY,  0, height,  300, 50);
  //ellipse( mouseX, mouseY, circleSize, circleSize );

  // end c. ////////////////////////////////////////////////////////////////////





  // a. Conditional drawing

  //if( mousePressed == true ){
  //  ellipse( mouseX, mouseY,  100, 100 );
  //}

  //if( keyPressed == true ){
  //  ellipse( mouseX, mouseY,  100, 100 );
  //}

  // If either one OR the other test is true, do the drawing! Less repetitive!
  // (could also demo AND/&&, only works when both held...) 
  if( mousePressed == true || keyPressed == true ){
    ellipse( mouseX, mouseY,  100, 100 );
  }

  // ^^ Could also show shorthand: if( mousePressed || keyPressed )
  // i.e. testing for 'true' is the default behaviour
  // but perhaps better to have a single and more explicit example for now
  // (...the problem is that other examples they find might use this syntax...)

  // end a. ////////////////////////////////////////////////////////////////////




  // "Pseudocode" (for planning your program)
  // 1. Get the mouse x, y position
  // 2. Use that position when drawing the circle


  //delay(500); // slow down the drawing, i.e. sleep for half a second after each draw

} // end of draw()
