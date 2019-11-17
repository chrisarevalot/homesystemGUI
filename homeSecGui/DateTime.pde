/* 
  Author: Christian Arevalo
  Project: Home Security System GUI
  Date: 01/08/19
*/


//fullscreen calculations are based on screen width = 3000, height = 2000.

void showCurrentTime()    //Function to print current time to screen.
{
      
      //hDateX = 405, hDateY = 560, fontSize = 100
  float hDateX = width * .135, hDateY = height * .28, fontSize = height * .050;
  
  currentHour = hour();        //int saving the time from different functions.
  currentMinute = minute();
  currentSecond = second();
  
  //PFont hourDateFont = createFont("Bahnschrift",70);
  //PFont hourDateFont = createFont("Candara",70);
  //PFont hourDateFont = createFont("DialogInput.plain",70);
  PFont hourDateFont = createFont("Javanese Text",70);      //Font used to print the date.
  //PFont hourDateFont = createFont("Lucida Console",70);
  //PFont hourDateFont = createFont("Myanmar Text",70);
  
  //Print to screen Hour
  textFont(hourDateFont);
  textSize(fontSize);
  fill(255);    //Fill the letters with white color.
  text(currentHour, (int)hDateX + 10, (int)hDateY);    //Prints string to screen. text(string,x-coor,y-coor).
  
  textFont(hourDateFont);
  textSize(fontSize);
  fill(255);
  text(":", (int)(hDateX + 70),(int)hDateY);    //475,560
  
  textFont(hourDateFont);
  textSize(fontSize);
  fill(255);
  text(currentMinute, (int)(hDateX + 140), (int)hDateY);    //545,560
  
  if(currentHour < 12)    //If condition to print AM or PM 
  {
    textFont(hourDateFont);
    textSize(fontSize - 10);    //90
    fill(255);                  //White
    text("AM", (int)(hDateX + 260), (int)hDateY + 10);    //665,570
  }
  else
  {
    textFont(hourDateFont);
    textSize(fontSize -10);    //90
    fill(255);                 //White
    text("PM", (int)(hDateX + 260), (int)hDateY + 10);      //665,570
  }
}

//Prints Title to screen 
void showTitle()
{
     // titleTextSize = 180
  float titleTextSize = height * .09;
  PFont titleFont = createFont("Javanese Text",70);
  String title = "| SSS |";
  
  fill(255);
  textFont(titleFont);
  textSize(titleTextSize);
  fill(255);
  text(title,width * .5, height * .1);    //1500,200
}

void showDate()    //Prints Date to Screen 
{
      //dateY = 560, dateX = 2310
  float dateY = height * .28,  dateX = width * .77; 
  float fontSize = height * .050;    // fontSize = 
  currentYear = year();
  currentMonth = month();
  currentDay = day();
  PFont dateFont = createFont("Javanese Text",70);
 
  textFont(dateFont);
  textSize(fontSize);
  fill(255);
  text(currentMonth, (int)dateX - 80, (int)dateY);    //2230,560
  
  textFont(dateFont);
  textSize(fontSize);
  fill(255);
  text("/", (int)(dateX) - 40, (int)dateY);      //2275,560
  
  textFont(dateFont);
  textSize(fontSize);
  fill(255);
  text(currentDay, (int)(dateX + 20), (int)dateY);    //2330,560

  textFont(dateFont);
  textSize(fontSize);
  fill(255);
  text("/", (int)(dateX + 80), (int)dateY);      //2390,560
  
  textFont(dateFont);
  textSize(fontSize);
  fill(255);
  text(currentYear,(int)(dateX + 200), (int)dateY);      //2510,560
}
