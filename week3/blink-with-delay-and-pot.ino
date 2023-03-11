
// Use a variable to store the pin number
// for the LED - easier to change, clearer
// to read the code
int ledPin = 3;

int potPin = A0;

void setup(){
  pinMode(ledPin, OUTPUT);
  Serial.begin( 9600 );  // Please let me use the USB serial connection
} // setup

void loop(){
  
  // Read the current pot dial value from A0 and
  // store the value given by analogRead() into a variable
  // to use in the rest of our code
  int potReading = analogRead( potPin ); // returns value in range 0...1023
  
  // Unlike Processing, if we want to both print out a nice
  // string label, AND a variable, we can't do it with a
  // single println(), we need to do a separate print() and println()
  //
  Serial.print("pot reading: "); // print this and stay on same line
  Serial.println( potReading );  // print variable and add new line
  
  // Convert between ranges using map(),
  // more versatile than just dividing or multiplying the reading
  int ledBrightness = map(
  	potReading,  // input value
    0, 1023,     // input range (min & max) to map input value from
    100, 200     // output or target range to map to
  );
  
  analogWrite( ledPin, ledBrightness ); // brightness range 0...255
  
  // Comment out the above analogWrite() line and uncomment
  // the lines below to control the delay time using the pot
  //
  //digitalWrite(ledPin, HIGH);
  //delay( potReading * 5 ); 
  //digitalWrite(ledPin, LOW);
  //delay( potReading * 5 ); 

} // loop

