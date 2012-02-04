
#define RELAY_PIN  8 // Some damn problem when i use 13, switched to 8 which works!


void setup(){
  
   /* Setup Serial */
   Serial.begin(9600);
   pinMode(RELAY_PIN, OUTPUT); 
   digitalWrite(RELAY_PIN, 0);  // switch on LED
   delay(10);

}

void loop(){
  if (digitalRead(RELAY_PIN) == LOW)
  {
    digitalWrite(RELAY_PIN, 1);
    delay(3000);
  } else {
    digitalWrite(RELAY_PIN, 0);
    delay(2000);
  }       
}

