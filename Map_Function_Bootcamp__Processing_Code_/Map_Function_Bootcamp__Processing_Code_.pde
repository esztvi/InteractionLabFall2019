// IMA NYU Shanghai
// Interaction Lab
// This code receives one value from Arduino to Processing 
// Map Function Bootcamp

import processing.serial.*;
import processing.video.*;
Capture cam;

Serial myPort;
int valueFromArduino;


void setup() {
  size(640, 480);
  //background(0);
  
  cam = new Capture(this, Capture.list()[0]);
  cam.start();

  printArray(Serial.list());
  // this prints out the list of all available serial ports on your computer.

  myPort = new Serial(this, Serial.list()[ YOUR PORT ], 9600);
  // WARNING!
  // You will definitely get an error here.
  // Change the PORT_INDEX to 0 and try running it again.
  // And then, check the list of the ports,
  // find the port "/dev/cu.usbmodem----" or "/dev/tty.usbmodem----" 
  // and replace PORT_INDEX above with the index number of the port.
}


void draw() {
  // to read the value from the Arduino
  while ( myPort.available() > 0) {
    valueFromArduino = myPort.read();
  }
  println(valueFromArduino);//This prints out the values from Arduino
  //you can change this if you want! We kept this simple so you can just focus on map!
  image(cam, 0, 0);
  if(valueFromArduino>23) {
   tint(0,0,255,255); 
      image(cam, 0, 0);
  } else if (valueFromArduino > 100) {
  tint(23, 100, 200, 30);
   image(cam, 0, 0);
  } else {
    tint(0,255,0,20);
     image(cam, 0, 0);
  }
}

void captureEvent(Capture c) {
  c.read();
}
