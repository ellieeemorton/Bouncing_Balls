// Example: Two Car objects
Ball ball1; 
Ball ball2;
Ball ball3;
Ball ball4;


int a = 0;
int b = 0;

void setup() 
{
  size(500,500);
  // Parameters go inside the parentheses when the object is constructed.
  ball1 = new Ball(color(40,194,234), 100, 100, 5, 0);
  ball2 = new Ball(color(233,17,245), 100, 200, 0, 5); 
  ball3 = new Ball(color(255,0,0), 0, 0, 2, 2); 
  ball4 = new Ball(color(236,245,17), a, b, 5, 5); 
}
 
void draw() 
{
  background(000000);
  ball1.display();
  ball2.display();
  ball3.display();
  ball4.display();

}

void mousePressed() {
  ball4.jumpToMouse();
}
 
// Even though there are multiple objects, we still only need one class. 
// No matter how many cookies we make, only one cookie cutter is needed.
class Ball { 
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  float tempxspeed;
  float tempyspeed;

 
  // The Constructor is defined with arguments.
  Ball(color tempC, float tempxpos, float tempypos, float tempxspeed, float tempyspeed) { 
    c = tempC;
    xpos = tempxpos;
    ypos = tempypos;
    xspeed = tempxspeed;
    yspeed = tempyspeed;
  }
 
  void display() 
  {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    ellipse(xpos,ypos,20,20);
    
    if (ypos > 500|| ypos < 0)
    {
      yspeed = yspeed * -1;
    }
    ypos = ypos + yspeed;
    
    if (xpos > 500 || xpos < 0)
    {
      xspeed = xspeed * -1;
    }
    xpos = xpos + xspeed;
   
  }
  
  
  void jumpToMouse() 
  {
    xpos = mouseX;
    ypos = mouseY;
   
  } 
}
    
    
    

