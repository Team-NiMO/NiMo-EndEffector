#include "Wire.h"
#include <Adafruit_ADS1X15.h>
#include <math.h>
#include <SPI.h>
#include <SD.h>
#include <Wire.h>
#include <limits.h>
#include <Adafruit_SleepyDog.h>

// Connect via i2c, default address #0 (A0-A2 not jumpered)
Adafruit_ADS1115 ads;

float ctrl;
String actuator_status;
String past_action = "";
int ctr = 0;
int pos_vals[10];
int idx = 0;
int des_pos = 0;
bool complete = false;
bool extend_complete = false;

#define BOOST_EN 12
#define CHIP_SELECT 10
#define THRESH 15

void blinkCode(int delay_ms, int times) {
  for (int i = 0; i < times; i++) {
    delay(delay_ms);
    digitalWrite(LED_BUILTIN, HIGH);
    delay(delay_ms);
    digitalWrite(LED_BUILTIN, LOW);
  }
}

void setup() {
  // Set built in LED to output modes
  pinMode(LED_BUILTIN, OUTPUT);

  // Configure the boost converter enable pin
  pinMode(BOOST_EN, OUTPUT);
  digitalWrite(BOOST_EN, HIGH);

  pinMode(A0, OUTPUT);
  pinMode(A1, OUTPUT);
  pinMode(A2, INPUT);

  delay(3000);

  // set up the ADC
  ads.setGain(GAIN_ONE);  // 1x gain   +/- 4.096V  1 bit = 2mV      0.125mV

  if (!ads.begin()) {
    while (1) {
      blinkCode(25, 20);
      Watchdog.sleep(5000);
    }
  }

  // Succesful init code
  blinkCode(500, 3);

  Serial.begin(9600);
  Serial.setTimeout(25);

  ctrl = 0;

  for(int i = 0; i < 10; i++){
    pos_vals[i] = INT_MIN;
  }

}

void loop() {
  String input = Serial.readString();
  if (input != "") {
    ctrl = input.toFloat();
    idx = 0;
    for(int i = 0; i < 10; i++){
      pos_vals[i] = INT_MIN;
    }
    des_pos = ctrl * 1023;
    complete = false;
    extend_complete = false;
  }
  int pos = analogRead(A2);

  if (complete == true){
    actuator_status = "Done";
    digitalWrite(A0, HIGH);
    digitalWrite(A1, LOW); 
  }
  else if (extend_complete == true){
    actuator_status = "Done";
    digitalWrite(A0, LOW);
    digitalWrite(A1, LOW); 
  }
  else if (pos < des_pos && abs(des_pos - pos) > THRESH) {
    actuator_status = "";
    digitalWrite(A0, HIGH);
    digitalWrite(A1, LOW);
    pos_vals[idx % 10] = pos;
    idx += 1;
    
    float avg = 0;
    for(int i = 0; i < 10; i++){
      avg += pos_vals[i];
    }
    avg /= 10;

    if(abs(avg - pos) < THRESH){
      actuator_status = "Done";
      des_pos = pos;
      complete = true;
    }
    
  } else if (pos > des_pos && abs(des_pos - pos) > THRESH) {
    actuator_status = "";
    digitalWrite(A0, LOW);
    digitalWrite(A1, HIGH);
    pos_vals[idx % 10] = pos;
    idx += 1;

    float avg = 0;
    for(int i = 0; i < 10; i++){
      avg += pos_vals[i];
    }
    avg /= 10;

    if(abs(avg - pos) < THRESH){
      actuator_status = "Done";
      des_pos = pos;
      complete = true;
    }
    
  } else if (pos <= des_pos && abs(des_pos - pos) <= THRESH){
    actuator_status = "Done";
    digitalWrite(A0, LOW);
    digitalWrite(A1, LOW); 
  } else if (pos >= des_pos && abs(des_pos - pos) <= THRESH){
    actuator_status = "Done";
    digitalWrite(A0, LOW);
    digitalWrite(A1, LOW);
  }

  // Read the ADC
  int16_t adc0 = ads.readADC_SingleEnded(0);
  float voltageReading = ads.computeVolts(adc0);

  if (past_action != actuator_status && actuator_status != "") {
    Serial.println(String(1) + "," + String(voltageReading)+","+ctr);
    for(int i = 0; i < 10; i++){
      pos_vals[i] = INT_MIN;
      extend_complete = true;
    }
    }
  else{
    Serial.println(String(0) + "," + String(voltageReading)+","+ctr);
  }

  delay(100);
  past_action = actuator_status;

  ctr = ctr + 1;
}
