class Button
{
  int x,y,wide,high,link;
  color myColor,myDarkColor;
  String buttonText;
  boolean isButtonPressed = true;
  
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
  void display()
  {
    if(isButtonPressed == true)
    {
      fill(myColor);
      rect(x,y,wide,high);
      
      fill(255);
      textSize(25);
      textAlign(CENTER,CENTER);
      text(buttonText,x,y,wide,high);
    }
    else
    {
      fill(myDarkColor);
      rect(x,y,wide,high);
    }
  }
  boolean isMouseOver()
  {
    if(mouseX > x && mouseX <(x + wide) && mouseY > y && mouseY < (y + high))
    {
      return true;
    }
    else
    return false;
  }
  
}
