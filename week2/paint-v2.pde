// Painting program

int counter = 0;  // "global" variable - defined outside of any function, can be seen and changed within any function

// This function runs ONCE at the start of the sketch
void setup(){

  //int counter = 0;    // NOPE! Also a "local scope" variable - only visible within same function, i.e. not in draw()
  
  //fullScreen();
  size( 1200, 900 );  // width, height  - builtin variables
  background( 0 );

  noStroke(); // Turn off outline drawing for this whole program
 
  colorMode( HSB );

} // end of setup()



// draw function, runs 60 times/sec constantly, for the lifetime of the program
// i.e. it's like the Arduino "loop" function
void draw(){
  
  //int counter = 0;  // NOPE!: "local" variable - stuck within draw(), redefined to 0 each time it runs
  
  
  fill( counter, 255, 255, 100 ); // last arg "100" here is opacity - make circles semi-transparent

  
  // Add 1 to it!
  counter = counter + 20;   //  counter += 1;    counter++;
  
  // When counter gets too large (greater than 255)...
  if( counter > 255 ){
    counter = 0;  // ...wrap it back to zero! (for hue cycling to work smoothly, in range 0...255) 
  }

  println("counter: ", counter);    // If in doubt....

  circle( mouseX, mouseY,  100);



  // Examples using conditionals:
  //
  // Ask two questions in a single "if" using the "logical AND" operator "&&"
  //if( mouseX > width/2   &&  mouseY > height/2 ){
  //  circle( mouseX, mouseY,  100);

  // If we don't use "&&" then we have to nest another "if" within the first    
  //  //if( mouseY > height/2 ){
  //  //  circle( mouseX, mouseY,  100);
  //  //} // inner if (height)
    
  //} // outer if (width)
  
  // Optional "else" - do something on the left side of the screen too...
  //else {
  //  square( mouseX, mouseY, 100 ); 
  //}

} // end of draw()
