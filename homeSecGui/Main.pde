
//Calculations are made on a screen based on 3000,2000

int menu()
{
  
  //Start of page rendering 
  fill(0);      //Black color
  rect(0,0,width,height);    //Rectangle with width and height depending on LCD screen
  
  Button [] buttons = new Button[9];                              // Construct an array of buttons. 
  int securityLink = 1, temperatureLink = 2, weatherLink = 3, settingLink = 4;      //Buttons links to other functions
  int stateSelector = 0;                                          //State Selector to decide to which menu to go back. 

  //Variables declaration for calculating the buttons specifications. 
  color buttonColor = #1405A2;    //Blue Button Color
  float securityButtonX = width * .125, securityButtonY = height * .35;    //  375,700
  float buttonWidth = width * .245, buttonHeight = height * .125;          //  button width = 735, button height = 250
  float tempButtonX = width * .375, tempButtonY = height * .35;            //  1125,700
  float weatherButtonX = width * .625, camButtonY = height * .4825;        //  1875,965
  float optionButtonY = height * .615;    //1230

  //Buttons declarations, the parameters allow the buttons to reconfigure with different sizes of screens
  buttons[0] = new Button((int)securityButtonX,(int)securityButtonY,(int)buttonWidth,(int)buttonHeight,buttonColor, "SECURITY",securityLink);
  buttons[1] = new Button((int)tempButtonX,(int)tempButtonY,(int)buttonWidth,(int)buttonHeight,buttonColor, "TEMPERATURE",temperatureLink);
  buttons[2] = new Button((int)weatherButtonX,(int)tempButtonY,(int)buttonWidth,(int)buttonHeight,buttonColor, "WEATHER",weatherLink);
  buttons[3] = new Button((int)weatherButtonX,(int)optionButtonY,(int)buttonWidth,(int)buttonHeight,buttonColor, "SETTINGS",settingLink);
  buttons[4] = new Button((int)securityButtonX,(int)camButtonY,(int)buttonWidth,(int)buttonHeight,buttonColor, "SECURITY CAMERA",settingLink);
  buttons[5] = new Button((int)tempButtonX,(int)camButtonY,(int)buttonWidth,(int)buttonHeight,buttonColor, "LIGHTING",settingLink);
  buttons[6] = new Button((int)weatherButtonX,(int)camButtonY,(int)buttonWidth,(int)buttonHeight,buttonColor,"APPLIANCES",settingLink);
  buttons[7] = new Button((int)securityButtonX,(int)optionButtonY,(int)buttonWidth,(int)buttonHeight,buttonColor, "OPTION 1",settingLink);
  buttons[8] = new Button((int)tempButtonX,(int)optionButtonY,(int)buttonWidth,(int)buttonHeight,buttonColor, "OPTION 2",settingLink);
  
  //Functions print to screen titles, date and time.  
  showTitle();
  showDate();
  showCurrentTime();
  
  //boolean variable gets value from mouse pressed function.
  buttonPressed = mousePressed;
  
  //for loop to display the buttons in array.
  for(Button currentButton : buttons)
  {
    currentButton.display();
  }
  
  //if conditions to know which button is being pressed.
  //
  if((buttonPressed == true)&&(buttons[0].isMouseOver() == true))
  {
    stateSelector = securityLink;
    delay(300);
  }
  else if((buttonPressed == true)&&(buttons[1].isMouseOver() == true))
  {
    stateSelector = temperatureLink;
    delay(300);
  }
  else if((buttonPressed == true)&&(buttons[2].isMouseOver() == true))
  {
    stateSelector = weatherLink;
    delay(300);
  }
  else if((buttonPressed == true)&&(buttons[3].isMouseOver() == true))
  {
    stateSelector = settingLink;
    delay(300);
  }
  else
    stateSelector = 0;
    
  println("Main Menu Return",stateSelector);
  return stateSelector;
}
