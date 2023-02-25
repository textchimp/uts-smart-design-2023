
// This is a comment; it is ignored by the computer, it's just for writing
// messages to humans
// Write lots of comments to explain what your code is doing!

// Shortcuts
// cmd + r  :  RUN/PLAY  (Windows: ctrl + r)
// cmd + /  :  Toggle comments


// Define the setup function that Processing will run for us, once, at the start of running the program
// It MUST be called 'setup'

void setup(){
  
    println( "Hello world!" );
    
    int pressureSensorReading = 200; // In Arduino you would actually read a sensor using analogRead()
    
    println( "pressure reading: ",  pressureSensorReading );
    
    size( 1200, 800 );
    
    background( 0 );  // single argument for colours means grayscale: 0 - 255
    
    //fullScreen();
    
     
    
    fill( 255, 0, 0 );
    
    //        x   y   diam
    
    //int xPos = width/2;
    
    stroke( 0, 255, 0 ); // outlines
    
    //strokeWeight( 0 );
    noStroke();
    
    circle( width/2, height/2,   200 );
    
    fill( 0, 0, 255 );
    
    ellipse( 300,700,   800,100 );
    
    
    fill( 50, 255, 0 );
    
    rect( 
      500,  // x pos 
      600,  // y pos
      200,  // width
      300   // width
    );
    
    
    stroke( 0, 255, 0 );
    
    line( 100, 200,    1000, 700  );
  
} // end of setup()  