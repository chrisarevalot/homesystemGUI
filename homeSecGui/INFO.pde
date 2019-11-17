/* 
  Author: Christian Arevalo
  Project: Home Security System GUI
  Date: 01/09/19
*/

//Information Page
//info is to be gathered from a external file.


int showInfo()
{
  String firstLine = "1. When in Leave Home Mode all the sensors of the house are secured.";
  String secondLine = "A timer of 30 seconds will be started, enough for you to leave the house.";
  String thirdLine = "Otherwise the alarm will go off and the security pin will be asked.";
  int infoStateSelector = 7, infoBackLink = 1;
  //boolean variable for 
  boolean infoBackButtonPressed = false;
  
  Button inInfoButton;
  inInfoButton = new Button(200,800,400,200,#1405A2, "BACK",infoBackLink);
  PFont infoFont = createFont("Javanese Text",70);
  //String [] infoText = loadStrings("infoTextFile.txt");
  fill(0);
  rect(0,0,1600,1200);
  
  inInfoButton.display();
  
  infoBackButtonPressed = mousePressed;
  
  textFont(infoFont);
  textSize(30);
  fill(255);
  float x = 70;
  
  text(firstLine,700,300);
  text(secondLine,740,330);
  text(thirdLine,700,360);
    
  if((infoBackButtonPressed == true)&&(inInfoButton.isMouseOver() == true))
  {
    infoStateSelector = infoBackLink;
    delay(500);
  }
  else
    infoStateSelector = 7;
  
  return infoStateSelector;
}
