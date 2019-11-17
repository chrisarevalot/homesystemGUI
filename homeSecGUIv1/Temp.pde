int temperature()
{
  fill(0);
  rect(0,0,1600,1200);
  int tempButtonCounter,tempStateSelector = 0;
  boolean tempButtonPressed = false;
  
  Button [] inTempButtons = new Button[2];
  inTempButtons[0] = new Button(200,200,500,200,#1405A2, "TEMPERATURE",5);
  inTempButtons[1] = new Button(200,450,500,200,#1405A2, "PREFERENCES",6); 
  
  for(Button currentTempButton : inTempButtons)
  {
    currentTempButton.display();
  }
  println("Temperature Page");
  return 3;
}
