Balls[] boll = new Balls[100];
void setup()
{
  size(500,500);
  frameRate(100);
  for(int i = 0; i <= 99; i++)
  {
    boll[i] = new Balls();
  }
}

void draw()
{
  background(0);
  for(int i = 0; i <= 99; i++)
  {
    boll[i].move();
    boll[i].show();
  }
}

class Balls
{
  int x;
  int y;
  color ballColor;
  
  Balls()
  {
    x = 250;
    y = 250;
    ballColor = color(((int)(Math.random()*255)),((int)(Math.random()*255)),((int)(Math.random()*255)));
  }
  void move()
  {
    x += ((int)(Math.random()*5)-2);
    y += ((int)(Math.random()*5)-2);
    if(keyCode == 39)
    {
      x++;
    }
    if(keyCode == 37)
    {
      x--;
    }
    if(keyCode == 38)
    {
      y--;
    }
    if(keyCode == 40)
    {
      y++;
    }
    
    if(x < 0)
    {
      x = 500;
    }
    else if (x > 500)
    {
      x = 0;
    }
    if(y < 0)
    {
      y = 500;
    }
    else if (y > 500)
    {
      y = 0;
    }
  }
  void show()
  {
    fill(ballColor);
    noStroke();
    ellipse(x,y,50,50);
  }
}
