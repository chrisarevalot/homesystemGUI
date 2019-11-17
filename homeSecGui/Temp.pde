int temperature()
{
  fill(0);
  rect(0,0,width,height);
  
  int tempStateSelector = 0,backMainLink = 0;
  float tempButtonX = width *.125 , tempDisplayWidth = width* .35;
  float tempButtonY = height * .35, tempDisplayHeight = height * .35, backButtonH = height * .1, backButtonW = width * .175;
  float backButtonY = height * .8, backButtonX = width * .125;
  
  Button [] inTempButtons = new Button[3];
  inTempButtons[0] = new Button((int)tempButtonX, (int)tempButtonY,(int)tempDisplayWidth,(int)tempDisplayHeight,#1405A2, "",2);
  inTempButtons[1] = new Button((int)backButtonX,(int)backButtonY,(int)backButtonW,(int)backButtonH,#1405A2, "BACK",backMainLink);
  inTempButtons[2] = new Button((int)tempButtonX + 1180,(int)tempButtonY, (int)tempDisplayWidth, (int)tempDisplayHeight, #1405A2, "Outside Temperature",2 );
  
  showTitle();
  showDate();
  showCurrentTime();
  
  //for loop to display all the buttons. 
  for(Button currentTempButton : inTempButtons)
  {
    currentTempButton.display();
  }
  
  buttonPressed = mousePressed;
  
  if((buttonPressed == true)&&(inTempButtons[1].isMouseOver() == true))
  {
    tempStateSelector = backMainLink;
    delay(300);
  }
  else
    tempStateSelector = 2;
  
  println("Temperature Page");
  return tempStateSelector;
}
