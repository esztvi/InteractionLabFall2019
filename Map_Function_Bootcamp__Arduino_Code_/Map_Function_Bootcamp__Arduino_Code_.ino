// IMA NYU Shanghai
// Interaction Lab
// This code sends one value from Arduino to Processing 
// Map Function Bootcamp


void setup() {
  Serial.begin(9600);
}


void loop() {
  int sensorValue = analogRead(A0);
  Serial.write(sensorValue);
//add the map function 

//console.log that mapped value here!


  // too fast communication might cause some latency in Processing
  // this delay resolves the issue.
  delay(10);
}
// That's all! Two lines! Congratulations!!!!!!! :)
