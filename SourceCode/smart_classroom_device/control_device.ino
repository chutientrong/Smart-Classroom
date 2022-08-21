#include <string.h>
#define LED 5
#define FAN 4

String ON = "ON";
String OFF = "OFF";

String recei_data;
String device;
String status_led = OFF;
String control_led = OFF;
String status_fan = OFF;
String control_fan = OFF;

void setup(){
  Serial.begin(9600);
  pinMode(LED, OUTPUT);
  digitalWrite(LED, LOW);
  pinMode(FAN, OUTPUT);
  digitalWrite(FAN, LOW);
}


void loop(){
  if(Serial.available()){
    recei_data = Serial.readStringUntil('\r'); // LEDON, LEDOFF, FANON, FANOFF
    device = recei_data.substring(0, 3);
    
    if(device == "LED"){
      control_led = recei_data.substring(3);
      if(status_led == OFF && control_led == ON){
        digitalWrite(LED, HIGH);
        status_led = ON;
        Serial.println(status_led);
      } else if(status_led == ON && control_led == OFF){
        digitalWrite(LED, LOW);
        status_led = OFF;
        Serial.println(status_led);
      } else{
        Serial.println(status_led);
      }
    } else if(device == "FAN"){
      control_fan = recei_data.substring(3);
      if(status_fan == OFF && control_fan == ON){
        digitalWrite(FAN, HIGH);
        status_fan = ON;
        Serial.println(status_fan);
      } else if(status_fan == ON && control_fan == OFF){
        digitalWrite(FAN , LOW);
        status_fan = OFF ;
        Serial.println(status_fan);
      } else{
        Serial.println(status_fan);
      }
    }
  }
}
