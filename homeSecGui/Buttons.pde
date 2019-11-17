class Button      //Button Class lets create more buttons with specific characteristics.
{
  int x,y,wide,high,link;
  color myColor,myDarkColor;
  String buttonText;
  boolean isButtonPressed = false;
  
  //Button Constructor that receives many values for its construction.
  //Button(x-coor,y-coor,buttonWidth,buttonHeight,color,buttonName, buttonLink);
  //buttonLink is returned to Draw funtion.
  Button(int xpos, int ypos, int w, int h, color c,String s, int l)
  {
    x = xpos;
    y = ypos;
    wide = w;
    high = h;
    myColor = c;
    buttonText = s;
    link = l;
    myDarkColor = lerpColor(0,myColor,0.6);
  }
      
  void display()        //Display Button Function
  {
    if(isButtonPressed == true)      //if condition to create effect of touch.
    {
      fill(myDarkColor);
      rect(x,y,wide,high);
      fill(255);
      textSize(30);
      textAlign(CENTER,CENTER);
      text(buttonText,x,y,wide,high);
    }
    else
    {
      fill(myColor);
      rect(x,y,wide,high);
      fill(255);
      textSize(30);
      textAlign(CENTER,CENTER);
      text(buttonText,x,y,wide,high);      
    }
    
  }
  boolean isMouseOver()    //Boolean function to check if the mouse is over the limits of a button.
  {  //if mouse pointer is between the confines x and y, of the button then it returns true, otherwise false.
    if(mouseX > x && mouseX <(x + wide) && mouseY > y && mouseY < (y + high))
    {
      return true;
    }
    else
    return false;
  }
  
}
