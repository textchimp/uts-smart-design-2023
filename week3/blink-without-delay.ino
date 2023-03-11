// Blink without delay(), i.e. multitasking on Arduino:
// Use the timer function millis() to check how long the
// LED has been on or off for, and switch when needed

// Stores the time when LED was last changed
unsigned long lastSwitchMillis = 0;

// Stores whether the LED is currently on or off
int ledState = LOW; // LOW = 0, HIGH = 1

int ledPin = 3;
int potPin = A0;

// How long to blink on/off for
// NOTE this default value of 500 will not be used once we start
// reading from the pot instead on line 31 beloq
int blinkInterval = 500;  

void setup(){
  pinMode(ledPin, OUTPUT);
  Serial.begin( 9600 );  // ask to use the USB connection to print things
} // setup



void loop(){
  
  blinkInterval = analogRead( potPin ); // use the pot reading for blink time
  
  unsigned long millisNow = millis();  // current time
  
  unsigned long timeSinceLastSwitch = millisNow - lastSwitchMillis;
  
  // "if it's been long enough since the last LED switch, it's
  //  time to switch it again"
  if( timeSinceLastSwitch >= blinkInterval ){
    
    // If we get here, we know we need to do SOMETHING,
    // but WHAT exactly? Switch the LED on or off?
    // We need to ask another question:

    // Toggle the LED state to its opposite
    if( ledState == LOW ){  // asking
      ledState = HIGH;  // seting
    } else {
      ledState = LOW;
    } // else
   
    digitalWrite( ledPin, ledState ); // actually change the LED
    
    // Update the last switch time to be the current time, so that 
    // our next check (line 32) works the next time loop() runs
    lastSwitchMillis = millisNow;  
    
    
  } // end time check if
  
  
} // loop







