int menu()
{
  println("Main Menu Page");
  fill(0);
  rect(0,0,1600,1200);
  int buttonCounter, menulink = 0;
  Button [] buttons = new Button[9];
  int securityLink = 1, temperatureLink = 2, weatherLink = 3, settingLink = 4;
  int stateSelector = 0, counter = 0;
  int buttonOneX = 190,buttonTwoX = 600, buttonThreeX = 1010;
  int buttonOneY = 300, buttonTwoY = 485, buttonThreeY = 670;
  String buttonOneText = "SECURITY", buttonTwoText = "TEMPERATURE", buttonThreeText = "WEATHER";
  String buttonFourText = "SETTINGS";
  int buttonWidth = 400;
  int buttonHeight = 175;
  color buttonColor = #1405A2;
  boolean buttonPressed = false;

  buttons[0] = new Button(buttonOneX,buttonOneY,buttonWidth,buttonHeight,buttonColor, buttonOneText,securityLink);
  buttons[1] = new Button(buttonTwoX,buttonOneY,buttonWidth,buttonHeight,buttonColor, buttonTwoText,temperatureLink);
  buttons[2] = new Button(buttonThreeX,buttonOneY,buttonWidth,buttonHeight,buttonColor, buttonThreeText,weatherLink);
  buttons[3] = new Button(buttonThreeX,buttonThreeY,buttonWidth,buttonHeight,buttonColor, buttonFourText,settingLink);
  buttons[4] = new Button(buttonOneX,buttonTwoY,buttonWidth,buttonHeight,buttonColor, "SECURITY CAMERA",settingLink);
  buttons[5] = new Button(buttonTwoX,buttonTwoY,buttonWidth,buttonHeight,buttonColor, "LIGHTING",settingLink);
  buttons[6] = new Button(buttonThreeX,buttonTwoY,buttonWidth,buttonHeight,buttonColor,"APPLIANCES",settingLink);
  buttons[7] = new Button(buttonOneX,buttonThreeY,buttonWidth,buttonHeight,buttonColor, "OPTION 1",settingLink);
  buttons[8] = new Button(buttonTwoX,buttonThreeY,buttonWidth,buttonHeight,buttonColor, "OPTION 2",settingLink);
  
  showCurrentTime();
   
  for(Button currentButton : buttons)
  {
    currentButton.display();
  }
  buttonPressed = mousePressed;
  
  if((buttonPressed == true)&&(buttons[0].isMouseOver() == true))
  {
    stateSelector = securityLink;
    delay(500);
  }
  else if((buttonPressed == true)&&(buttons[1].isMouseOver() == true))
  {
    stateSelector = temperatureLink;
    delay(500);
  }
  else if((buttonPressed == true)&&(buttons[2].isMouseOver() == true))
  {
    stateSelector = weatherLink;
    delay(500);
  }
  else if((buttonPressed == true)&&(buttons[3].isMouseOver() == true))
  {
    stateSelector = settingLink;
    delay(500);
  }
  else
    stateSelector = 0;
    
  buttonPressed = false;
  println("Main Menu Return",stateSelector);
  return stateSelector;
}
