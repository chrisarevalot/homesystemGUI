int settingz()
{
  fill(0);
  rect(0,0,1600,1200);
  int satButtonCounter,setStateSelector = 0;
  boolean setButtonPressed = false;
  println("Settings Page");
  Button [] inSetButtons = new Button[2];
  inSetButtons[0] = new Button(200,200,500,200,#1405A2, "SETTINGS",5);
  inSetButtons[1] = new Button(200,450,500,200,#1405A2, "PREFERENCES",6); 
  
  for(Button currentSetButton : inSetButtons)
  {
    currentSetButton.display();
  }
  println("Settings Page");
  return 2;
}
