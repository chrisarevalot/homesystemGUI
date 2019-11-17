/* 
  Author: Christian Arevalo
  Project: Home Security System GUI
  Date: 01/09/19
*/

int weather()
{
  fill(0);
  rect(0,0,width,height);
  
  int backMainLink = 0, weatherStateSelector = 3;
  float weatherBackButtonX = width * .125, weatherBackButtonY = height * .8;
  float weatherBackButtonW = width* .175, weatherBackButtonH = height * .1;
  
  
  showTitle();
  showDate();
  showCurrentTime();
  
  Button [] weatherBackButtons = new Button[1];
  
  weatherBackButtons[0] = new Button((int)weatherBackButtonX,(int)weatherBackButtonY,(int)weatherBackButtonW,(int)weatherBackButtonH,#1405A2, "BACK",backMainLink);
  
  for(Button currentWeatherTempButton : weatherBackButtons)
  {
    currentWeatherTempButton.display();
  }
  
  buttonPressed= mousePressed;
  
  if((buttonPressed == true)&&(weatherBackButtons[0].isMouseOver() == true))
  {
    weatherStateSelector = backMainLink;
    delay(300);
  }
  else
    weatherStateSelector = 3;
  
  
  println("Weather Page");
  return weatherStateSelector;
}
