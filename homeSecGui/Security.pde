
//Security Page 
int security()
{
  //Background layout, black color.
  fill(0);
  rect(0, 0, width, height);

  //Return link variables
  int secStateSelector = 0, armLink = 6, preferencesLink = 0, infoLink = 7, leaveArmLink = 6;
  //boolean value for checking if mouse is pressed.

  // stayButtonX = 375          stayButtonWidth = 1050
  float stayButtonX = width * .125, stayButtonWidth = width * .35;
  //  stayButtonY = 700           stayButtonHeight = 700
  float stayButtonY = height * .35, stayButtonHeight = height * .35;
  //  leaveButtonX = 1560         backButtonY = 1600
  float leaveButtonX = width * .52, backButtonY = height * .8;
  //backButtonWidth = 525           backButtonHeight = 200
  float backButtonWidth = width * .175, backButtonHeight = height * .1;
  //infoButtonX = 2070
  float infoButtonX = width * .69;



  //Button array declaration.
  Button [] inSecButtons = new Button[4];

  //Button array elements declaratioins passing specifications to buttons.
  inSecButtons[0] = new Button((int)stayButtonX, (int)stayButtonY, (int)stayButtonWidth, (int)stayButtonHeight, #1405A2, "STAY HOME", armLink);
  inSecButtons[1] = new Button((int)stayButtonX, (int)backButtonY, (int)backButtonWidth, (int)backButtonHeight, #1405A2, "BACK", preferencesLink);
  inSecButtons[2] = new Button((int)infoButtonX, (int)backButtonY, (int)backButtonWidth, (int)backButtonHeight, #1405A2, "INFO", preferencesLink);
  inSecButtons[3] = new Button((int)leaveButtonX, (int)stayButtonY, (int)stayButtonWidth, (int)stayButtonHeight, #1405A2, "LEAVE HOME", leaveArmLink);

  showTitle();
  showDate();
  showCurrentTime();

  //Display buttons on for loop
  for (Button currentSecButton : inSecButtons)
  {
    currentSecButton.display();
  }

  //boolean variable true if mouse is pressed
  buttonPressed = mousePressed;

  //if conditions to determine which button is pressed.
  if ((buttonPressed == true)&&(inSecButtons[0].isMouseOver() == true))
  {
    secStateSelector = armLink;
    delay(300);
  } else if ((buttonPressed == true)&&(inSecButtons[1].isMouseOver() == true))
  {
    secStateSelector = preferencesLink;
    delay(300);
  } else if ((buttonPressed == true)&&(inSecButtons[2].isMouseOver() == true))
  {
    secStateSelector = infoLink;
    delay(300);
  } else if ((buttonPressed == true)&&(inSecButtons[3].isMouseOver() == true))
  {
    secStateSelector = leaveArmLink;
    delay(300);
  } else
    secStateSelector = 1;

  println("Security Menu Page Return", secStateSelector);

  return secStateSelector;
}


//Function when system is armed.
int armed()
{
  //Background setup to width and height of the screen.
  fill(0);
  rect(0, 0, width, height);

  int armStateSelector = 6, disarmLink = 5, backSecurityLink = 1;

  //diarmButtonX = 375            disarmButtonY = 700           disarmWidth = 2235          disarmHeight = 700
  float disarmButtonX = width * .125, disarmButtonY = height * .35, disarmWidth = width * .745, disarmHeight = height * .35;
  //backButtonY = 1600         backButtonWidth = 525           backButtonHeight = 200
  float backButtonY = height * .8, backButtonWidth = width * .175, backButtonHeight = height * .1;

  //Button array declaration
  Button [] inArmButtons = new Button[2];

  inArmButtons[0] = new Button((int)disarmButtonX, (int)disarmButtonY, (int)disarmWidth, (int)disarmHeight, #830707, "DISARM", disarmLink);
  inArmButtons[1] = new Button((int)disarmButtonX, (int)backButtonY, (int)backButtonWidth, (int)backButtonHeight, #1405A2, "BACK", backSecurityLink);

  //Functions to print titles, date and time.
  showTitle();
  showDate();
  showCurrentTime();

  //For Loop to display the buttons.
  for (Button currentArmButton : inArmButtons)
  {
    currentArmButton.display();
  }

  //Boolean variable only true when mouse is pressed.
  buttonPressed = mousePressed;

  //If conditions to determine which button is pressed
  if ((buttonPressed == true)&&(inArmButtons[0].isMouseOver() == true))
  {
    armStateSelector = disarmLink;
    delay(500);
  } else if ((buttonPressed == true)&&(inArmButtons[1].isMouseOver() == true))
  {
    armStateSelector = backSecurityLink;
    delay(500);
  } else
    armStateSelector = 6;


  println("Arm Page Return", armStateSelector);
  return armStateSelector;
}



//Disarm Function 
//All buttons calculations are based on screen of 3000 by 2000

int disarm()
{
  fill(0);
  rect(0, 0, width, height);
  
  showTitle();
  showDate();
  showCurrentTime();

  int disarmStateSelector = 0, inDisarm = 5;

  int keyLink1 = 1, keyLink2 = 2, keyLink3 = 3, keyLink4 = 4, keyLink5 = 5, keyLink6 = 6;
  int keyLink7 = 7, keyLink8 = 8, keyLink9 = 9, keyLinkClear = 0, keyLink0 = 0, armBackLink = 6;
  int backKeySecurity = 1;
      //oneButtonX = 1050. Only oneButtonX and oneButtonY need to be changed for the whole keypad to move.
  float oneButtonX = width * .5;
      //oneButtonY = 700
  float oneButtonY = height * .34;
      //numButtonWidth = 270
  float numButtonWidth = width * .09, backButtonX = width * .175, backButtonY = height * .8, backButtonWidth = width * .175;
  float backButtonHeight = height * .1;

  
  //Button array declared
  Button [] keyButtons = new Button[13];
  keyButtons[0] = new Button((int)oneButtonX, (int)oneButtonY, (int)numButtonWidth, (int)numButtonWidth, #1405A2, "1", keyLink1);
  keyButtons[1] = new Button((int)oneButtonX + 285, (int)oneButtonY, (int)numButtonWidth, (int)numButtonWidth, #1405A2, "2", keyLink2);
  keyButtons[2] = new Button((int)oneButtonX + 570, (int)oneButtonY, (int)numButtonWidth, (int)numButtonWidth, #1405A2, "3", keyLink3);
  keyButtons[3] = new Button((int)oneButtonX, (int)oneButtonY + 286, (int)numButtonWidth, (int)numButtonWidth, #1405A2, "4", keyLink4);
  keyButtons[4] = new Button((int)oneButtonX + 285, (int)oneButtonY + 286, (int)numButtonWidth, (int)numButtonWidth, #1405A2, "5", keyLink5);
  keyButtons[5] = new Button((int)oneButtonX + 570, (int)oneButtonY + 286, (int)numButtonWidth, (int)numButtonWidth, #1405A2, "6", keyLink6);
  keyButtons[6] = new Button((int)oneButtonX, (int)oneButtonY + 572, (int)numButtonWidth, (int)numButtonWidth, #1405A2, "7", keyLink7);
  keyButtons[7] = new Button((int)oneButtonX + 285, (int)oneButtonY + 572, (int)numButtonWidth, (int)numButtonWidth, #1405A2, "8", keyLink8);
  keyButtons[8] = new Button((int)oneButtonX + 570, (int)oneButtonY + 572, (int)numButtonWidth, (int)numButtonWidth, #1405A2, "9", keyLink9);
  keyButtons[9] = new Button((int)oneButtonX, (int)oneButtonY + 857, (int)numButtonWidth, (int)numButtonWidth, #1405A2, "CLEAR", keyLinkClear);
  keyButtons[10] = new Button((int)oneButtonX + 285, (int)oneButtonY + 857, (int)numButtonWidth, (int)numButtonWidth, #1405A2, "0", keyLink0);
  keyButtons[11] = new Button((int)oneButtonX + 570, (int)oneButtonY + 857, (int)numButtonWidth, (int)numButtonWidth, #1405A2, "ENTER", 0);
  keyButtons[12] = new Button((int)backButtonX, (int)backButtonY, (int)backButtonWidth, (int)backButtonHeight, #1405A2, "BACK", armBackLink);

  //For Loop to display all the buttons
  for (Button currentDisButton : keyButtons)
  {
    currentDisButton.display();
  }

  //boolean variable only true if moused is pressed
  buttonPressed = mousePressed;

  //if conditions to decide which button is being pressed inside the key pad, all they keys will make the funtion loop back to itself. 
  if((buttonPressed == true)&&(keyButtons[0].isMouseOver() == true))
  {
    disarmStateSelector = inDisarm;
    //String to collect the numbers input and check if its correct.
    inputPass = inputPass + keyLink1;    //Add to string what 
    delay(250);
  } 
  else if((buttonPressed == true)&&(keyButtons[1].isMouseOver() == true))
  {
    disarmStateSelector = inDisarm;
    inputPass = inputPass + keyLink2;
    delay(250);
  } 
  else if((buttonPressed == true)&&(keyButtons[2].isMouseOver() == true))
  {
    disarmStateSelector = inDisarm;
    inputPass = inputPass + keyLink3;
    delay(250);
  } 
  else if((buttonPressed == true)&&(keyButtons[3].isMouseOver() == true))
  {
    disarmStateSelector = inDisarm;
    inputPass = inputPass + keyLink4;
    delay(250);
  } 
  else if ((buttonPressed == true)&&(keyButtons[4].isMouseOver() == true))
  {
    disarmStateSelector = inDisarm;
    inputPass = inputPass + keyLink5;
    delay(250);
  } 
  else if ((buttonPressed == true)&&(keyButtons[5].isMouseOver() == true))
  {
    disarmStateSelector = inDisarm;
    inputPass = inputPass + keyLink6;
    delay(250);
  } 
  else if ((buttonPressed == true)&&(keyButtons[6].isMouseOver() == true))
  {
    disarmStateSelector = inDisarm;
    inputPass = inputPass + keyLink7;
    delay(250);
  } 
  else if ((buttonPressed == true)&&(keyButtons[7].isMouseOver() == true))
  {
    disarmStateSelector = inDisarm;
    inputPass = inputPass + keyLink8;
    delay(250);
  } 
  else if ((buttonPressed == true)&&(keyButtons[8].isMouseOver() == true))
  {
    disarmStateSelector = inDisarm;
    inputPass = inputPass + keyLink9;
    delay(250);
  } 
  else if ((buttonPressed == true)&&(keyButtons[9].isMouseOver() == true))
  {
    disarmStateSelector = inDisarm;
    inputPass = "";
    delay(250);
  } 
  else if ((buttonPressed == true)&&(keyButtons[10].isMouseOver() == true))
  {
    disarmStateSelector = inDisarm;
    inputPass = inputPass + keyLink0;
    delay(250);
  }


  //if condition to check if back button is being pressed, it will make the function return to arm.
  if((buttonPressed == true)&&(keyButtons[12].isMouseOver() == true))
  {
    disarmStateSelector = armBackLink;
    delay(250);
  } 
  else
    disarmStateSelector = inDisarm;


  //If condition to check if the Enter button is being pressed. and call another function to check 
  //if passcode is correct.
  if ((buttonPressed == true)&&(keyButtons[11].isMouseOver() == true))
  {
    //boolean variable receiving a value from the check passcode function. 
    passwordCorrect = passCheck(inputPass);
    
    //if passcode is correct the function will return to Security Menu. 
    if (passwordCorrect)
    {
      disarmStateSelector = backKeySecurity;
    } 
    else
      disarmStateSelector = inDisarm;

    delay(250);
  }

  println("Disarm Page Return", disarmStateSelector);
  println("Password: ", passwordCorrect);
  println("String Password: ", inputPass);


  return disarmStateSelector;
}



//Boolean function to check if passcode matches the preset passcode.
//boolean function that receives the string to be compared.
boolean passCheck(String passStIn)
{
  //if condition to check if one string equals another string.
  if (passStIn.equals(correctPass))
  {
    //if passcode is correct then clear the passcode variable.
    inputPass = "";
    return true;
  } 
  else
  {
    //if passcode is incorrect then clear the passcode variable.
    inputPass = "";
    return false;
  }
}
