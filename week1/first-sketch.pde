// This is a comment. Comments start with '//' and are
// ignored by Processing.
// They are for writing useful notes to yourself or
// other people about what your code is doing.
// Comments are your friend! Write lots of comments.

// Shortcuts:
// cmd + r  :  RUN    (Windows:  ctrl + r)
// esc      : STOP
// cmd + /  : toggle comment for current line/selection


// Define a setup function that Processing will run for us, once, at the start of the program
// It must be called "setup"  !
void setup(){

  size( 1200, 700 );  // define the width and height of the drawing area (canvas)
  // fullScreen();

  background( 0 );

  println( "Hello World!!!!" );
  println("Hello again, getting boring now...");

  int pressureSensorReading = 200; // create a new integer variable and store 200 in it

  pressureSensorReading = pressureSensorReading + 100; // add 100 to the variable contents

  println( "pressureSensorReading:", pressureSensorReading );  // "If in doubt, print it out..."

  fill( 0, 255, 0 ); // make the following shapes green ( until the next fill() )


  // Draw a circle in the exact middle of the canvas, with a size of 300 by 300
  // (Note that the variables 'width' and 'height' are provided to us by
  // Processing; they contain the canvas size numbers we set using
  // the size(1200, 900) function at the top of the file - but using these
  // variables saves us from having to type the exact numbers 1200 and
  // 900 everywhere.)

  //         x pos,     y pos,   width,  height
  ellipse( width/2,  height/2,     300,  300    );
  
  // WHAT ABOUT circle(100, 100, 20);

  // Same as above, but arguments split over several lines for readability:
  //
  // ellipse(
  //   width / 2,   // x position (here we are saying "make it half the width of the canvas")
  //   height / 2,  // y position (half the height)
  //   80,  // width
  //   80   // height
  // );


  //      R  G  B
  fill( 255, 0, 0 ); // change the shape fill colour to now be red


  stroke(0, 0, 255); // blue for outlines

  //strokeWeight( 10 );  // Set thickness of outlines (in pixels)

  // noFill(); // Don't fill in shapes with colour at all

  //noStroke(); // Don't draw outlines


  // Draw a rectangle! Similar inputs to ellipse():
  //
  //    x pos,  y pos,   width,  height
  rect(   100,    120,     300,     300 );

  // Note: you don't need to use all the spaces as on the line above
  // The shorter version would be:
  //
  // rect( 100, 120, 300, 300 );
  //
  // ^ A little bit of space is still nice, or things get harder to read:
  //
  // rect(100,120,300,300);

  line(
    100, 200,  // start x,y point of line
    800, 400   //   end x,y point of line
  );

} // end of setup()
