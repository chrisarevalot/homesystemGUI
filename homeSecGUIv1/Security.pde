int security()
{
  fill(0);
  rect(0,0,1600,1200);
  int secButtonCounter,secStateSelector = 0,armLink = 6, preferencesLink = 0;
  boolean secButtonPressed = false;
  println("Security Page");
  Button [] inSecButtons = new Button[3];
  inSecButtons[0] = new Button(200,300,1200,300,#1405A2, "ARM SYSTEM",armLink);
  inSecButtons[1] = new Button(200,800,400,200,#1405A2, "BACK",preferencesLink);
  inSecButtons[2] = new Button(1000,800,400,200,#1405A2, "INFO",preferencesLink);
  
  showCurrentTime();
  
  for(Button currentSecButton : inSecButtons)
  {
    currentSecButton.display();
  }
  
  secButtonPressed = mousePressed;
  
  if((secButtonPressed == true)&&(inSecButtons[0].isMouseOver() == true))
  {
    secStateSelector = armLink;
    delay(400);
  }
  else if((secButtonPressed == true)&&(inSecButtons[1].isMouseOver() == true))
  {
    secStateSelector = preferencesLink;
    delay(500);
  }
  else
    secStateSelector = 1;
  
  secButtonPressed = false;
  println("Security Return",secStateSelector);
  return secStateSelector;
}

int arm()
{
  fill(0);
  rect(0,0,1600,1200);
  int armStateSelector = 6, disarmLink = 5, backSecurityLink = 1;
  boolean armButtonPressed = false;
  println("Security Arm Page");
  
  Button [] inArmButtons = new Button[2];
  inArmButtons[0] = new Button(200,300,1200,300,#830707, "DISARM",disarmLink);
  inArmButtons[1] = new Button(200,800,400,200,#1405A2, "BACK",backSecurityLink); 
  
  showCurrentTime();

  for(Button currentArmButton : inArmButtons)
  {
    currentArmButton.display();
  }
  
  armButtonPressed = mousePressed;
  
  if((armButtonPressed == true)&&(inArmButtons[0].isMouseOver() == true))
  {
    armStateSelector = disarmLink;
    delay(500);
  }
  else if((armButtonPressed == true)&&(inArmButtons[1].isMouseOver() == true))
  {
    armStateSelector = backSecurityLink;
    delay(500);
  }
  else
    armStateSelector = 6;
    
  println("Disarm Return",armStateSelector);
  return armStateSelector;
}

int disarm()
{
  int disarmStateSelector = 0, inDisarm = 5, checkPassword;
  
  fill(0);
  rect(0,0,1600,1200);
  
  int keyLink1 = 1, keyLink2 = 2, keyLink3 = 3, keyLink4 = 4, keyLink5 = 5, keyLink6 = 6;
  int keyLink7 = 7, keyLink8 = 8, keyLink9 = 9, keyLinkHash = 0, keyLink0 = 0, armBackLink = 6;
  int backKeySecurity = 1;
  
  boolean disButtonPressed = false;
 
  Button [] keyButtons = new Button[13];
  keyButtons[0] = new Button(550,250,150,150,#1405A2, "1", keyLink1);
  keyButtons[1] = new Button(710,250,150,150,#1405A2, "2", keyLink2);
  keyButtons[2] = new Button(870,250,150,150,#1405A2, "3", keyLink3);
  keyButtons[3] = new Button(550,410,150,150,#1405A2, "4", keyLink4);
  keyButtons[4] = new Button(710,410,150,150,#1405A2, "5", keyLink5);
  keyButtons[5] = new Button(870,410,150,150,#1405A2, "6", keyLink6);
  keyButtons[6] = new Button(550,570,150,150,#1405A2, "7", keyLink7);
  keyButtons[7] = new Button(710,570,150,150,#1405A2, "8", keyLink8);
  keyButtons[8] = new Button(870,570,150,150,#1405A2, "9", keyLink9);
  keyButtons[9] = new Button(550,730,150,150,#1405A2, "CLEAR", keyLinkHash);
  keyButtons[10] = new Button(710,730,150,150,#1405A2, "0", keyLink0);
  keyButtons[11] = new Button(870,730,150,150,#1405A2, "ENTER", 0);
  keyButtons[12] = new Button(150,950,400,150,#1405A2, "BACK", armBackLink);
  
  showCurrentTime();
  
  for(Button currentDisButton : keyButtons)
  {
    currentDisButton.display();
  }
  
  disButtonPressed = mousePressed;
  
  if((disButtonPressed == true)&&(keyButtons[0].isMouseOver() == true))
  {
    password = password + keyLink1;
    disarmStateSelector = 5;
    delay(250);
  }
  else if((disButtonPressed == true)&&(keyButtons[1].isMouseOver() == true))
  {
    password =password + keyLink2;
    disarmStateSelector = 5;
    delay(250);
  }
  else if((disButtonPressed == true)&&(keyButtons[2].isMouseOver() == true))
  {
    password = password + keyLink3;
    disarmStateSelector = 5;
    delay(250);
  }
  else if((disButtonPressed == true)&&(keyButtons[3].isMouseOver() == true))
  {
    password = password + keyLink4;
    disarmStateSelector = 5;
    delay(250);
  }
  else if((disButtonPressed == true)&&(keyButtons[4].isMouseOver() == true))
  {
    password = password + keyLink5;
    disarmStateSelector = 5;
    delay(250);
  }
  else if((disButtonPressed == true)&&(keyButtons[5].isMouseOver() == true))
  {
    password = password + keyLink6;
    disarmStateSelector = 5;
    delay(250);
  }
  else if((disButtonPressed == true)&&(keyButtons[6].isMouseOver() == true))
  {
    password = password + keyLink7;
    disarmStateSelector = 5;
    delay(250);
  }
  else if((disButtonPressed == true)&&(keyButtons[7].isMouseOver() == true))
  {
    password = password + keyLink8;
    disarmStateSelector = 5;
    delay(250);
  }
  else if((disButtonPressed == true)&&(keyButtons[8].isMouseOver() == true))
  {
    password = password + keyLink9;
    disarmStateSelector = 5;
    delay(250);
  }
  else if((disButtonPressed == true)&&(keyButtons[9].isMouseOver() == true))
  {
    password = 0;
    disarmStateSelector = 5;
    delay(250);
  }
  else if((disButtonPressed == true)&&(keyButtons[10].isMouseOver() == true))
  {
    password = password + keyLink0;
    disarmStateSelector = 5;
    delay(250);
  }
  
  if((disButtonPressed == true)&&(keyButtons[12].isMouseOver() == true))
  {
    disarmStateSelector = armBackLink;
    delay(250);
  }
  else
    disarmStateSelector = 5;
  
  if((disButtonPressed == true)&&(keyButtons[11].isMouseOver() == true))
  {
    checkPassword = password;
    passwordCorrect = passCheck(checkPassword);
    
    if(passwordCorrect)
    {
      disarmStateSelector = backKeySecurity;
    }
    else
      disarmStateSelector = 5;
    
    delay(250);
  }
  
  println("Disarm Return",disarmStateSelector);
  disButtonPressed = false;
  println("Password: ", password, passwordCorrect);
  return disarmStateSelector;
}

boolean passCheck(int passIn)
{
  if(passIn == correctPassword)
  return true;
  else
  return false;
}
