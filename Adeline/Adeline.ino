#include <ArduinoJson.h>
#include <Servo.h>
Servo servo; 
#include <SoftwareSerial.h>
SoftwareSerial gsmSerial(3, 2);//rx,tx
#include <LiquidCrystal.h>
LiquidCrystal lcd(A0, A1, A2, A3, A4, A5);
#include <SPI.h>
#include <RFID.h>
#define SS_PIN 10
#define RST_PIN 9
RFID rfid(SS_PIN, RST_PIN);
String rfidCard;

int count;

int irs1 = 4;
int irs2 =  5;
int irs3 = 6;
int irs4 = 7;
int amount1 = 500;
int amount2 = 500;
int amount3 = 500;
int amount4 = 500;
int amount=0;
int raw = 0;
int value1, value2, value3, value4;
int state1, state2, state3, state4;
String slot="";

void setup() {
  Serial.begin(9600);
  gsmSerial.begin(9600);
  
servo.attach(8);
  lcd.begin(16, 2);
  lcd.clear();
  lcd.setCursor(2, 0);
  lcd.print("CAR PARKING");
  lcd.setCursor(5, 1);
  lcd.print("SYSTEM");
  Serial.println("Starting the RFID Reader...");
  SPI.begin();
  rfid.init();
  servo.write(0); 
 
}
StaticJsonBuffer<500> jsonBuffer;
JsonObject& root = jsonBuffer.createObject();

void loop() {
  if (rfid.isCard()) {
    if (rfid.readCardSerial()) {
      rfidCard = String(rfid.serNum[0]) + " " + String(rfid.serNum[1]) + " " + String(rfid.serNum[2]) + " " + String(rfid.serNum[3]);
      Serial.println(rfidCard);
      if (rfidCard == "199 147 158 95") {
        Serial.println("Tag Accepted");
        amount = amount1 - 100;
      }


      else {
        Serial.println("Tag Declined");

      }
    }
    rfid.halt();
  }
  value1 = digitalRead(irs1);
  value2 = digitalRead(irs2);
  value3 = digitalRead(irs3);
  value4 = digitalRead(irs4);
  
  Serial.println(value1);
  Serial.println(value2);
  Serial.println(value3);
  Serial.println(value4);
    if (value4 == 1) 
    {
     // state4 = 1;
     // slot= 4;
      servo.write(180);
      delay(1000);
    }
    else
    {
       servo.write(0);
      //state4 = 0;
       delay(1000);
    }

if((value1 == 1) &&(value2 == 0)&& (value3 == 0) )
{
  Serial.println("Iam In 3");
  count = 3;
}
else if((value1 == 0 && value2 == 0 && value3 == 0) || (value1 == 1 && value2 == 1 && value3 == 0)|| (value1 == 1 && value2 == 0 && value3 == 1))
{
  count = 1;
  Serial.println("Iam In 1");
}
  else if((value1 == 0 && value2 == 1 && value3 == 0) 
      || (value1 == 0 && value2 == 0 && value3 == 1) 
      || (value1 == 1 && value2 == 1 && value3 == 1))
{
  count = 2;
  Serial.println("Iam In 2");
}

  else if((value1 == 0 && value2 == 1 && value3 == 1))
{
  count = 0;
  Serial.println("Iam In 0");
}

      if (value1 == 0)
    {
      state1 = 1;
      slot = 1;
      Serial.println("slot1");
      //raw = 1;
      if(raw == 0)
      {
        gsm();
      }
    }
    else     {
      state1 = 0;
    }
    if (value2 == 1)
    {
      state2 = 1;
      slot = 2;
      Serial.println("slot2");
            //raw = 2;
      if(raw == 1)
      {
        gsm();
      }
    }
    else // otherwise
    {
      state2 = 0;
    }
    if (value3 == 1) 
    {
      state3 = 1;
      slot = 3;
            Serial.println("slot3");
           // raw = 3;
      if(raw == 2)
      {
        gsm();
        raw = 0;
      }
    }
    else // otherwise
    {
      state3 = 0;
    }
if (count != 0)
  {
    if (count == 3)
    {
      slot1();
    }
    else
    {
      count = 3 - count;
      slot1();
    }
  }
  else
  {
    slot1();
  }

  root["a1"] = state1;
  root["a2"] = state2;
  root["a3"] = state3 ;
  root["a4"] = count;
//  root["a4"] = slot;
  root.printTo(Serial);
}
void gsm()
{
  raw = raw+1;
  amount = amount1 - 100;
  Serial.print("hi");
  gsmSerial.println("AT+CMGF=1");    //Sets the GSM Module in Text Mode
  delay(1000);  // Delay of 1000 milli seconds or 1 second
  gsmSerial.println("AT+CMGS=\"+918056119033\"\r"); // Replace x with mobile number
  delay(2500);
  //gsmSerial.print("Dedt Amt" + String(amount));
  gsmSerial.print("Booked Slot: " + String(slot) + "," +"Deducted Amt: " + String(amount)+"Balance Amnt: " + String(amount1));
  delay(3000);
  gsmSerial.println((char)26);// ASCII code of CTRL+Z
  delay(3000);
}
void slot1()
{
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("NO OF SLOT: ");
  lcd.setCursor(13, 0);
  lcd.print(count);
  delay(500);
}
