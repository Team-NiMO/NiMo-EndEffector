#include "Wire.h"
#include <Adafruit_ADS1X15.h>
#include <math.h>
#include <SPI.h>
#include <SD.h>
#include <Wire.h>
#include <limits.h>
#include <Adafruit_SleepyDog.h>
#include <Servo.h>

// Connect via i2c, default address #0 (A0-A2 not jumpered)
Adafruit_ADS1115 ads;

// Connect to linear actuator 
Servo myservo;

float ctrl;
String actuator_status = "";
String past_action = "";
int ctr = 0;
int pos_vals[10];
int idx = 0;
int des_pos = 897;
bool stall = false;
int analogPin = A0;
int pos_val = 0;

// Linear Actuator Variables
int servo_pos = 42;    
int val = 0;
int incomingData = 0;

#define BOOST_EN 12
#define CHIP_SELECT 10
#define THRESH 15

// void blinkCode(int delay_ms, int times) {
//   for (int i = 0; i < times; i++) {
//     delay(delay_ms);
//     digitalWrite(LED_BUILTIN, HIGH);
//     delay(delay_ms);
//     digitalWrite(LED_BUILTIN, LOW);
//   }
// }

void setup() {
  // Set built in LED to output modes
  // pinMode(LED_BUILTIN, OUTPUT);

  // Configure the boost converter enable pin
  pinMode(BOOST_EN, OUTPUT);
  digitalWrite(BOOST_EN, HIGH);

  // Setting up linear actuator position feedback
  // pinMode(analogPin, INPUT);

  //Setting up the linear actuator 
  myservo.attach(10);
  myservo.write(servo_pos); 
  delay(3000);

  // set up the ADC
  ads.setGain(GAIN_ONE);  // 1x gain   +/- 4.096V  1 bit = 2mV      0.125mV

  if (!ads.begin()) {
    while (1) {
      // blinkCode(25, 20);
      Watchdog.sleep(5000);
    }
  }

  // Succesful init code
  // blinkCode(500, 3);

  Serial.begin(9600);
  Serial.setTimeout(25);

  ctrl = 0;

  for(int i = 0; i < 10; i++){
    pos_vals[i] = INT_MIN;
  }

}

void loop() {
  int incomingData = Serial.read();
  if (incomingData != -1) {
    switch(incomingData) { 
      case '1':  // load the sensor 
        servo_pos = 56;
        des_pos = 897;
        myservo.write(servo_pos);
        break;

      case '2': // close the gripper finger
        servo_pos = 82;
        des_pos = 630;
        myservo.write(servo_pos);
        break;

      case '3': // insert the sensor
        servo_pos = 145;
        des_pos = 8;
        myservo.write(servo_pos);
        break;
      
      case '4': //extract the sensor
        servo_pos = 82;
        des_pos = 630;
        myservo.write(servo_pos);
        break;

      case '5': // open the gripper finger
        servo_pos = 56;
        des_pos = 893;
        myservo.write(servo_pos);
        break;

      case '6': // unload the sensor 
        servo_pos = 42;
        des_pos = 1020;
        myservo.write(servo_pos);
        break;

      default:
        // handle unwanted input here
        break;
      }
    idx = 0;
    for(int i = 0; i < 10; i++){
      pos_vals[i] = INT_MIN;
    }
    stall = false;
  }

  int pos = analogRead(A0);
  // Serial.println(pos);
  if (stall == true){
    // Serial.println(1);
    actuator_status = "Done";
  }

  else if (abs(des_pos - pos) > THRESH) {
    actuator_status = "";
    pos_vals[idx % 10] = pos;
    idx += 1;
    
    float avg = 0;
    for(int i = 0; i < 10; i++){
      avg += pos_vals[i];
    }
    avg /= 10;

    if(abs(avg - pos) < THRESH){
      // Serial.println(2);
      actuator_status = "Done";
      des_pos = pos;
      stall = true;
    }
  }

  else if (abs(des_pos - pos) <= THRESH){
    actuator_status = "Done";
    // Serial.println(3);
  }

  // Read the ADC
  int16_t adc0 = ads.readADC_SingleEnded(0);
  float voltageReading = ads.computeVolts(adc0);

  if (past_action != actuator_status && actuator_status != "") {
    Serial.println(String(1) + "," + String(voltageReading)+","+ctrl);
    for(int i = 0; i < 10; i++){
      pos_vals[i] = INT_MIN;
    }
  }
  else{
    Serial.println(String(0) + "," + String(voltageReading)+","+ctrl);
  }

  delay(100);
  past_action = actuator_status;

  ctr = ctr + 1;
}
