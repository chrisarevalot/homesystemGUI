int menuChoose, password, secureX = 1600, secureY = 1200, correctPassword = 20;
int currentHour,currentMinute, currentSecond, currentDay, currentMonth, currentYear;
boolean buttonPressed = false, passwordCorrect;
void setup()
{
  //fullScreen();
  size(1600,1200);
  background(0);
  menuChoose = 0;
  password = 0;
  passwordCorrect = false;
  
}
void draw()
{
  
  switch(menuChoose)
  {
    case 0:
    menuChoose = menu();
    break;
    case 1:
    menuChoose = security();
    break;
    case 2:
    menuChoose = temperature();
    break;
    case 3:
    menuChoose = weather();
    break;
    case 4:
    menuChoose = settingz();
    break;
    case 5:
    menuChoose = disarm();
    break;
    case 6:
    menuChoose = arm();
    break;
  }
  println("Hour: ", currentHour);
  println("Minute: ", currentMinute);
  println("Second: ", currentSecond);
}
void mousePressed()
{
  
}

void showCurrentTime()
{
  currentHour = hour();
  currentMinute = minute();
  currentSecond = second();
  currentYear = year();
  currentMonth = month();
  currentDay = day();
  
  textSize(70);
  fill(255);
  text(currentHour, 250, 200);
  textSize(70);
  fill(255);
  text(":", 280, 200);
  textSize(70);
  fill(255);
  text(currentMinute, 330, 200);
  
  if(currentHour < 12)
  {
    textSize(70);
    fill(255);
    text("AM", 435, 200);
  }
  else
  {
    textSize(70);
    fill(255);
    text("PM", 435, 200);
  }
  
  textSize(70);
  fill(255);
  text(currentMonth, 550, 200);
  textSize(70);
  fill(255);
  text("/", 585, 200);
  textSize(70);
  fill(255);
  text(currentDay, 640, 200);
  textSize(70);
  fill(255);
  text("/", 700, 200);
  textSize(70);
  fill(255);
  text(currentYear,800, 200);
  
  /*textSize(70);
  fill(255);
  text(currentSecond, 425, 200);*/
 
}
