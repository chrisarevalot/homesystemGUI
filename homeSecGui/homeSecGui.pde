/* 
  Author: Christian Arevalo
  Project: Home Security System GUI
  Date: 01/07/19
  
  This Home Security GUI projects includes a buttons library.
  Including a main, security, settings, date/time, info, temperature, weather, and settings page. 
  
*/

int menuChoose, password, secureX = 1600, secureY = 1200, correctPassword = 20;
int currentHour,currentMinute, currentSecond, currentDay, currentMonth, currentYear;
boolean buttonPressed = false, passwordCorrect, isButtonPressed, buttonPress = false;
String inputPass = "", correctPass = "2459";

void setup()
{
  fullScreen();
  //import processing.serial.*;

  // The serial port:
  //Serial myPort;      
  // List all the available serial ports:
  //printArray(Serial.list());
  // Open the port you are using at the rate you want:
  //myPort = new Serial(this, Serial.list()[0], 9600);
  // Send a capital A out the serial port:
  //myPort.write(65);
  
  //size(1600,1200);  //Window Size(width,height).
  background(0);    //Black background.
  menuChoose = 0;   //Variable to choose which switch case is chosen.
  password = 0;     //Set Password variable to 0.
  passwordCorrect = false;    //Boolean set to false.
  
}
void draw()      //Draw function loops forever.
{
  switch(menuChoose)      //Switch Case Function to choose the state of the system.
  {
    case 0:
    menuChoose = menu();    // Main menu case.
    break;
    case 1:
    menuChoose = security();    //Security Menu case.
    break;
    case 2:
    menuChoose = temperature();    //Temperature Menu Case.
    break;
    case 3:
    menuChoose = weather();    //Weather Menu case.
    break;
    case 4:
    menuChoose = settingz();    //Settings Menu case.
    break;
    case 5:
    menuChoose = disarm();    //Disarm Menu case.
    break;
    case 6:
    menuChoose = armed();      //Arm Menu case.
    break;
    case 7:
    menuChoose = showInfo();    //Information Window case.
    break;
  }
}
void mousePressed()
{

}
void mouseReleased()
{

}
